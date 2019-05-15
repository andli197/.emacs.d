(require 'package)
(add-to-list 'package-archives
         '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)

(when (not package-archive-contents)
    (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(add-to-list 'load-path (expand-file-name "custom" user-emacs-directory))

(require 'init-company)
(require 'init-magit)
(require 'init-theme)
(require 'init-better-defaults)
(require 'init-smex)
(require 'init-general)
;;(require 'init-benchmarking)
(require 'init-projectile)
;; org-mode and projectile

(require 'init-language-cpp)
;; lsp-mode!!!!
