(use-package evil
    :demand t
    :bind (("<escape>" . keyboard-escape-quit))
    :init
    ;; allows for using cgn
    ;; (setq evil-search-module 'evil-search)
    (setq evil-want-keybinding nil)
    ;; no vim insert bindings
    (setq evil-undo-system 'undo-fu)
    :config
    (evil-mode 1))


(provide 'init-evil)
