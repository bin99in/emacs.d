;;; init-evil.el --- Set up evil-mode  -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package evil
  :config
  (add-to-list 'evil-buffer-regexps '("*GNU Emacs*" . emacs))
  (add-to-list 'evil-buffer-regexps '("*info*" . emacs))
  (add-to-list 'evil-buffer-regexps '("*xref*" . emacs))
  (evil-set-initial-state 'dired-mode 'emacs)
  (evil-set-initial-state 'ibuffer-mode 'emacs)
  (setq evil-want-integration nil)
  (setq evil-want-C-u-delete t)
  (setq evil-disable-insert-state-bindings t)
  (setq evil-disable-insert-state-bindings t)
  (evil-mode 1))

;; # and * search selection if visual mode actived
(use-package evil-visualstar
  :after evil
  :config
  (setq evil-visualstar/persistent t)
  (global-evil-visualstar-mode))

;; SPC follow a motion
(use-package evil-easymotion
  :after evil
  :config
  (evilem-default-keybindings "SPC"))

;; highlight t f operator
(use-package evil-snipe
  :after evil
  :config
  (evil-snipe-override-mode 1))
 
;; zf zd zj zk
(use-package evil-vimish-fold
  :after evil
  :hook ((prog-mode) . evil-vimish-fold-mode))

;; cx
;; cxc cancel; cxx exchange whole line
;; X mapped if visual mode actived
(use-package evil-exchange
  :after evil
  :config
  (evil-exchange-cx-install))

;; gl gL
(use-package evil-lion
  :after evil
  :config
  (evil-lion-mode))

;; ys ds cs
(use-package evil-surround
  :after evil
  :config
  (global-evil-surround-mode 1))

;; enhancing evil-surround
(use-package evil-embrace
  :after evil-surround
  :config
  (setq evil-embrace-show-help-p nil)
  (setq-default evil-embrace-evil-surround-keys '(?\( ?\[ ?\{ ?\) ?\] ?\} ?\" ?\' ?< ?> ?b ?B ?t))
  (evil-embrace-enable-evil-surround-integration))

;; gc gy
(use-package evil-commentary
  :after evil
  :config
  (evil-commentary-mode))

;; textobj argument map in a
(use-package evil-args
  :after evil
  :bind
  ;; bind evil-args text objects
  (:map evil-inner-text-objects-map
        ("a" . evil-inner-arg))
  (:map evil-outer-text-objects-map
        ("a" . evil-outer-arg))

  ;; bind evil-forward/backward-args
  (:map evil-normal-state-map
        ("L" . evil-forward-arg)
        ("H" . evil-backward-arg))
  (:map evil-motion-state-map
        ("L" . evil-forward-arg)
        ("H" . evil-backward-arg))

  ;; bind evil-jump-out-args
  (:map evil-normal-state-map
        ("K" . evil-jump-out-args)))

;; textobj indent mapped in i/I/J
(use-package evil-indent-plus
  :bind
  (:map evil-inner-text-objects-map
        ("i" . evil-indent-plus-i-indent)
        ("I" . evil-indent-plus-i-indent-up)
        ("J" . evil-indent-plus-i-indent-up-down))
  (:map evil-outer-text-objects-map
        ("i" . evil-indent-plus-a-indent)
        ("I" . evil-indent-plus-a-indent-up)
        ("J" . evil-indent-plus-a-indent-up-down)))
  
;; textobj html/xml tag attributes mapped in x
(use-package exato
  :after evil)

(provide 'init-evil)
;;; init-evil.el ends here
