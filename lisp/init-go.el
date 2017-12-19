(require 'go-mode)

(require 'go-autocomplete)

(add-hook 'before-save-hook 'gofmt-before-save)

(add-hook 'go-mode-hook '(lambda ()
						   (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)))

(add-hook 'go-mode-hook '(lambda ()
						   (local-set-key (kbd "C-c C-g") 'go-goto-imports)))

(when (memq window-system '(mac ns))
  (exec-path-from-shell-copy-env "GOPATH"))


(add-hook 'go-mode-hook #'(lambda() (setq ac-sources '(ac-source-go ac-source-abbrev ac-source-dictionary ac-source-words-in-all-buffer))))

(provide 'init-go)

