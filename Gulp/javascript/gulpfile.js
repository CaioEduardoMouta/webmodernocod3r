const { series } = require('gulp')
const gulp = require('gulp')
const concat = require('gulp-concat')
const uglify = require('gulp-uglify') // tirar os espaços em branco
const babel = require('gulp-babel')

function transformacaoJS(cb) {
    return gulp.src('src/**/*.js')
        .pipe(babel({// torna o browser compativel em todas as versões
            comments: false,
            presets: ["env"] // vai pegar a última versão e aplicar em todos eles
        }))
        .pipe(uglify())
        .on('error', err => console.log(err) )
        .pipe(concat('codigo.min.js'))
        .pipe(gulp.dest('build'))

}

function fim(cb) {
    console.log('Fim!!!!')
    return cb()
}

exports.default = series(transformacaoJS, fim)
