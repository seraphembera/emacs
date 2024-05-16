(use-package eaf
  :load-path "~/.emacs.d/lisp/local/emacs-application-framework"
  :custom
  ;; See https://github.com/emacs-eaf/emacs-application-framework/wiki/Customization
  (eaf-browser-continue-where-left-off t)
  (eaf-browser-enable-adblocker t)
  (browse-url-browser-function 'eaf-open-browser)
  :config
  (defalias 'browse-web #'eaf-open-browser)
  )

;; (require 'eaf-airshare)
;; (require 'eaf-music-player)
;; (require 'eaf-markmap)
;; (require 'eaf-map)
(require 'eaf-browser)
(require 'eaf-markdown-previewer)
(require 'eaf-pdf-viewer)
;; (require 'eaf-pyqterminal)
;; (require 'eaf-file-sender)
(require 'eaf-org-previewer)
;; (require 'eaf-terminal)
;; (require 'eaf-git)
;; (require 'eaf-rss-reader)
;; (require 'eaf-js-video-player)
;; (require 'eaf-video-player)
;; (require 'eaf-2048)
;; (require 'eaf-netease-cloud-music)
;; (require 'eaf-jupyter)
(require 'eaf-file-browser)
;; (require 'eaf-mindmap)
(require 'eaf-system-monitor)
(require 'eaf-file-manager)
(require 'eaf-image-viewer)

(provide 'package-eaf)
