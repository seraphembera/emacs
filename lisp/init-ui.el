;; 设置字体
(set-face-attribute 'default nil :font (font-spec :family "JetBrainsMono NF Light" :size 22))
(use-package nerd-icons
  :load-path "~/.emacs.d/lisp/local/nerd-icons"
  :custom
  (nerd-icons-font-family "JetBrainsMono NF Light")
  )
;; 设置透明度
(add-to-list 'default-frame-alist '(alpha-background . 90))
(setq command-error-function #'my-command-error-function)


;; 安装主题
(use-package doom-themes
  :ensure t
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-moonlight t)

  ;; Enable custom neotree theme (all-the-icons must be installed!)
  ;; (doom-themes-neotree-config)
  ;; or for treemacs users
  ;; (setq doom-themes-treemacs-theme "doom-atom") ; use "doom-colors" for less minimal icon theme
  ;; (doom-themes-treemacs-config)
  ;; Corrects (and improves) org-mode's native fontification.
  ;; (doom-themes-org-config)
  )

;; doom-modeline插件
(use-package doom-modeline
  :ensure t

  :init
  (doom-modeline-mode t)
  (setq doom-modeline-height 40)
  (setq doom-modeline-buffer-file-name-style 'file-name)
  (setq doom-modeline-icon t)
  (setq doom-modeline-buffer-state-icon nil)
  (setq doom-modeline-project-detection 'project)
  (setq doom-modeline-buffer-modification-icon nil)
  (setq doom-modeline-percent-position '(-3 "%p"))
  (setq doom-modeline-position-line-format '("L%l"))
  (setq doom-modeline-position-column-format '("C%c"))
  (setq doom-modeline-position-column-line-format '("%l:%c"))
  ;; set font
  ;; (if (facep 'mode-line-active)
  ;;     (set-face-attribute 'mode-line-active nil :family "Iosevka NF" :height 150) ; For 29+
  ;;   (set-face-attribute 'mode-line nil :family "Iosevka NF" :height 150))
  ;; (set-face-attribute 'mode-line-inactive nil :family "Iosevka NF" :height 150)
  )


(provide 'init-ui)
