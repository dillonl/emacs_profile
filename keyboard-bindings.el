(defvar dillon-keys-minor-mode-map (make-keymap) "dillon-keys-minor-mode keymap.")

(define-key dillon-keys-minor-mode-map (kbd "M-/") 'toggle-comment-on-line)

;(define-key global-map (kbd "C-c C-SPC") 'ace-jump-mode)
(define-key global-map (kbd "C-j") 'avy-goto-char)
(define-key dillon-keys-minor-mode-map (kbd "C-o") 'other-window)
(define-key dillon-keys-minor-mode-map (kbd "C-M-o") 'prev-window)

(define-key dillon-keys-minor-mode-map (kbd "C-c C-h") 'ff-find-other-file)
(define-key dillon-keys-minor-mode-map (kbd "C-c C-u") 'uncomment-region)

(define-key dillon-keys-minor-mode-map (kbd "C-c o") 'occur)
(define-key dillon-keys-minor-mode-map (kbd "C-c C-w") 'copy-word)
(define-key dillon-keys-minor-mode-map (kbd "C-c C-l") 'copy-line)
(define-key dillon-keys-minor-mode-map (kbd "C-h") 'delete-backward-char)
(define-key dillon-keys-minor-mode-map (kbd "M-h") 'backward-kill-word)
(define-key dillon-keys-minor-mode-map (kbd "M-k") 'backward-kill-line)
;(define-key dillon-keys-minor-mode-map (kbd "M-p") 'scroll-down-line) ; Conflicts with shell
;(define-key dillon-keys-minor-mode-map (kbd "M-n") 'scroll-up-line) ; Conflicts with shell

(define-minor-mode dillon-keys-minor-mode
    "A minor mode so that dillon key settings override annoying major modes."
	  t " dillon-keys" 'dillon-keys-minor-mode-map)

(dillon-keys-minor-mode 1)

(defun dillon-minibuffer-setup-hook ()
    (dillon-keys-minor-mode 0))

(add-hook 'minibuffer-setup-hook 'dillon-minibuffer-setup-hook)
