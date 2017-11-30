(require 'ggtags)
(add-hook 'c-mode-hook 'ggtags-mode)
(add-hook 'c++-mode-hook 'ggtags-mode)

(defun ggtags-key-map()
	 (local-set-key (kbd "C-c d") 'ggtags-find-tag-dwim)
	 (local-set-key (kbd "C-c p") 'ggtags-prev-mark)
	 (local-set-key (kbd "C-c n") 'ggtags-next-mark)
	 (local-set-key (kbd "C-c r") 'ggtags-find-reference))

(add-hook 'ggtags-mode-hook 'ggtags-key-map)

(provide 'init-ggtags)

