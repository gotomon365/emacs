(use-package company
  :ensure t
  :config
  (global-company-mode t) ; Enable globally
  (setq company-idle-delay 0) ; Instant suggestion
  (setq company-minimum-prefix-length 2) ; Show after 2 chars
  (setq company-selection-wrap-around t) ; Wrap around
  ) 

(add-hook 'simpc-mode-hook 'company-mode)
;; (add-hook 'perl-mode 'company-mode)
(setq company-backends '((company-clang company-capf)))

(provide 'init-company)
