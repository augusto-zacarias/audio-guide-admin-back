'use strict'

import gulp from 'gulp'
import tslint from 'gulp-tslint'
import ts from 'gulp-typescript'
import nodemon from 'gulp-nodemon'
import typescript from 'typescript'
import { exec } from 'child_process'

// TSLINT
gulp.task('ts-lint', () => {
   const config = {formatter: 'verbose'}
   return gulp.src(['src/**/*.ts'])
       .pipe(tslint(config))
       .pipe(tslint.report({
           reportLimit: 5
       }))
})


// COPY FILES
gulp.task('copy-files', () => {
   const COPY_FILES = ['package.json']
   return gulp.src(COPY_FILES)
       .pipe(gulp.dest('dist'))
})


// WATCH
gulp.task('watch', (done) => {
   gulp.watch('./**/*.ts')
   nodemon({
       tasks: ['build'],
       ext: 'ts, json',
       exec: 'ts-node --esm ./src/server.ts',
       ignore: ['node_modules/', 'package.json', 'tsconfig.json']
   }).on('restart', () => {
       console.log('##################################### // ######################################')
       console.log('########################### (0/ Server restarted... ###########################')
   }).on('crash', function () {
       console.error('Application has crashed!')
   })
   done()
})


// BUILD DEFAULT
gulp.task('build', gulp.series(['ts-lint', 'copy-files'], function compiler() {
       const tsProject = ts.createProject(
           'tsconfig.json',
           {typescript: typescript}
       )
       return tsProject.src()
           .pipe(tsProject())
           .js.pipe(gulp.dest('dist'))
           .on('error', (err) => {
               console.error('Build error:', err.message)
               // process.exit(1)
           })
   }
))


// BUILD DEV
gulp.task('dev', gulp.series(['build', 'watch']))

