(use-package org
  :pin manual
  :defer t
  :custom
  ;; (org-directory "~/Dropbox/org")
  ;; (org-agenda-files "~/Dropbox/org/agenda.org")
  (org-ellipsis " ⭍")
  (org-pretty-entities t)
  (org-startup-indented t)
  (org-hide-leading-stars t)
  (org-hide-emphasis-markers t)
  (org-image-actual-width '(800))
  (org-startup-with-inline-images t)
  (org-todo-keywords '((sequence "     " "   ")))
  :custom-face
  (org-level-1 ((t (:height 1.15))))
  (org-level-2 ((t (:height 1.13))))
  (org-level-3 ((t (:height 1.11))))
  (org-level-4 ((t (:height 1.09))))
  )
;; 自动换行
(add-hook 'org-mode-hook
	  (lambda()
	    (setq truncate-lines nil)
	    (centered-window-mode 1)
	    (visual-line-mode 1)
	    )) 

(use-package org-bullets
  :ensure t
  :custom
  (org-bullets-bullet-list '("◉" "☯" "○" "☯" "✸" "☯" "✿" "☯" "✜" "☯" "◆" "☯" "▶"))
  (org-ellipsis "⤵")
  :hook (org-mode . org-bullets-mode))


(provide 'init-org)
