(defun nasm-mode-setup()
  (set (make-local-variable 'gofmt-command) "asmfmt")
  (add-hook 'before-save-hook 'gofmt nil t)


(add-hook 'nasm-mode-hook 'nasm-mode-setup)
(add-to-list 'auto-mode-alist '("\\.\\(asm\\|s\\|nasm\\)$" . nasm-mode))
(add-hook 'nasm-mode-hook (lambda () (setq nasm-basic-offset 8)))



(provide 'init-asm)
