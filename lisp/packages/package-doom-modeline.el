(use-package doom-modeline
  :ensure t

  :init
  (doom-modeline-mode t)
  (setq doom-modeline-icon t)
  (setq doom-modeline-position-line-format '("L%l"))
  )

(provide 'package-doom-modeline)
