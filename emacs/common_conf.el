;; protect from accidental exit
(global-set-key "\C-x\C-c" 
                '(lambda () (interactive)
                   (if (y-or-n-p "Really kill emacs? : ")
                       (save-buffers-kill-emacs))))

;; set a beautiful title bar ( from http://wolfram.org/eric/emacs.html)
(setq frame-title-format
      '("%S: " (buffer-file-name "%f"
                                 (dired-directory dired-directory "%b"))))

;; enable region highlighting
(transient-mark-mode)

;; buffer-stack.el bindings
(global-set-key "\C-\\" 'buffer-stack-down)
(global-set-key (kbd "C-'") 'buffer-stack-up)

;; don't need safety guards
(put 'scroll-left 'disabled nil)
(put 'upcase-region 'disabled nil)