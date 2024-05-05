(use-package vterm
  :ensure t
  :config
  )


(use-package vterm-toggle
  :load-path "~/.emacs.d/lisp/local/vterm-toggle"
  :init

  )


(use-package posframe-project-term
  :ensure nil
  :load-path "~/.emacs.d/lisp/local/posframe-project-term"
  :bind
  (("C-c t" . posframe-project-term-toggle)))

(provide 'package-vterm)
