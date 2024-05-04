;; 换镜像源
(require 'package)

(setq package-archives '(("gnu"    . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("nongnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/nongnu/")
                         ("melpa"  . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
;; (setq package-archives '(("gnu"   . "http://1.15.88.122/gnu/")
;;                            ("melpa" . "http://1.15.88.122/melpa/")))
(package-initialize)

;;防止反复调用 package-refresh-contents 会影响加载速度
(when (not package-archive-contents)
  (package-refresh-contents))

;; 安装use-package
(package-install 'use-package)


(provide 'init-startup)
