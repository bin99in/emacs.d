;;; init-lsp.el --- Set up lsp-mode -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package lsp-mode
  :hook (js2-mode . lsp)
  :init
  (setq lsp-keymap-prefix "C-c l")
  (setq gc-cons-threshold 100000000)
  (setq read-process-output-max (* 1024 1024)) ;; 1mb
  (setq lsp-prefer-capf t)
  (setq lsp-idle-delay 0.500)
 )

(use-package lsp-ivy :commands lsp-ivy-workspace-symbol)

(use-package lsp-ui
  :commands lsp-ui-mode
  :init
  (setq lsp-ui-doc-position 'top)
  (setq lsp-ui-doc-delay 1)

  (setq lsp-ui-sideline-show-hover nil)
  (setq lsp-ui-sideline-delay 0.2)
  :config
  (define-key lsp-ui-mode-map
    [remap xref-find-definitions] #'lsp-ui-peek-find-definitions)
  (define-key lsp-ui-mode-map
    [remap xref-find-references] #'lsp-ui-peek-find-references))

(provide 'init-lsp)
;;; init-lsp.el ends here
