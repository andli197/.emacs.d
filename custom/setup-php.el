(use-package flymake-php
  :config
  (add-hook 'php-mode-hook 'flymake-php-load)
  (setq flymake-run-in-place t)
  (setq flymake-no-changes-timout 10)
  (setq flymake-start-syntax-check-on-newline nil))
(provide 'setup-php)
