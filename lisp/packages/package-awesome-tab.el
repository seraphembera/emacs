(use-package awesome-tab
  :load-path "~/.emacs.d/lisp/local"
  :config
  (awesome-tab-mode t)
  (setq awesome-tab-height 120)
  (global-set-key (kbd "C-h") 'awesome-tab-backward-tab)
  (global-set-key (kbd "C-l") 'awesome-tab-forward-tab)
  (global-set-key (kbd "C-k") 'kill-current-buffer)
  )


(provide 'package-awesome-tab)
