;;; init-ivy.el --- Set up ivy -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package amx
  :config
  (amx-mode))

(use-package flx)

(use-package ivy
  :init
  (setq enable-recursive-minibuffers t)
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "(%d/%d) ")
  ;; (setq ivy-re-builders-alist
  ;;     '((t . ivy--regex-fuzzy)))
  :config
  (ivy-mode 1))

(use-package ivy-hydra)

(use-package ivy-rich
  :config
  (setcdr (assq t ivy-format-functions-alist) #'ivy-format-function-line)
  (ivy-rich-mode 1))

(use-package all-the-icons-ivy-rich
  :config
  (all-the-icons-ivy-rich-mode 1))

(use-package counsel
  :bind (("C-x b" . ivy-switch-buffer)
         ("C-x C-f" . counsel-find-file)
         ("M-x" . counsel-M-x)
         ("M-y" . counsel-yank-pop)
         ("C-c C-r" . ivy-resume)
         ("C-c v" . ivy-push-view)
         ("C-c V" . ivy-pop-view))
  :config
  (setcdr (assoc 'counsel-M-x ivy-initial-inputs-alist) "")
  (counsel-mode 1))

(use-package counsel-projectile
  :bind-keymap ("C-c p" . projectile-command-map)
  :config
  (counsel-projectile-mode))

(provide 'init-ivy)
;;; init-ivy.el ends here
