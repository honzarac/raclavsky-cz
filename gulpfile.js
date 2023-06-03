const { src, dest, parallel } = require("gulp")
const postcss = require("gulp-postcss")
const concat = require("gulp-concat")
const importCss = require('gulp-import-css')
const cssUrls = require('gulp-css-urls')
const tailwindcss = require("tailwindcss")
const autoprefixer = require("autoprefixer")

function buildCss(cb) {
    src(`./style.css`)
        .pipe(importCss())
        .pipe(cssUrls((url) => url.replace('node_modules/@fortawesome/fontawesome-free', '')))
        .pipe(postcss([tailwindcss('./tailwind.config.js'), autoprefixer()]))
        .pipe(concat({ path: 'style.css' }))
        .pipe(dest('dist/assets'))
    cb()
}

function copyFonts(cb) {
    src('./node_modules/@fortawesome/fontawesome-free/webfonts/*.*')
        .pipe(dest('./dist/webfonts'))
    cb()
}

exports.build = parallel(buildCss, copyFonts)
exports.copyFonts = copyFonts