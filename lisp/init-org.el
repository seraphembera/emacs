(use-package org
  :ensure t
  :init
  
  ;; 自动换行
  (add-hook 'org-mode-hook
	    (lambda()
	      (setq truncate-lines nil))) 

  )

(use-package org-bullets
  :ensure t
  :custom
  (org-bullets-bullet-list '("◉" "☯" "○" "☯" "✸" "☯" "✿" "☯" "✜" "☯" "◆" "☯" "▶"))
  (org-ellipsis "⤵")
  :hook (org-mode . org-bullets-mode))

;; (use-package org-modern
;;   :ensure nil
;;   :load-path "~/.emacs.d/lisp/local/org-modern"
;;   :config
;;   (with-eval-after-load 'org (global-org-modern-mode))
  
;;   (setq
;;    ;; Edit settings
;;    org-auto-align-tags nil
;;    org-tags-column 0
;;    org-catch-invisible-edits 'show-and-error
;;    org-special-ctrl-a/e t
;;    org-insert-heading-respect-content t
   
;;    ;; Org styling, hide markup etc.
;;    org-hide-emphasis-markers t
;;    org-pretty-entities t
   
;;    ;; Agenda styling
;;    org-agenda-tags-column 0
;;    org-agenda-block-separator ?─
;;    org-agenda-time-grid
;;    '((daily today require-timed)
;;      (800 1000 1200 1400 1600 1800 2000)
;;      " ┄┄┄┄┄ " "┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄")
;;    org-agenda-current-time-string
;;    "◀── now ─────────────────────────────────────────────────")
  
;;   ;; Ellipsis styling
;;   (setq org-ellipsis "…")
;;   (set-face-attribute 'org-ellipsis nil :inherit 'default :box nil)
  
;;   (global-org-modern-mode)
;;   )


(provide 'init-org)
