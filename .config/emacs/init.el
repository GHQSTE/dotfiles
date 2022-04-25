;; -*- lexical-binding: t; -*-

;; use-package ----
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
;; use-package ----

(use-package try
  :ensure t)

;; This is the actual config file.
;; It is omitted if it doesn't exist so emacs won't refuse to launch.
(when (file-readable-p "~/.config/emacs/config.org")
  (org-babel-load-file (expand-file-name "~/.config/emacs/config.org")))

;; Visit config.org
(defun config-visit ()
  (interactive)
  (find-file "~/.config/emacs/config.org"))
(global-set-key (kbd "C-c e") 'config-visit)

;; Reload config.org
(defun config-reload ()
  "Reloads ~/.config/emacs/config.org at runtime"
  (interactive)
  (org-babel-load-file (expand-file-name "~/.config/emacs/config.org")))
(global-set-key (kbd "C-c r") 'config-reload)

;; init.el ends here.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(magit popup-kill-ring switch-window avy marginalia orderless vertico goggles undo-tree rainbow-delimiters rainbow-mode doom-themes doom-modeline all-the-icons try use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
