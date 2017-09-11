(require 'redo+)

(define-key global-map (kbd "C-/") 'undo)
(define-key global-map (kbd "C-x C-_") 'redo)

(provide 'init-redo)
