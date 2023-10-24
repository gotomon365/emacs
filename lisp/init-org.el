(add-hook 'org-mode-hook 'org-indent-mode)
(add-hook 'org-mode-hook
    (global-set-key (kbd "<tab>") 'org-cycle))
(provide 'init-org)
