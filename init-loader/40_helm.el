;;; -*- mode: lisp-interaction; coding: utf-8-unix; indent-tabs-mode: nil; -*-
;;;
;;; File: ~/.emacs.d/conf/70_helm.el
;;; Description: Setup helm
;;;

;;;=============================================================================
;;; helm --- Emacs incremental and narrowing framework
;;;=============================================================================
(el-get-bundle helm)

(use-package helm-config
  :config
  (setq helm-idle-delay 0.1)
  (setq helm-input-idle-delay 0)
  (setq helm-candidate-number-limit 300)
  (setq helm-samewindow nil)
  (setq helm-quick-update t)
  ;; Change face for dark color theme
  ;; (set-face-background 'helm-selection "blue")
  ;; Keybindings
  (defun helm-my-buffers ()
    (interactive)
    (helm-other-buffer '(helm-source-buffers-list
                         helm-source-files-in-current-dir
                         helm-source-recentf
                         helm-source-buffer-not-found)
                       "*helm-my-buffers*"))
  ;; source 間の移動
  (bind-keys :map helm-map
             ("C-M-n" . helm-next-source)
             ("C-M-p" . helm-previous-source))
  (helm-mode 1)

  :bind (("C-;"     . helm-my-buffers)
         ("M-x"     . helm-M-x)
         ("M-y"     . helm-show-kill-ring)
         ("C-M-z"   . helm-resume)
         ("C-x C-f" . helm-find-files)
         ("C-x C-b" . helm-buffers-list)
         ("C-c i"   . helm-imenu))
  )

;;;=============================================================================
;;; helm-descbinds.el --- Yet Another `describe-bindings' with `helm'.
;;;=============================================================================
(el-get-bundle helm-descbinds)
(use-package helm-descbinds
  :config
  (helm-descbinds-mode)
  )

;;;=============================================================================
;;; ac-helm --- helm source for auto-complete
;;;=============================================================================
(el-get-bundle ac-helm)
(use-package ac-helm
  :bind ("C-:" . ac-complete-with-helm)
  :config
  (bind-key "C-:" 'ac-complete-with-helm ac-complete-mode-map)
  )


;; ;;;=============================================================================
;; ;;; helm-company --- Helm interface for company-mode
;; ;;;=============================================================================
;; (use-package helm-company
;;   :config
;;   (bind-keys :map company-mode-map   ("C-:" . helm-company))
;;   (bind-keys :map company-active-map ("C-:" . helm-company))
;;   )

;; ;; helm-migemo
;; (el-get-bundle helm-migemo)
;; (use-package helm-migemo
;;   :config
;;   (defun helm-compile-source--candidates-in-buffer (source)
;;     (helm-aif (assoc 'candidates-in-buffer source)
;;               (append source
;;                       `((candidates
;;                          . ,(or (cdr it)
;;                                 (lambda ()
;;                                   ;; Do not use `source' because other plugins
;;                                   ;; (such as helm-migemo) may change it
;;                                   (helm-candidates-in-buffer (helm-get-current-source)))))
;;                         (volatile) (match identity)))
;;               source))
;;   )

