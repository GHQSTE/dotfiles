;; -*- lexical-binding: t; -*-

;; <leaf-install-code>
(eval-and-compile
  (customize-set-variable
   'package-archives
   '(("melpa" . "https://melpa.org/packages/")
     ("gnu" . "https://elpa.gnu.org/packages/")
     ("nongnu" . "https://elpa.nongnu.org/nongnu/")))
  (package-initialize)
  (unless (package-installed-p 'leaf)
    (package-refresh-contents)
    (package-install 'leaf))

  (leaf leaf-keywords
    :ensure t
    :init
    ;; optional packages if you want to use :hydra, :el-get, :blackout,,,
    (leaf hydra :ensure t)
    (leaf el-get :ensure t)
    (leaf blackout :ensure t)

    :config
    ;; initialize leaf-keywords.el
    (leaf-keywords-init)))
;; </leaf-install-code>

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
