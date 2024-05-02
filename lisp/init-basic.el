;; 关闭菜单栏
(menu-bar-mode -1)
;; 关闭工具栏
(tool-bar-mode -1)
;; 关闭滚动条
(scroll-bar-mode -1)
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


;; custom.el
(setq custom-file (expand-file-name "~/.emacs.d/lisp/custom.el"))
(load custom-file 'no-error 'no-message)


(provide 'init-basic)
