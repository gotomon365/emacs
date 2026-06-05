(use-package eglot
  :hook (simpc-mode . eglot-ensure)
  :config
  (add-to-list 'eglot-server-programs
               '(simpc-mode . ("clangd"))))
(add-hook 'cider-mode-hook
          (lambda ()
            ;; Let LSP (Eglot) handle ElDoc instead of CIDER
            (setq-default cider-eldoc-display-for-symbol-at-point nil)
            (remove-hook 'eldoc-documentation-functions #'cider-eldoc t)
            
            ;; Let LSP handle completions instead of CIDER
            (remove-hook 'completion-at-point-functions #'cider-complete-at-point t)))


;; for perl
(with-eval-after-load 'eglot
  (add-to-list 'eglot-server-programs
               '((perl-mode cperl-mode) . ("/home/kuei/dev/misc/perlnavigator" "--stdio"))))


(add-hook 'perl-mode-hook 'eglot-ensure)
(add-hook 'cperl-mode-hook 'eglot-ensure)

;; for python
(use-package eglot
  :hook (python-mode . eglot-ensure))


(provide 'init-eglot)
