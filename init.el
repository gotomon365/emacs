;; about the directroy
(add-to-list 'load-path "~/.emacs.d/lisp/")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

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
(require 'init-cpp)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files
      '("~/Documents/myNote/org/life.org" "/Users/kuei/Documents/myNote/org/lunch.org"))
 '(package-selected-packages
      '(zenburn-theme vertico use-package tangonov-theme rainbow-delimiters quickrun orderless nordic-night-theme marginalia load-theme-buffer-local evil-visual-mark-mode evil-nerd-commenter evil-multiedit embark eglot afternoon-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
