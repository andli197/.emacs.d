
(use-package company
  :config
  (global-company-mode)
  (global-set-key (kbd "C-<tab>") 'company-complete))

(provide 'init-company)
