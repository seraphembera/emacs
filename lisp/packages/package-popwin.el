(use-package popwin
  :ensure t
  :load-path "~/.emacs.d/lisp/local/popwin" "~/.emacs.d/lisp/local/popwin/misc"
  :init
  (popwin-mode 1)
  (require 'popwin-term)
(push '(term-mode :position :top :height 16 :stick t) popwin:special-display-config)
  )



(provide 'package-popwin)
