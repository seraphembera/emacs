;; evil配置
(use-package evil
  :ensure t
  :init
  (setq evil-want-keybinding nil)
  (evil-mode)

  ;; keybindings
  ;; undo-tree-redo
  (define-key evil-normal-state-map (kbd "C-r") 'undo-tree-redo)
  ;; 使用jk退出insert-state
  (general-def 'insert
    "k" (general-key-dispatch 'self-insert-command
	  :timeout 0.2
	  "j" 'evil-normal-state)
    "j" (general-key-dispatch 'self-insert-command
	  :timeout 0.2
	  "k" 'evil-normal-state))
  ;; normal-state和visual-state下的按键绑定
  (general-define-key
   :states '(normal visual)
   :prefix "SPC"
   "SPC" 'execute-extended-command
   ;; file
   "ff" 'find-file
   "sf" 'save-buffer
   ;; window
   ;; switch buffer
   "bb" 'ivy-switch-buffer
   )
  (general-define-key
   :states '(normal visual)
   :prefix "gg"
   "" 'vterm-toggle
   )
  )

(provide 'package-evil)
