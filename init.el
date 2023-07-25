
(add-to-list 'load-path "~/.emacs.d/lisp/")




(package-initialize)
(setq use-package-always-ensure t)
(unless (package-installed-p 'use-package)
    (package-refresh-contents)
    (package-install 'use-package))
(eval-when-compile (require 'use-package))


(require 'init-evil)





(column-number-mode 1)
(blink-cursor-mode 0)
(tool-bar-mode 0)
(electric-pair-mode 1)

;; set highlighting brackets
(show-paren-mode 1)
(setq show-paren-style 'parenthesis)

;; for isearch-forward, make these equivalent: space newline tab hyphen underscore

(electric-indent-mode 0)

(set-default 'tab-always-indent 'complete)

;; no mixed tab space
(setq-default indent-tabs-mode nil)
                                        ; gnu emacs 23.1, 24.4.1 default is t

;; 4 is more popular than 8.
(setq-default tab-width 4)


(setq mouse-highlight nil)
(setq line-move-visual t)



;; (global-tab-line-mode)

(tooltip-mode -1)

;;Exit insert mode by pressing j and then j quickly
(require 'key-chord)
(setq key-chord-two-keys-delay 1)
(key-chord-define evil-insert-state-map "jj" 'evil-normal-state)
(key-chord-mode 1)
;; c indent
(setq-default c-basic-offset 4)
(custom-set-variables
    ;; custom-set-variables was added by Custom.
    ;; If you edit it by hand, you could mess it up, so be careful.
    ;; Your init file should contain only one such instance.
    ;; If there is more than one, they won't work right.
    '(custom-safe-themes
         '("bc7d4cfb6d4bd7074a39f97f0b8a057c5b651c403950bbbc4ad35a609ad6268a" default))
    '(package-selected-packages '(timu-caribbean-theme evil)))
(custom-set-faces
    ;; custom-set-faces was added by Custom.
    ;; If you edit it by hand, you could mess it up, so be careful.
    ;; Your init file should contain only one such instance.
    ;; If there is more than one, they won't work right.
    ) 

(load-theme `timu-caribbean t)

(evil-set-initial-state 'dired-mode 'emacs)
(setq lisp-indent-offset 4)
