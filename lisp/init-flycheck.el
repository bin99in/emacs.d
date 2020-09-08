;;; init-flycheck.el --- Set up flycheck-mode -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package flycheck
  :hook (after-init . global-flycheck-mode))

(provide 'init-flycheck)
;;; init-flycheck.el ends here
