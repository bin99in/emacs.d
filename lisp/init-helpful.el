;;; init-helpful.el --- Set up helpful -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package helpful
  :after counsel
  :bind ("C-h k" . helpful-key)
  :config
  (setq counsel-describe-function-function #'helpful-callable)
  (setq counsel-describe-variable-function #'helpful-variable))

(provide 'init-helpful)
;;; init-helpful.el ends here
