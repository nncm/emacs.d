(require 'org)

(setq org-startup-indented t)
(setq org-src-fnotify-natively t)
(setq org-agenda-files '("~/org"))

(global-set-key (kbd "C-c a") 'org-agenda)

(provide 'init-org)

