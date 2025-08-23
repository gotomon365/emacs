;; vertical auto complete
(global-hl-line-mode 1)


(column-number-mode 1)
(blink-cursor-mode 1)
(electric-pair-mode 1)
(toggle-frame-maximized)


;; ibuffer setting
(global-set-key (kbd "C-x C-b") 'ibuffer)
(autoload 'ibuffer "ibuffer" "List buffers." t)

;; set highlighting brackets
(show-paren-mode 1)
(setq show-paren-style 'parenthesis)
(paredit-mode t)

;; for isearch-forward, make these equivalent: space newline tab hyphen underscore
(electric-indent-mode 1)



(setq-default tab-width 4)

(setq mouse-highlight nil)
(setq cursor-type `(bar, 5))
(setq line-move-visual t)


(setq-default c-basic-offset 4)
(evil-set-initial-state 'dired-mode 'emacs)
;;(setq lisp-indent-offset 4)



(provide 'init-custom)
