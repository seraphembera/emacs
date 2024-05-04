;; 设置字体
(set-face-attribute 'default nil :font (font-spec :family "JetBrainsMono NF Light" :size 20))

;; 安装主题
(use-package atom-one-dark-theme
  :ensure t
  :init
  (load-theme 'atom-one-dark t)
  )

(provide 'init-ui)
