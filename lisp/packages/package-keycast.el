(use-package keycast
  :load-path "~/.emacs.d/lisp/local"
  :init
  (add-to-list 'global-mode-string '("" keycast-mode-line))
  (keycast-mode-line-mode t)
  )

(provide 'package-keycast)
