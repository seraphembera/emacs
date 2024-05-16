(use-package awesome-pair
  :load-path "~/.emacs.d/lisp/local/awesome-pair"
  :init

  (define-key awesome-pair-mode-map (kbd "(") 'awesome-pair-open-round)
  (define-key awesome-pair-mode-map (kbd "[") 'awesome-pair-open-bracket)
  (define-key awesome-pair-mode-map (kbd "{") 'awesome-pair-open-curly)
  (define-key awesome-pair-mode-map (kbd ")") 'awesome-pair-close-round)
  (define-key awesome-pair-mode-map (kbd "]") 'awesome-pair-close-bracket)
  (define-key awesome-pair-mode-map (kbd "}") 'awesome-pair-close-curly)
  (define-key awesome-pair-mode-map (kbd "=") 'awesome-pair-equal)
  )


(provide 'package-awesome-pair)
