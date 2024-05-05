(add-to-list 'load-path "~/.emacs.d/lisp/packages")

;; restart-emacs插件
(require 'package-restart-emacs)
;; genaral插件
(require 'package-general)
;; all-the-icons插件
(require 'package-all-the-icons)
;; evil插件
(require 'package-evil)
;; undo-tree插件
(require 'package-undo-tree)
;; ace-window插件
(require 'package-ace-window)
;; ivy插件
(require 'package-ivy)
;; awesome-tab插件
;; (require 'package-awesome-tab)
;; simple插件
;;(require 'package-simple)
;; evil-nerd-commenter插件
(require 'package-evil-nerd-commenter)
;; treemacs插件
(require 'package-treemacs)
;; neotree插件
;; (require 'package-neotree)
;; dashboard插件
;; (require 'package-dashboard)
;; vterm插件
(require 'package-vterm)
;; posframe插件
(require 'package-posframe)


(provide 'init-packages)
