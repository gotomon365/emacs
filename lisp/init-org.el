(add-hook 'org-mode-hook 'org-indent-mode)
(with-eval-after-load 'evil-maps (define-key evil-motion-state-map (kbd "TAB") nil))

(provide 'init-org)
