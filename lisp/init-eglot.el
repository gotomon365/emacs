(use-package eglot
  :hook (simpc-mode . eglot-ensure)
  :config
  (add-to-list 'eglot-server-programs
               '(simpc-mode . ("clangd"))))


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
