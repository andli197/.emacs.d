
(use-package lsp-mode
  :config
  (use-package lsp-common)
  (use-package lsp-clangd
    :hook
    ((c-mode . lsp-clangd-c-enable)
     (c++-mode . lsp-clangd-c++-enable)
     (objc-mode . lsp-clangd-objc-enable)))
  (add-hook 'c++-mode-hook 'lsp-mode))

(provide 'init-language-cpp)
