
(use-package yasnippet
  :ensure t
  :config
  (validate-setq
   yas-verbosity 1
   yas-wrap-around-region t)

  (with-eval-after-load 'yasnippet
    (validate-setq yas-snippet-dirs '(yasnippet-snippets-dir)))

  (yas-reload-all)
  (yas-global-mode))

(use-package yasnippet-snippets
  :ensure t)

(provide 'init-yassnippet)
