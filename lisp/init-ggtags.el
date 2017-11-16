(require 'ggtags)
(add-hook 'c-mode-hook 'ggtags-mode)
(add-hook 'c++-mode-hook 'ggtags-mode)

(provide 'init-ggtags)

