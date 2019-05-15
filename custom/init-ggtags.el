
(use-package ggtags
  :commands ggtags-mode
  :diminish ggtags-mode
  :bind (("M-*" . pop-tag-mark)
         ("C-c t s" . ggtags-find-other-symbol)
         ("C-c t h" . ggtags-view-tag-history)
         ("C-c t r" . ggtags-find-reference)
         ("C-c t f" . ggtags-find-file)
         ("C-c t c" . ggtags-create-tags))
  :init
  (add-hook 'c-mode-common-hook
            #'(lambda ()
                (when (derived-mode-p 'c-mode 'c++-mode 'java-mode)
                  (ggtags-mode 1)))))

(provide 'init-ggtags)
