module.exports = (grunt) ->

  grunt.loadNpmTasks "grunt-node-webkit-builder"
  grunt.loadNpmTasks "grunt-contrib-coffee"
  grunt.loadNpmTasks "grunt-contrib-watch"

  grunt.initConfig
    pkg: grunt.file.readJSON("package.json")
    nodewebkit:
      options:
        build_dir: 'dest'
      src: ['app/**/*']
    coffee:
      app:
        expand: true,
        flatten: true,
        cwd: 'coffee',
        src: ['**/*.coffee'],
        dest: 'app/js/',
        ext: '.js'
    watch:
      app:
        files: ['app/**/*']
        tasks: ['nodewebkit']
      coffee:
        files: '<%= coffee.app.src %>'
        tasks: ['coffee']
