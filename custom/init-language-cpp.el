
(use-package lsp-mode
  :commands lsp
  :hook ((c-mode c++-mode objc-mode) . lsp)
  :config
  (require 'lsp-clients))

;; (use-package lsp-mode
;;   :config
;;   (use-package lsp-clangd
;;     :hook
;;     ((c-mode . lsp-clangd-c-enable)
;;      (c++-mode . lsp-clangd-c++-enable)
;;      (objc-mode . lsp-clangd-objc-enable)))
;;   (add-hook 'c++-mode-hook 'lsp-mode))

(provide 'init-language-cpp)
