;;; init-javascript.el --- Set up javascript -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package js2-mode
  :mode ("\\.js\\'" . js2-mode)
  :bind ((:map js2-mode-map
               ("RET" . js2-line-break)))
  :init
  ;; turn off all warnings in js2-mode
  (setq js2-mode-show-parse-errors nil
        js2-mode-show-strict-warnings nil
        js2-strict-missing-semi-warning nil
        js2-strict-trailing-comma-warning nil)
  ;; indent
  (setq-default js-indent-level 2
                js2-bounce-indent-p nil))

(provide 'init-javascript)
;;; init-javascript.el ends here
