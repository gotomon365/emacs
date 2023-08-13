;; about the directroy
(add-to-list 'load-path "~/.emacs.d/lisp/")
(setq backup-directory-alist `(("." . "~/.saves")))

(require 'init-evil)
(require 'init-theme)
(require 'init-custom)
(require 'init-tab)
(require 'init-python)

(require 'package)
(setq package-archives
    '(("gnu" . "http://elpa.gnu.org/packages/")
         ("melpa" . "https://melpa.org/packages/")))

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





;; c indent
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
      '("bc7d4cfb6d4bd7074a39f97f0b8a057c5b651c403950bbbc4ad35a609ad6268a" default))
 '(package-selected-packages
      '(evil-multiedit iedit embark marginalia orderless vertico keycast zenburn-theme timu-caribbean-theme evil))
 '(warning-suppress-log-types
      '(((package reinitialization))
           ((package reinitialization))
           ((package reinitialization))))
 '(warning-suppress-types
      '(((package reinitialization))
           ((package reinitialization)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )




