
(global-set-key (kbd "RET") 'newline-and-indent)
(global-linum-mode)
(use-package browse-kill-ring)
(delete-selection-mode 1)
(add-hook 'after-init-hook 'show-paren-mode)

(use-package move-dup
  :config
  (global-set-key [M-up] 'md-move-lines-up)
  (global-set-key [M-down] 'md-move-lines-down)
  (global-set-key (kbd "C-c d d") 'md-duplicate-down)
  (global-set-key (kbd "C-c d u") 'md-duplicate-up))


(provide 'init-general)
