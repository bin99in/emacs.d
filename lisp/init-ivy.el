;;; init-ivy.el --- Set up ivy -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package ivy
  :init
  (setq enable-recursive-minibuffers t)
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "(%d/%d) ")
  )

(use-package counsel
  :config
  (counsel-mode 1))

(provide 'init-ivy)
;;; init-ivy.el ends here
