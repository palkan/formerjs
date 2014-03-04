exports.config =
  modules:
    definition: false
    wrapper: false
  files:
    javascripts:
      defaultExtension: 'coffee'
      joinTo:
        'javascripts/former.js': /^app/
        'javascripts/vendor.js': /^(bower_components|vendor)[\\/](?!test)(?!jquery)/
        'test/javascripts/test.js': /^test/
        'test/javascripts/test-vendor.js': /^vendor[\\/](?=test)/
      order:
        before:
          []
    stylesheets:
      defaultExtension: 'css'
      joinTo:
        'test/stylesheets/test.css': /^(test|vendor[\\/](?=test))/