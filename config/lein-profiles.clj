{:user {:plugins [[lein-swank "1.4.5"]
                  [lein-ritz "0.7.0" :exclusions [org.clojure/clojure]]   ; improved swank interface
                  [lein-pprint "1.1.1"]
                  [lein-kibit "0.0.7"]
                  [lein-ancient "0.4.4"]
                  ]}

 ; profile without lein-pedantic
 :pedantic {:plugins [[lein-swank "1.4.5"]
                      [lein-ritz "0.7.0" :exclusions [org.clojure/clojure]]   ; improved swank interface
                      [lein-pprint "1.1.1"]
                      [lein-kibit "0.0.7"]
                      [lein-pedantic "0.0.5"]
                      ]}}

