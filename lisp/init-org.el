;; 自动换行
(add-hook 'org-mode-hook
	  (lambda() (setq truncate-lines nil))) 

(use-package org-bullets
  :ensure t
  :custom
  (org-bullets-bullet-list '("◉" "☯" "○" "☯" "✸" "☯" "✿" "☯" "✜" "☯" "◆" "☯" "▶"))
  (org-ellipsis "⤵")
  :hook (org-mode . org-bullets-mode))


(provide 'init-org)
