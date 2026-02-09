import { execFile, spawn } from 'node:child_process'
import vnu from 'vnu-jar'

        execFile('java', ['-version'], (error, stdout, stderr) => {
            if (error) {
                console.error('Skipping vnu-jar test; Java is probably missing.')
                console.error(error)
                return
            }

            console.log('Running vnu-jar validation...')

            const is32bitJava = !/64-Bit/.test(stderr)
            const ignores = [
                'Attribute “autocomplete” is only allowed when the input type is.*',
                'Attribute “autocomplete” not allowed on element “button” at this point.',
                'An “aria-disabled” attribute whose value is “true” should not be specified on an “a” element that has an “href” attribute.',
                'Attribute “is:raw” is not serializable as XML 1.0.',
                'Attribute “is:raw” not allowed on element “code” at this point.',
                'Trailing slash on void elements has no effect and interacts badly with unquoted attribute values.',
                'Attribute “switch” not allowed on element “input” at this point.'
            ].join('|')

            const args = [
                '-jar',
                `"${vnu}"`,
                '--asciiquotes',
                '--skip-non-html',
                '--Werror',
                `--filterpattern "${ignores}"`,
                '_site/',
                'js/tests/'
            ]

            // For the 32-bit Java we need to pass `-Xss512k`
            if (is32bitJava) {
                args.splice(0, 0, '-Xss512k')
            }

            console.log(`command used: java ${args.join(' ')}`)

            return spawn('java', args, {
                shell: true,
                stdio: 'inherit'
            })
                    .on('exit', process.exit)
        })
