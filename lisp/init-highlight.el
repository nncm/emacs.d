(require 'auto-highlight-symbol)

(global-auto-highlight-symbol-mode t)

(auto-highlight-symbol-mode t)

(global-set-key [(control f3)] 'highlight-symbol)
(global-set-key [f3] 'highlight-symbol-next)
;;(global-set-key [(shift f3)] 'highlight-symbol-prev)
(global-set-key [f2] 'highlight-symbol-prev)
;;
;;(global-set-key [(meta f3)] 'highlight-symbol-query-replace)

;;(add-hook 'after-init-hook 'highlight-symbol-mode)

;;(highlight-symbol-mode 1)

(provide 'init-highlight)

