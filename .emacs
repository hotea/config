(setq major-mode 'text-mode)
(global-unset-key "\e\e")
(global-unset-key "\C-x\C-u")
(setq suggest-key-bindings t)
(setq auto-save-interval 800)

(add-to-list 'load-path "~/.emacs.d")    ; This may not be appeared if you have already added.
;(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(require 'auto-complete-config)
(ac-config-default)

(setq-default shell-cd-regexp nil)
(setq explicit-shell-file-name "/bin/csh")
(add-hook 'comint-output-filter-functions 
	  'comint-watch-for-password-prompt)

(display-time)
(menu-bar-mode)
;(diary)

(setq nroff-mode-hook '(lambda () (setq page-delimiter "^\\.NH")))

(define-key ctl-x-map "g" 'goto-line)
;; (define-key global-map "\C-xg" 'goto-line)    ;;ditto
;; (global-set-key "\C-xg" 'goto-line)           ;;ditto

;; (global-set-key "\C-x?" 'help-command)
;; (global-set-key "\C-h" 'backward-delete-char-untabify) 
;; (define-key ctl-x-map "?" 'help-command)
;; (define-key global-map "\C-h" 'backward-delete-char-untabify)


(add-hook 'c-mode-hook '(lambda() (c-set-style "k&r")))
(add-hook 'c-mode-hook '(lambda() (c-toggle-auto-state)))
(linum-mode)