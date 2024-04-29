;; 修改软件源
(setq package-archives '(("gnu"    . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("nongnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/nongnu/")
                         ("melpa"  . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))

(setq package-check-signature nil)

(require 'package)

(unless (bound-and-true-p package--initialized)
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-refresh-contennts)
  (package-install 'use-package))

;; 建议添加的配置
(setq use-package-always-ensure t)
(setq use-package-always-defer t)
(setq use-package-always-demand nil)
(setq use-package-expand-minimally t)
(setq use-package-verbose t)

(require 'use-package)

(provide 'init-elpa)
