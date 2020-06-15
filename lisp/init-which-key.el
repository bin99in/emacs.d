;;; init-which-key.el --- Set up which-key -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package which-key
  :config
  (setq which-key-show-early-on-C-h t)
  (setq which-key-idle-delay 1)
  (setq which-key-idle-secondary-delay 0.05)
  (setq which-key-popup-type 'side-window)
  (setq which-key-side-window-location 'bottom)
  (setq which-key-side-window-max-height 0.25)
  (which-key-mode))

(provide 'init-which-key)
;;; init-which-key.el ends here
