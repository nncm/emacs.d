(require 'company-jedi)

(elpy-enable)

(defun my/python-mode-hook ()
  (add-to-list 'company-backends 'company-jedi)
  (setq jedi:complete-on-dot t)
  (jedi:setup)
  (jedi:use-shortcuts 1)
  )

(add-hook 'python-mode-hook 'my/python-mode-hook)

(provide 'init-elpy)

