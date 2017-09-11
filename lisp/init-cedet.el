(require 'cedet)
(require 'semantic)
(require 'semantic/ia)
(require 'semantic/bovine/gcc)
;;(require 'semantic/analyze/refs)

;;(add-to-list 'semantic-default-submodes 'global-semantic-decoration-mode)
;;(add-to-list 'semantic-default-submodes 'global-semantic-idle-local-symbol-highlight-mode)
;;(add-to-list 'semantic-default-submodes 'global-semantic-idle-scheduler-mode)
;;(add-to-list 'semantic-default-submodes 'global-semantic-idle-completions-mode)

;;(semantic-mode 1)

(global-ede-mode 1)

;;
;;(global-semantic-highlight-edits-mode (if window-system 1 -1))
;;(global-semantic-show-unmatched-syntax-mode 1)
;;(global-semantic-show-parser-state-mode 1)
;;
;;(defadvice push-mark (around semantic-mru-bookmark activate)
;;  "Push a mark at LOCATION with NOMSG and ACTIVATE passed to `push-mark'.
;;If `semantic-mru-bookmark-mode' is active, also push a tag onto
;;the mru bookmark stack."
;;  (semantic-mrub-push semantic-mru-bookmark-ring
;;                      (point)
;;                      'mark)
;;  ad-do-it)
;;
;;(defun semantic-ia-fast-jump-back ()
;;  (interactive)
;;  (if (ring-empty-p (oref semantic-mru-bookmark-ring ring))
;;      (error "Semantic Bookmark ring is currently empty"))
;;  (let* ((ring (oref semantic-mru-bookmark-ring ring))
;;         (alist (semantic-mrub-ring-to-assoc-list ring))
;;         (first (cdr (car alist))))
;;    (if (semantic-equivalent-tag-p (oref first tag) (semantic-current-tag))
;;        (setq first (cdr (car (cdr alist)))))
;;    (semantic-mrub-switch-tags first)))
;;
;;(defun semantic-ia-fast-jump-or-back (&optional back)
;;  (interactive "P")
;;  (if back
;;      (semantic-ia-fast-jump-back)
;;    (semantic-ia-fast-jump (point))))
;;
;;(define-key semantic-mode-map [f12] 'semantic-ia-fast-jump-or-back)
;;(define-key semantic-mode-map [C-f12] 'semantic-ia-fast-jump-or-back)
;;(define-key semantic-mode-map [S-f12] 'semantic-ia-fast-jump-back)
;;
;;
;;(setq semanticdb-default-save-directory "~/.emacs.d/semanticdb")
;;
;;(setq semanticdb-project-roots (list (expand-file-name "/home/wangtao1-pd/360_work/CloudAir/trunk")))
;;(defconst cedet-user-include-dirs
;;  (list ".." "../include" "../inc" "../common" "../public"
;;		"../.." "../../include" "../../inc" "../../common"
;;		"../../public" "."))
;;
;;(require 'semantic-c nil 'noerror)
;;(let ((include-dirs cedet-user-include-dirs))
;;  (when (mapc (lambda (dir)
;;				(semantic-add-system-include dir 'c++-mode)
;;				(semantic-add-system-include dir 'c-mode))
;;			  include-dirs)))
;;
;;
;;(setq pulse-command-advice-flag (if window-system 1 nil))
;;(global-ede-mode t)
;;
;;
;;(defadvice goto-line (after pulse-advice activate)
;;  "Cause the line that is `goto'd to pulse when the cursor gets there."
;;  (when (and pulse-command-advice-flag (interactive-p))
;;    (pulse-momentary-highlight-one-line (point))))
;;(defadvice exchange-point-and-mark (after pulse-advice activate)
;;  "Cause the line that is `goto'd to pulse when the cursor gets there."
;;  (when (and pulse-command-advice-flag (interactive-p)
;;             (> (abs (- (point) (mark))) 400))
;;    (pulse-momentary-highlight-one-line (point))))
;;(defadvice find-tag (after pulse-advice activate)
;;  "After going to a tag, pulse the line the cursor lands on."
;;  (when (and pulse-command-advice-flag (interactive-p))
;;    (pulse-momentary-highlight-one-line (point))))
;;(defadvice tags-search (after pulse-advice activate)
;;  "After going to a hit, pulse the line the cursor lands on."
;;  (when (and pulse-command-advice-flag (interactive-p))
;;    (pulse-momentary-highlight-one-line (point))))
;;(defadvice tags-loop-continue (after pulse-advice activate)
;;  "After going to a hit, pulse the line the cursor lands on."
;;  (when (and pulse-command-advice-flag (interactive-p))
;;    (pulse-momentary-highlight-one-line (point))))
;;(defadvice pop-tag-mark (after pulse-advice activate)
;;  "After going to a hit, pulse the line the cursor lands on."
;;  (when (and pulse-command-advice-flag (interactive-p))
;;    (pulse-momentary-highlight-one-line (point))))
;;(defadvice imenu-default-goto-function (after pulse-advice activate)
;;  "After going to a tag, pulse the line the cursor lands on."
;;  (when pulse-command-advice-flag
;;    (pulse-momentary-highlight-one-line (point))))
;;
;;(defadvice cua-exchange-point-and-mark (after pulse-advice activate)
;;  "Cause the line that is `goto'd to pulse when the cursor gets there."
;;  (when (and pulse-command-advice-flag (interactive-p)
;;             (> (abs (- (point) (mark))) 400))
;;    (pulse-momentary-highlight-one-line (point))))
;;(defadvice switch-to-buffer (after pulse-advice activate)
;;  "After switch-to-buffer, pulse the line the cursor lands on."
;;  (when (and pulse-command-advice-flag (interactive-p))
;;    (pulse-momentary-highlight-one-line (point))))
;;(defadvice previous-buffer (after pulse-advice activate)
;;  "After previous-buffer, pulse the line the cursor lands on."
;;  (when (and pulse-command-advice-flag (interactive-p))
;;    (pulse-momentary-highlight-one-line (point))))
;;(defadvice next-buffer (after pulse-advice activate)
;;  "After next-buffer, pulse the line the cursor lands on."
;;  (when (and pulse-command-advice-flag (interactive-p))
;;    (pulse-momentary-highlight-one-line (point))))
;;(defadvice ido-switch-buffer (after pulse-advice activate)
;;  "After ido-switch-buffer, pulse the line the cursor lands on."
;;  (when (and pulse-command-advice-flag (interactive-p))
;;    (pulse-momentary-highlight-one-line (point))))
;;(defadvice beginning-of-buffer (after pulse-advice activate)
;;  "After beginning-of-buffer, pulse the line the cursor lands on."
;;  (when (and pulse-command-advice-flag (interactive-p))
;;    (pulse-momentary-highlight-one-line (point))))
;;
(setq eassist-header-switches
	  '(("h" . ("cpp" "cxx" "c++" "CC" "cc" "C" "c" "mm" "m"))
		("hh" . ("cc" "CC" "cpp" "cxx" "c++" "C"))
		("hpp" . ("cpp" "cxx" "c++" "cc" "CC" "C"))
		("hxx" . ("cxx" "cpp" "c++" "cc" "CC" "C"))
		("h++" . ("c++" "cpp" "cxx" "cc" "CC" "C"))
		("H" . ("C" "CC" "cc" "cpp" "cxx" "c++" "mm" "m"))
		("HH" . ("CC" "cc" "C" "cpp" "cxx" "c++"))
		("cpp" . ("hpp" "hxx" "h++" "HH" "hh" "H" "h"))
		("cxx" . ("hxx" "hpp" "h++" "HH" "hh" "H" "h"))
		("c++" . ("h++" "hpp" "hxx" "HH" "hh" "H" "h"))
		("CC" . ("HH" "hh" "hpp" "hxx" "h++" "H" "h"))
		("cc" . ("hh" "HH" "hpp" "hxx" "h++" "H" "h"))
		("C" . ("hpp" "hxx" "h++" "HH" "hh" "H" "h"))
		("c" . ("h"))
		("m" . ("h"))
		("mm" . ("h"))))

(provide 'init-cedet)

