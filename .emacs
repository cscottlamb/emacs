(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(custom-enabled-themes '(manoj-dark))
 '(global-display-line-numbers-mode t)
 '(indicate-buffer-boundaries 'left)
 '(indicate-empty-lines t)
 '(save-place-mode t)
 '(show-paren-mode t)
 '(tab-bar-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(add-to-list 'load-path (expand-file-name "~/.emacs.d/loadOnBoot"))
(if (and (eq system-type 'windows-nt)
	 (require 'cygwin-mount nil t))
    (progn
      (setenv "PATH" (concat "c:/cygwin64/bin;" (getenv "PATH")))
      (setq exec-path (cons "c:/cygwin64/bin/" exec-path))
      (require 'setup-cygwin)))

(global-set-key (kbd "C-x C-g") 'rgrep)
(setq default-directory "c:/dev")
(desktop-save-mode 1)
(global-set-key [C-tab] 'next-buffer)
(global-set-key [C-S-tab] 'previous-buffer)
