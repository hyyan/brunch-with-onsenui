exports.config =
    # See http://brunch.io/#documentation for docs.
    paths:
        public: 'www'

    files:
        javascripts:
            joinTo:
                'js/app.js': /^(app[\\/]scripts)/
                'js/vendor.js': /^(vendor|bower_components)/
            order:
                before: [
                    'bower_components/onsenui/build/js/onsenui_all.js'
                    'app/scripts/app.js'
                ]
        stylesheets:
            joinTo:
                'css/app.css': /^(app[\\/]styles)|(bower_components)/
            order:
                before: [
                    'bower_components/onsenui/build/css/onsenui.css'
                ]
    modules:
        wrapper: false
        definition: false

    conventions:
        # Unitl brunch find a solution for assets
        # Solutin form https://github.com/elving/brunch-with-hipsters
        assets: /(assets|vendor\/assets|font)/
        ignored:  [
          /[\\/]_/
          /vendor[\\/](node|j?ruby-.*|bundle)[\\/]/
          /bower_components[\\/]angular[\\/]*[\\/]angular.js/
        ]

    plugins:
      stylus:
        linenos: true
        firebug: false
        includeCss: true
