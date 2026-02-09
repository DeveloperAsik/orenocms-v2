import path from 'node:path'
import { fileURLToPath } from 'node:url'
import { babel } from '@rollup/plugin-babel'
import { globby } from 'globby'
import { rollup } from 'rollup'
import banner from './banner.mjs'

const __filename = fileURLToPath(import.meta.url)
const __dirname = path.dirname(fileURLToPath(import.meta.url))

const sourcePath = path.resolve(__dirname, '../js/src/').replace(/\\/g, '/')
const jsFiles = await
globby(`${sourcePath}/**/*.js`)

const resolvedPlugins = []

const filenameToEntity = filename => filename.replace('.js', '')
            .replace(/(?:^|-|\/|\\)[a-z]/g, str => str.slice(-1).toUpperCase())

for (const file of jsFiles) {
    resolvedPlugins.push({
        src: file,
        dist: file.replace('src', 'dist'),
        fileName: path.basename(file),
        className: filenameToEntity(path.basename(file))
                // safeClassName: filenameToEntity(path.relative(sourcePath, file))
    })
}

const build = async plugin => {
    const globals = {}
    const bundle = await rollup({
        input: plugin.src,
        plugins: [
            babel({
                // Only transpile our source code
                exclude: 'node_modules/**',
                // Include the helpers in each file, at most one copy of each
                babelHelpers: 'bundled'
            })
        ],
        external(source) {
            const pattern = /^(\.{1,2})\//
            if (!pattern.test(source)) {
                globals[source] = source
                return true
            }
            const usedPlugin = resolvedPlugins.find(plugin => {
                return plugin.src.includes(source.replace(pattern, ''))
            })

            if (!usedPlugin) {
                throw new Error(`Source ${source} is not mapped!`)
            }
            globals[path.normalize(usedPlugin.src)] = usedPlugin.className
            return true
        }
    })

    await bundle.write({
        banner: banner(plugin.fileName),
        format: 'umd',
        name: plugin.className,
        sourcemap: true,
        globals,
        generatedCode: 'es2015',
        file: plugin.dist
    })

    console.log(`Built ${plugin.className}`)
}

(async () => {
    try {
        const basename = path.basename(__filename)
        const timeLabel = `[${basename}] finished`

        console.log('Building individual plugins...')
        console.time(timeLabel)

        await Promise.all(Object.values(resolvedPlugins).map(plugin => build(plugin)))

        console.timeEnd(timeLabel)
    } catch (error) {
        console.error(error)
        process.exit(1)
    }
})()
