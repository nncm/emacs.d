(require 'dired-x)
(setq dired-recursive-copies 'always)
(setq dired-recursive-deletes 'always)
(setq dired-recursive-deletes t)
(setq dired-recursive-copies t)
(setq dired-dwim-target t)
(put 'dired-find-alternate-file 'disable nil)
(global-set-key "\C-x\C-j" 'dired-jump)
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

(provide 'init-dired)

