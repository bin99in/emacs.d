;;; init-vue.el --- Set up vue-mode -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package vue-mode
  :mode "\\.vue\\'"
  :config
  (setq mmm-submode-decoration-level 0))

(provide 'init-vue)
;;; init-vue.el ends here
