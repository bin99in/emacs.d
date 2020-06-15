;;; init-better-default.el --- Set up better-default -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(unless (eq window-system 'ns)
    (menu-bar-mode -1))
  (when (fboundp 'tool-bar-mode)
    (tool-bar-mode -1))
  (when (fboundp 'scroll-bar-mode)
    (scroll-bar-mode -1))
  (when (fboundp 'horizontal-scroll-bar-mode)
    (horizontal-scroll-bar-mode -1))

(require 'uniquify)
  (setq uniquify-buffer-name-style 'forward)

(save-place-mode 1)
(show-paren-mode 1)
(electric-pair-mode 1)
(setq-default indent-tabs-mode nil)
(setq save-interprogram-paste-before-kill t
      mouse-yank-at-point t
      require-final-newline t)

(unless backup-directory-alist
    (setq backup-directory-alist `(("." . ,(concat user-emacs-directory
                                                   "backups")))))

(global-set-key (kbd "C-x C-b") 'ibuffer)

(provide 'init-better-default)
;;; init-better-default.el ends here
