;; 关闭菜单栏
(menu-bar-mode -1)
;; 关闭工具栏
(tool-bar-mode -1)
;; 关闭滚动条
(scroll-bar-mode -1)
;; Give some breathing room
(set-fringe-mode 0)
;; visual-line-mode
(visual-line-mode 1)
;; set up the visible bell
(setq visible-bell nil)
;; 开启自动换行
(setq truncate-lines nil)
;; 显示相对行号
(dolist (mode '(prog-mode-hook
                conf-mode-hook))
  (add-hook mode (lambda ()
		   (progn (display-line-numbers-mode 1)
			  ;; (centered-window-mode 0)
			  (setq display-line-numbers-type 'relative))))
  )
;; 关闭启动动画
(setq inhibit-startup-message t)
;; 关闭自动保存文件
(setq auto-save-default nil)
;; 关闭自动备份文件
(setq make-backup-file nil)
;; 自动加载外部修改过的文件
(global-auto-revert-mode 1)
;; 简化yes or no
(fset 'yes-or-no-p 'y-or-n-p)

(use-package command-log-mode
  :ensure t)

;; custom.el
(setq custom-file (expand-file-name "~/.emacs.d/lisp/custom.el"))
(load custom-file 'no-error 'no-message)


(provide 'init-basic)
