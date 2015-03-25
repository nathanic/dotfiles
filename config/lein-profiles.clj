{:user {:plugins [[lein-swank "1.4.5"]
                  [lein-ritz "0.7.0" :exclusions [org.clojure/clojure]] ; swank middleware (not using it much these days
                  [lein-pprint "1.1.1"]     ; pprint your project file
                  [lein-kibit "0.0.7"]      ; linter/improvement suggestions
                  [lein-ancient "0.4.4"]    ; check for newer versions of deps
                  [lein-try "0.3.0"]
                  ;; [lein-pedantic "0.0.5"]
                  [venantius/ultra "0.3.3"] ; sweet repl setup
                  [jonase/eastwood "0.2.1"] ; linter
                  ]
        ;; :ultra {:color-scheme :solarized_dark}
        ; pomegranate helper for resolving maven deps at runtime
        :dependencies [[edw/pomjars "0.1.0"]]
        }}

