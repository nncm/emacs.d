(require 'yasnippet)

(yas-global-mode 1)

(define-key yas-minor-mode-map (kbd "<tab>") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)

(define-key yas-minor-mode-map (kbd "<f3>") 'yas-expand)

(provide 'init-yas)
