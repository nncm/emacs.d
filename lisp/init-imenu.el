(require 'imenu+)

(require 'imenu-list)

(global-set-key (kbd "C-'") #'imenu-list-smart-toggle)
(global-set-key (kbd "C-.") #'imenu-list-smart-toggle)

(setq imenu-list-focus-after-activation t)

(setq imenu-list-auto-resize t)


;;(require 'imenu-anywhere)

;;(global-set-key (kbd "C-.") #'imenu-anywhere)

(provide 'init-imenu)
