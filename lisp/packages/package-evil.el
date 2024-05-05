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
   "ks" 'delete-window
   "kn" 'delete-other-windows
   "kt" 'treemacs
   "sv" 'split-window-right
   "sh" 'split-window-below
   "nn" 'ace-window
   ;; switch buffer
   ;; "bb" 'ivy-switch-buffer
   "kb" 'kill-buffer
   )

  (general-define-key
   :states '(normal visual)
   "J" "5j"
   "K" "5k"
   "H" 'evil-backward-word-begin
   "L" 'evil-forward-word-begin
   "C-h" 'move-beginning-of-line
   "C-l" 'move-end-of-line
   "C-j" "5j"
   "C-k" "5k"
   "tt" 'treemacs-toggle
   "gg" 'vterm-toggle
   "bb" 'ivy-switch-buffer
   "nn" "C-x o"
   "P" 'vterm-yank
   )

  (general-define-key
   :states '(visual)
   :prefix "SPC"
   "jk" 'evil-normal-state
   )
  )

(defun treemacs-toggle ()
  (interactive)
  (treemacs)
  (evil-visual-state)
  (evil-normal-state)
  )

(provide 'package-evil)
