;; evil配置
(use-package evil
  :ensure t
  :init
  (setq evil-want-keybinding nil)
  (evil-mode)

  ;; keybindings
  (define-key evil-normal-state-map "ff" 'find-file)
  )


(provide 'package-evil)
