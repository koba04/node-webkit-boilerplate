module.exports = (grunt) ->

  grunt.loadNpmTasks "grunt-node-webkit-builder"

  grunt.initConfig
    pkg: grunt.file.readJSON("package.json")
    nodewebkit:
      options:
        build_dir: 'dest'
      src: ['app/**/*']

