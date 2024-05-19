(use-package popwin
  :load-path
  "~/.emacs.d/lisp/local/popwin"
  "~/.emacs.d/lisp/local/popwin/misc"
  )

(popwin-mode 1)
(require 'popwin-term)
(push '(term-mode :position :bottom :height 16 :stick t) popwin:special-display-config)

(provide 'package-popwin)
