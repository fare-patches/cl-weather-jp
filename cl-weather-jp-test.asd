#|
  This file is a part of cl-weather-jp project.
  Copyright (c) 2015 Eitaro Fukamachi (e.arrows@gmail.com)
|#

(defsystem "cl-weather-jp-test"
  :author "Eitaro Fukamachi"
  :license "BSD 2-Clause"
  :depends-on (:cl-weather-jp
               :prove)
  :components ((:module "t"
                :components
                ((:test-file "cl-weather-jp"))))
  :description "Test system for cl-weather-jp"

  :defsystem-depends-on ("prove-asdf")
  :perform (test-op (op c) (symbol-call :prove-asdf :run-test-system c)))
