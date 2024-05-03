;; 换镜像源
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

(add-to-list 'load-path "~/.emacs.d/lisp/packages")

;; restart-emacs插件
(require 'package-restart-emacs)

;; genaral插件
(require 'package-general)

;; evil插件
(require 'package-evil)


(provide 'init-packages)
