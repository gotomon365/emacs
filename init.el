;; about the directroy
(add-to-list 'load-path "~/.emacs.d/lisp/")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(add-to-list 'auto-mode-alist '("\\.[hc]\\(pp\\)?\\'" . simpc-mode))

(setq backup-directory-alist `(("." . "~/.saves")))
(setq custom-file "~/.emacs.d/.custom.el")

(require 'package)
(setq package-archives
  '(("melpa" . "https://melpa.org/packages/")
    ("org" . "https://orgmode.org/elpa/")
    ("elpa" . "https://elpa.gnu.org/packages/")
    ("gnu" . "http://elpa.gnu.org/packages/")))


;;防止反复调用 package-refresh-contents 会影响加载速度
(when (not package-archive-contents)
    (package-refresh-contents))

;;modeline上显示我的所有的按键和执行的命令

;;(package-initialize)
(setq use-package-always-ensure t)
(unless (package-installed-p 'use-package)
    (package-refresh-contents)
    (package-install 'use-package))
(eval-when-compile (require 'use-package))

;; company mode
(add-hook 'after-init-hook 'global-company-mode)

    

(require 'init-evil)
(require 'init-theme)
(require 'init-custom)
(require 'init-tab)
(require 'init-org)
(require 'init-company)
(require 'init-mine)
(require 'things-evil)
(require 'simpc-mode)

