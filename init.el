(package-initialize)

(set-language-environment "Latin-1")

(setq auto-compile-on-load-mode 1)

(let ((default-directory "~/.emacs.d/"))
  (normal-top-level-add-subdirs-to-load-path))

(setq inhibit-startup-message t)
(setq linum-format "%4d \u2502 ")
(setq column-number-mode 1)
(desktop-save-mode 1)
(global-linum-mode t)

(fset 'yes-or-no-p 'y-or-n-p)

(require 'pkg-bootstrap)

(use-package better-defaults)

(use-package cyberpunk-theme
             :config
             (load-theme 'cyberpunk t))

(use-package yasnippet
             :config
             (yas-global-mode 1))

(use-package development
  :ensure f
  :load-path "development/")

(use-package buffer
  :ensure f
  :load-path "custom/")

(use-package bindings
  :ensure f
  :load-path "custom/")

(use-package inf-php)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)
