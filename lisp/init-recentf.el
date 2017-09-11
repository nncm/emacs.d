(require 'recentf)

(recentf-mode t)
(setq recentf-max-menu-items 25)
(setq recentf-max-saved-items 25)

(global-set-key "\C-c\ \C-r" 'recentf-open-files)

(provide 'init-recentf)
