;;; init-company.el --- Set up company -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package company
  :hook (after-init . global-company-mode)
  :bind ((("TAB" . company-manual-begin)
          :map company-active-map
          ("TAB" . company-complete-selection)
          ([tab]. company-complete-selection)
          ("RET" . nil)
          ([return]. nil)))
  :init
  (setq company-minimum-prefix-length 2)
  (setq company-idle-delay 0.3)
  (setq company-show-numbers t))

(use-package company-box
  :hook (company-mode . company-box-mode))

(provide 'init-company)
;;; init-company.el ends here
