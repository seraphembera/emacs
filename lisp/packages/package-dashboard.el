;; use-package with package.el:
(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook)
  ;; Content is not centered by default. To center, set
  ;; Set the title
  (setq dashboard-banner-logo-title "")
  ;; Set the banner
  (setq dashboard-startup-banner "~/.emacs.d/source/dashboard-banner-logo.txt")
  (setq dashboard-center-content t)
  ;; vertically center content
  (setq dashboard-vertically-center-content t)
  (setq dashboard-display-icons-p t)     ; display icons on both GUI and terminal
  (setq dashboard-icon-type 'nerd-icons) ; use `nerd-icons' package
  )


(provide 'package-dashboard)
