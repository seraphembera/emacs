(use-package org
  :pin manual
  :defer t
  :custom
  (org-pretty-entities t)
  (org-startup-indented t)
  (org-hide-leading-stars t)
  (org-hide-emphasis-markers t)
  (org-image-actual-width '(800))
  (org-startup-with-inline-images t)
  :init
  ;; 设置org标题1-8级的字体大小和颜色，颜色摘抄自monokai。;希望org-mode标题的字体大小和正文一致，设成1.0， 如果希望标题字体大一点可以设成1.2
  (custom-set-faces
   '(org-level-1 ((t (:inherit outline-1 :height 1.5  :foreground "#5C6BC0")))) 
   '(org-level-2 ((t (:inherit outline-2 :height 1.3  :foreground "#5C6BC0")))) 
   '(org-level-3 ((t (:inherit outline-3 :height 1.1  :foreground "#5C6BC0")))) 
   '(org-level-4 ((t (:inherit outline-4 :height 1.0  :foreground "#5C6BC0")))) 
   '(org-level-5 ((t (:inherit outline-5 :height 1.0  :foreground "#5C6BC0")))) 
   '(org-level-6 ((t (:inherit outline-6 :height 1.0  :foreground "#5C6BC0")))) 
   ) ;; end custom-set-faces
  (font-lock-add-keywords
   'org-mode
   '(("^ +\\([-]\\) "
      (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))
  (font-lock-add-keywords
   'org-mode
   '(("^ +\\([+]\\) "
      (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "►"))))))
  (font-lock-add-keywords
   'org-mode
   '(("^ +\\([*]\\) "
      (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "◦"))))))
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
  (org-bullets-bullet-list '("◉" "◎" "☉" "○" "○" "○"))
  (org-ellipsis "⤵")
  :init
  :hook
  (org-mode . org-bullets-mode)
  ;; (org-mode . org-num-mode)
  )


    

(provide 'init-org)
