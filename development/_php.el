
(use-package php-mode
  :config
  (use-package cl
    :ensure f)
  (use-package ac-php
    :load-path "~/.emacs.d/ext-src/ac-php"
    :ensure f
    :config
    (add-hook 'php-mode-hook
              '(lambda ()
                 (auto-complete-mode t)
                 (setq ac-sources '(ac-source-php))
                 (yas-global-mode 1)
                 (define-key php-mode-map (kbd "C-]") 'ac-php-find-symbol-at-point)
                 (define-key php-mode-map (kbd "C-t") 'ac-php-location-stack-back)
                 )))

  (use-package company-mode
    :ensure f
    :config
    (add-hook 'php-mode-hook
              '(lambda ()
                 (require 'company-php)
                 (company-mode t)
                 (add-to-list 'company-backends 'company-ac-php-backend))))
  )

(provide '_php)
