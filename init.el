;; about the directroy
(add-to-list 'load-path "~/.emacs.d/lisp/")
(setq backup-directory-alist `(("." . "~/.saves")))

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


(require 'init-evil)
(require 'init-theme)
(require 'init-custom)
(require 'init-tab)
(require 'init-python)
(require 'init-org)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files nil)
 '(package-selected-packages
      '(nordic-night-theme rainbow-delimiters evil-nerd-commenter embark marginalia orderless vertico zenburn-theme use-package evil-visual-mark-mode evil-multiedit)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'downcase-region 'disabled nil)
