(require 'cl) 

(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
  ;;  (add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
  )

(defvar dobbin/packages '(
						  session
						  company
						  company-c-headers
						  auto-complete
						  go-autocomplete
						  ;;solarized-theme
						  monokai-theme
						  ;;hungry-delete
						  helm
						  ggtags
						  ;;color-theme smex ivy counsel swiper
						  flycheck
						  undo-tree
						  redo+
						  find-file-in-project
						  w3m
						  web-mode
						  protobuf-mode
						  dsvn
						  magit
						  yasnippet
						  exec-path-from-shell
						  smartparens
						  window-numbering
						  xcscope
						  popwin
						  ein
						  ecb
						  go-mode
						  company-go
						  company-jedi
						  elpy
						  highlight-symbol
						  auto-highlight-symbol
						  ace-jump-mode
						  imenu-list
						  imenu-anywhere
						  imenu+
                          google-c-style
						  ;;irony
						  ;;company-irony-c-headers
						  ;;company-irony
						  ) "Default packages"
							)

(defun dobbin/packages-installed-p()
  (loop for pkg in dobbin/packages
		when (not (package-installed-p pkg)) do (return nil)
		finally (return t)
		))

(unless (dobbin/packages-installed-p)
  (message "%s" "Refeshing package database...")
  (package-refresh-contents)
  (dolist (pkg dobbin/packages)
    (when (not (package-installed-p pkg)))
    (package-install pkg)
    ))

(provide 'init-packages)

