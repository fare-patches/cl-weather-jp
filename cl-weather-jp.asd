#|
  This file is a part of cl-weather-jp project.
  Copyright (c) 2015 Eitaro Fukamachi (e.arrows@gmail.com)
|#

#|
  Get weather in Japan

  Author: Eitaro Fukamachi (e.arrows@gmail.com)
|#

(defsystem "cl-weather-jp"
  :version "0.1"
  :author "Eitaro Fukamachi"
  :license "BSD 2-Clause"
  :depends-on ("dexador"
               "plump"
               "clss"
               "jonathan"
               "function-cache")
  :components ((:module "src"
                :components
                ((:file "cl-weather-jp" :depends-on ("location" "util"))
                 (:file "location" :depends-on ("http" "error" "util"))
                 (:file "http")
                 (:file "error")
                 (:file "util"))))
  :description "Get weather in Japan"
  :long-description #.(read-file-string (subpathname *load-pathname* "README.markdown"))
  :in-order-to ((test-op (test-op "cl-weather-jp-test"))))
