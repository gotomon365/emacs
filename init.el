
(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'init-evil)

(require 'package)
(setq package-archives
    '(("gnu" . "http://elpa.gnu.org/packages/")
         ("melpa" . "https://melpa.org/packages/")))

;;防止反复调用 package-refresh-contents 会影响加载速度
(when (not package-archive-contents)
    (package-refresh-contents))

;;modeline上显示我的所有的按键和执行的命令



(package-initialize)
(setq use-package-always-ensure t)
(unless (package-installed-p 'use-package)
    (package-refresh-contents)
    (package-install 'use-package))
(eval-when-compile (require 'use-package))


;; vertical auto complete
(package-install `vertico)
(vertico-mode t)

(package-install `orderless)
(setq completion-styles `(orderless))

(package-install `marginalia)
(marginalia-mode t)

(package-install `embark)
(global-set-key (kbd "C-;") `embark-act)
(setq prefix-help-command `embark-prefix-help-command)


(column-number-mode 1)
(help)
(blink-cursor-mode 1)
(electric-pair-mode 1)
(toggle-frame-maximized)

;; set highlighting brackets
(show-paren-mode 1)
(setq show-paren-style 'parenthesis)

;; for isearch-forward, make these equivalent: space newline tab hyphen underscore
(electric-indent-mode 1)

(set-default 'tab-always-indent 'complete)


;; no mixed tab space
(setq-default indent-tabs-mode nil)
                                        ; gnu emacs 23.1, 24.4.1 default is t

;; 4 is more popular than 8.
(setq-default tab-width 4)

(setq mouse-highlight nil)
(setq cursor-type `(bar, 5))
(setq line-move-visual t)


;; (global-tab-line-mode)

;;Exit insert mode by pressing j and then j quickly

;; c indent
(setq-default c-basic-offset 4)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
      '("bc7d4cfb6d4bd7074a39f97f0b8a057c5b651c403950bbbc4ad35a609ad6268a" default))
 '(package-selected-packages
      '(embark marginalia orderless vertico keycast zenburn-theme timu-caribbean-theme evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(load-theme `zenburn t)

(evil-set-initial-state 'dired-mode 'emacs)
(setq lisp-indent-offset 4)
