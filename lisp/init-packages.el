(add-to-list 'load-path "~/.emacs.d/lisp/packages")

;; restart-emacs插件
(require 'package-restart-emacs)
;; genaral插件
(require 'package-general)
;; evil插件
(require 'package-evil)
;; undo-tree插件
(require 'package-undo-tree)
;; ace-window插件
(require 'package-ace-window)
;; ivy插件
(require 'package-ivy)
;; awesome-tab插件
(require 'package-awesome-tab)
;; all-the-icons插件
(require 'package-all-the-icons)
;; simple插件
;;(require 'package-simple)
;; evil-nerd-commenter插件
(require 'package-evil-nerd-commenter)
;; treemacs插件
(require 'package-treemacs)


(provide 'init-packages)
