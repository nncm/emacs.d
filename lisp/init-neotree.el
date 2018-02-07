(require 'neotree)

(global-set-key (kbd "C-,") #'neotree-toggle)

(defun neotree-ffip-project-dir ()
  "Open NeoTree using the git root."
  (interactive)
  (let ((project-dir (ffip-project-root))
        (file-name (buffer-file-name)))
    (if project-dir
        (progn
          (neotree-dir project-dir)
          (neotree-find file-name))
      (message "Could not find git project root."))))

(global-set-key  (kbd "C-c C-p") 'neotree-ffip-project-dir)

;;(when neo-persist-show
;;  (add-hook 'popwin:before-popup-hook
;;            (lambda () (setq neo-persist-show nil)))
;;  (add-hook 'popwin:after-popup-hook
;;            (lambda () (setq neo-persist-show t))))


(provide 'init-neotree)
