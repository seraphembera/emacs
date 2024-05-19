(use-package rust-mode
  :ensure t
  :init
  (add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))
  (add-hook 'rust-mode-hook
          (lambda () (prettify-symbols-mode)))
  )

(provide 'package-rust-mode)
