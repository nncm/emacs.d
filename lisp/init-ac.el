(require 'auto-complete-config)

(ac-config-default)

(setq ac-ignore-case nil)

(setq ac-use-menu-map t)
(define-key ac-menu-map "\C-n" 'ac-next)
(define-key ac-menu-map "\C-p" 'ac-previous)

(setq ac-auto-start nil)
(setq ac-delay 0.5)
(ac-set-trigger-key "TAB")

(provide 'init-ac)
