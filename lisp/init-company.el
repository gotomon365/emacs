(use-package company
  :ensure t
  :config
  (global-company-mode t) ; Enable globally
  (setq company-idle-delay 0) ; Instant suggestion
  (setq company-minimum-prefix-length 2) ; Show after 2 chars
  (setq company-selection-wrap-around t) ; Wrap around
  (with-eval-after-load 'company
                        (add-to-list 'company-backends 'company-clang))
  ) 

(provide 'init-company)
