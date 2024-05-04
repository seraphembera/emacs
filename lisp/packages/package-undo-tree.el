(use-package undo-tree
  :ensure t
  :init
  (global-undo-tree-mode)
  (setq undo-tree-auto-save-history nil)
  (evil-set-undo-system 'undo-tree))


(provide 'package-undo-tree)
