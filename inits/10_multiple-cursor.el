(require 'multiple-cursors)
(global-set-key (kbd "C-*") 'mc/mark-all-like-this)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-M->") 'mc/unmark-next-like-this)
(global-set-key (kbd "C-M-<") 'mc/unmark-previous-like-this)
(global-set-key (kbd "C-)") 'mc/skip-to-next-like-this)
(global-set-key (kbd "C-(") 'mc/skip-to-previous-like-this)
