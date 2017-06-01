

(add-hook 'before-save-hook 'delete-trailing-whitespace)
(use-package flycheck)

(use-package fill-column-indicator
  :config
  (add-hook 'after-change-major-mode-hook 'fci-mode)
  (setq fci-rule-width 1)
  (setq fci-rule-color "blue"))

(use-package _python
  :ensure f)

(use-package _json
  :ensure f)

(use-package _php
  :ensure f)

(provide 'development)
