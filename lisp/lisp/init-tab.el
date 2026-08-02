(package-install `vertico)
(vertico-mode t)

(package-install `orderless)
(setq completion-styles `(orderless))

(package-install `marginalia)
(marginalia-mode t)

(package-install `embark)
(global-set-key (kbd "C-;") `embark-act)
(setq prefix-help-command `embark-prefix-help-command)

(set-default 'tab-always-indent 'complete)


;; no mixed tab space
(setq-default indent-tabs-mode nil)
                                        ; gnu emacs 23.1, 24.4.1 default is t

(provide 'init-tab)
