



;; 1. Install and configure Rustic
(use-package rustic
  :ensure t
  :config
  ;; Tell rustic to use Eglot instead of lsp-mode
  (setq rustic-lsp-client 'eglot)
  ;; Automatically format your code using rustfmt on save
  (setq rustic-format-on-save t))

;; 2. Fine-tune built-in Eglot behavior
(use-package eglot
  :ensure nil ; Built-in, no need to download
  :hook (rustic-mode . eglot-ensure) ; Auto-start eglot in rust files
  :config
  ;; Optional: Enable inlay hints (inline type & parameter hints)
  (add-hook 'eglot-managed-mode-hook #'eglot-inlay-hints-mode)

  ;; Performance optimization: optimize Eglot's jsonrpc events
  (setq jsonrpc-default-request-timeout 10))

(use-package corfu
  :ensure t
  :init
  (global-corfu-mode)
  :config
  (setq corfu-auto t       ; Enable auto-completion
        corfu-cycle t))     ; Allow cycling through candidates


(provide 'init-rust)
