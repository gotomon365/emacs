(add-hook 'org-mode-hook 'org-indent-mode)
(with-eval-after-load 'evil-maps (define-key evil-motion-state-map (kbd "TAB") nil))


(global-set-key (kbd "C-c l") #'org-store-link)
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)

(provide 'init-org)
