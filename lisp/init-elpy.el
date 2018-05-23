(require 'company-jedi)

(elpy-enable)

(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

(defun my/python-mode-hook ()
  (add-to-list 'company-backends 'company-jedi)
  (setq jedi:complete-on-dot t)
  (jedi:setup)
  )

(add-hook 'python-mode-hook 'my/python-mode-hook)

(provide 'init-elpy)

