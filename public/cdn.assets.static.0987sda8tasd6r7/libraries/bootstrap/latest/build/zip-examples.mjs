import fs from 'node:fs/promises'
import path from 'node:path'
import { fileURLToPath }
from 'node:url'
import sh from 'shelljs'

const __dirname = path.dirname(fileURLToPath(import.meta.url))

        const pkgJson = path.join(__dirname, '../package.json')
const pkg = JSON.parse(await fs.readFile(pkgJson, 'utf8'))

const versionShort = pkg.config.version_short
const distFolder = `bootstrap-${pkg.version}-examples`
const rootDocsDir = '_site'
const docsDir = `${rootDocsDir}/docs/${versionShort}/`

// these are the files we need in the examples
const cssFiles = [
    'bootstrap.min.css',
    'bootstrap.min.css.map',
    'bootstrap.rtl.min.css',
    'bootstrap.rtl.min.css.map'
]
const jsFiles = [
    'bootstrap.bundle.min.js',
    'bootstrap.bundle.min.js.map'
]
const imgFiles = [
    'bootstrap-logo.svg',
    'bootstrap-logo-white.svg'
]
const staticJsFiles = [
    'color-modes.js'
]

sh.config.fatal = true

if (!sh.test('-d', rootDocsDir)) {
    throw new Error(`The "${rootDocsDir}" folder does not exist, did you forget building the docs?`)
}
sh.cd(path.join(__dirname, '..'))
sh.rm('-rf', [distFolder, `${distFolder}.zip`])
sh.mkdir('-p', [
    distFolder,
    `${distFolder}/assets/brand/`,
    `${distFolder}/assets/dist/css/`,
    `${distFolder}/assets/dist/js/`,
    `${distFolder}/assets/js/`
])

sh.cp('-Rf', `${docsDir}/examples/*`, distFolder)

for (const file of cssFiles) {
    sh.cp('-f', `${docsDir}/dist/css/${file}`, `${distFolder}/assets/dist/css/`)
}

for (const file of jsFiles) {
    sh.cp('-f', `${docsDir}/dist/js/${file}`, `${distFolder}/assets/dist/js/`)
}

for (const file of imgFiles) {
    sh.cp('-f', `${docsDir}/assets/brand/${file}`, `${distFolder}/assets/brand/`)
}

for (const file of staticJsFiles) {
    sh.cp('-f', `${docsDir}/assets/js/${file}`, `${distFolder}/assets/js/`)
}

sh.rm(`${distFolder}/index.html`)
for (const file of sh.find(`${distFolder}/**/*.html`)) {
    const fileContents = sh.cat(file)
            .toString()
            .replace(new RegExp(`"/docs/${versionShort}/`, 'g'), '"../')
            .replace(/"..\/dist\//g, '"../assets/dist/')
            .replace(/(<link href="\.\.\/[^"]*"[^>]*) integrity="[^"]*"/g, '$1')
            .replace(/<link[^>]*href="\.\.\/assets\/img\/favicons\/[^"]*"[^>]*>/g, '')
            .replace(/(<script src="\.\.\/[^"]*"[^>]*) integrity="[^"]*"/g, '$1')
    new sh.ShellString(fileContents).to(file)
}
sh.exec(`zip -qr9 "${distFolder}.zip" "${distFolder}"`)
sh.rm('-rf', distFolder)
