(require 'window-numbering)
(window-numbering-mode t)
(setq window-numbering-assign-func
      (lambda () (when (equal (buffer-name) "*Calculator*") 9)))

(provide 'init-wnum)

