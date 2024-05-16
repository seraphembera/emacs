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
;; evil-nerd-commenter插件
(require 'package-evil-nerd-commenter)
;; treemacs插件
(require 'package-treemacs)
;; dashboard插件
(require 'package-dashboard)
;; vterm插件
;; (require 'package-vterm)
;; posframe插件
(require 'package-posframe)
;; which-key插件
(require 'package-which-key)
;; projectile插件
(require 'package-projectile)
;; eaf插件
;; (require 'package-eaf)
;; orderless插件
;; (require 'package-orderless)
;; centered-window-mode插件
(require 'package-centered-window-mode)
;; awesome-pair插件
(require 'package-awesome-pair)


(provide 'init-packages)
