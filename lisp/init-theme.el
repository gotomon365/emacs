;;(load-theme 'wombat t)
;;(custom-theme-set-faces
;;    'wombat
;;    '(cursor ((t (:background "#abb2bf")))))
;;
;;(enable-theme 'wombat)

(set-face-attribute 'default nil :height 100)
;; Default dark theme
(set-background-color "white")
(set-foreground-color "black")

;; initial window settings
(setq initial-frame-alist
      '((background-color . "honeydew")))

;; subsequent window settings
(setq default-frame-alist
      '((background-color . "honeydew")))


(provide 'init-theme)
