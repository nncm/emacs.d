(load-theme 'monokai t)

(if (display-graphic-p)
    (progn
      (tool-bar-mode -1)
      (scroll-bar-mode -1)))

(setq inhibit-linum-mode-alist
      '(
        eshell-mode
        shell-mode
        term-mode
        ))

(defadvice linum-on (around inhibit-for-modes activate)
  "Stop turing linum-mode if it is in the inhibit-linum-mode-alist."
  (unless (member major-mode inhibit-linum-mode-alist)
    ad-do-it))

(global-linum-mode t)

(setq initial-frame-alist (quote ((fullscreen . maximized))))

(setq inhibit-splash-screen t)

(setq gnus-inhibit-startup-message t)

(setq-default cursor-type 'bar)

(electric-indent-mode t)

(column-number-mode t)

(global-hl-line-mode t)

(setq x-underline-at-descent-line t)

(display-time-mode t)  
(setq display-time-24hr-format t)   
(setq display-time-day-and-date t)

(fset 'yes-or-no-p 'y-or-n-p)

(setq uniquify-buffer-name-style 'forward)

(set-default-font "Courier New-18")

(which-function-mode 1)

(setq minor-mode-alist nil)

(setq user-full-name "nncm")
(setq user-mail-address "niuniuchumen@gmail.com")

(setq ring-bell-function 'ignore)

(setq kill-ring-max 200)

(global-font-lock-mode t)

(transient-mark-mode t)

(setq make-backup-files t)
(setq backup-by-copying t)
(setq kept-old-versions 2)
(setq kept-new-versions 2)
(setq delete-old-versions t)

(setq autosave-dir "~/.emacs.d/autosaves/")
(setq backup-dir "~/.emacs.d/backups/")
(if (not (file-exists-p autosave-dir))  (make-directory autosave-dir))
(if (not (file-exists-p backup-dir))  (make-directory backup-dir))
(setq auto-save-file-name-transforms `((".*" ,autosave-dir t)))
(setq backup-directory-alist `((".*" . ,backup-dir)))
(setq auto-save-list-file-prefix autosave-dir)

(setq backup-directory-alist '(("" . "~/.emacs.d/emacsbackup")))

(setq visible-bell nil)

(setq mac-option-modifier 'super)
(setq mac-command-modifier 'meta)

(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)
(setq c-basic-offset 2)
(setq c-default-style "linux")


(add-to-list 'auto-mode-alist '("\\.cc\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-f") 'find-function-on-key)

(setq compilation-scroll-output t)

(setq auto-revert-check-vc-info t)
(setq auto-revert-interval 10)

(provide 'init-base)

