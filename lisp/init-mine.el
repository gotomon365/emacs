(defun word-def-lookup()
  "Lookup the word under cursor in a browser."
  (interactive)
  (browse-url
   (concat "https://www.google.com/search?client=firefox-b-lm&q=" (thing-at-point 'symbol))))


(global-set-key (kbd "C-c f") 'word-def-lookup)

(provide 'init-mine)

