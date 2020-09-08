;;; init-better-default.el --- Set up better-default -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(horizontal-scroll-bar-mode -1)

(save-place-mode 1)
(show-paren-mode 1)
(electric-pair-mode 1)
(column-number-mode 1)

(unless backup-directory-alist
    (setq backup-directory-alist `(("." . ,(concat user-emacs-directory
                                                   "backups")))))
(require 'uniquify)
  (setq uniquify-buffer-name-style 'forward)

(setq-default indent-tabs-mode nil)
(setq inhibit-splash-screen t)
(setq save-interprogram-paste-before-kill t)
(setq mouse-yank-at-point t)
(setq require-final-newline t)

(fset 'yes-or-no-p 'y-or-n-p)

(global-set-key (kbd "C-x C-b") 'ibuffer)

;; set initial frame
(modify-frame-parameters
 nil '((user-position . t)
       (left . (- 20))
       (top . 0.5)
       (width . 0.8)
       (height . 0.9)))

(provide 'init-better-default)
;;; init-better-default.el ends here
