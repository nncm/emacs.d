(require 'company)
(global-company-mode t)

(setq company-global-modes '(not eshell-mode go-mode))

(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous))

(eval-after-load 'company
  '(add-to-list 'company-backends '(company-simple-backend company-c-headers company-keywords company-files company-dabbrev-code)))

;;(eval-after-load 'company
;;  '(add-to-list 'company-backends '(company-c-headers company-keywords company-dabbrev-code company-dabbrev company-files company-gtags)))


(defun ede-object-system-include-path ()
  (when ede-object
	(ede-system-include-path ede-object)))

(setq company-c-headers-path-system 'ede-object-system-include-path)

(provide 'init-company)

