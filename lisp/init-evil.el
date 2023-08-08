(use-package evil
    :demand t
    :bind (("<escape>" . keyboard-escape-quit))
    :init
    ;; allows for using cgn
    ;; (setq evil-search-module 'evil-search)
    (setq evil-want-keybinding nil)
    ;; no vim insert bindings
    ;;(setq evil-undo-system 'undo-fu)
    :config
    (evil-mode 1))


(use-package iedit
  :ensure t
  :init
  (setq iedit-toggle-key-default nil)
  :config
  (define-key iedit-mode-keymap (kbd "M-h") 'iedit-restrict-function)
  (define-key iedit-mode-keymap (kbd "M-i") 'iedit-restrict-current-line))

(use-package evil-multiedit
  :ensure t
  :commands (evil-multiedit-default-keybinds)
  :init
  (evil-multiedit-default-keybinds))
(provide 'init-evil)

