
(defun andli/time-subtract-millis (b a)
  (* 1000.0 (float-time (time-subtract b a))))

(defun andli/show-init-time ()
  (message "init completed in %.2fms"
           (andli/time-subtract-millis after-init-time before-init-time)))

(add-hook 'after-init-hook 'andli/show-init-time)

(provide 'init-benchmarking)
