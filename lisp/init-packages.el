;; 使用清华源
(require 'package)
(setq package-archives '(("gnu"    . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("nongnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/nongnu/")
                         ("melpa"  . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize)

;;防止反复调用 package-refresh-contents 会影响加载速度
(when (not package-archive-contents)
  (package-refresh-contents))

;; 安装use-package
(package-install 'use-package)

;; 安装restart-emacs
(use-package restart-emacs
  :ensure t)

;; evil配置
(use-package evil
  :ensure t
  :init
  (evil-mode)
  )





(provide 'init-packages)
