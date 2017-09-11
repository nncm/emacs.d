(require 'session)
(add-hook 'after-init-hook 'session-initialize)

(require 'desktop) 
(desktop-load-default) 
(desktop-read)

(require 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)

(provide 'init-session)

