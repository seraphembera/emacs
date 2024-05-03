;; evil配置
(use-package evil
  :ensure t
  :init
  (setq evil-want-keybinding nil)
  (evil-mode)

  ;; keybindings
  (define-key evil-normal-state-map "ff" 'find-file)
  ;; 使用jk退出insert-state
  (general-def 'insert
	"k" (general-key-dispatch 'self-insert-command
		  :timeout 0.2
		  "j" 'evil-normal-state)
	"j" (general-key-dispatch 'self-insert-command
		  :timeout 0.2
		  "k" 'evil-normal-state))
  )


(provide 'package-evil)
