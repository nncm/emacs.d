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

(set-default-font "Courier New-17")

(setq user-full-name "Walter")
(setq user-mail-address "niuniuchumen@gmail.com")

(setq ring-bell-function 'ignore)

(setq kill-ring-max 200)

(global-font-lock-mode t)

(transient-mark-mode t)

(setq make-backup-files t)
(setq kept-old-versions 2)
(setq kept-new-versions 2)
(setq delete-old-versions t)
(setq backup-directory-alist '(("" . "~/.emacs.d/emacsbackup")))


(setq visible-bell nil)

(setq mac-option-modifier 'super)
(setq mac-command-modifier 'meta)
(setq default-tab-width 4)
(setq c-basic-offset 4)

(add-to-list 'auto-mode-alist '("\\.cc\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-f") 'find-function-on-key)

(setq compilation-scroll-output t)

(setq mac-command-modifier 'meta)

(provide 'init-base)

