;; install eglot
(require 'eglot)
(add-to-list 'eglot-server-programs '((c++-mode c-mode) "clangd"))
(add-hook 'c-mode-hook #'eglot-ensure)
(add-hook 'c++-mode-hook #'eglot-ensure)


;; install quickrun
(use-package quickrun
  :ensure t
  :commands (quickrun)
  :init
  (quickrun-add-command "c++/c1z"
    '((:command . "g++")
      (:exec . ("%c -std=c++1z %o -o %e %s"
		"%e %a"))
      (:remove . ("%e")))
    :default "c++"))
;; set quickrun key
(global-set-key (kbd "<f5>") 'quickrun)
(provide 'init-cpp)
