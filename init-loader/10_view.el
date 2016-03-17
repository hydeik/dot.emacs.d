;;; -*- mode: lisp-interaction; coding: utf-8-unix; indent-tabs-mode: nil; -*-
;;;
;;; File: ~/.emacs.d/conf/30_view.el
;;; Description: Customize view, viewer
;;;

;;;=============================================================================
;;; view.el -- view mode
;;;=============================================================================
(use-package view
  :commands
  View-scroll-page-forward
  View-scroll-page-backward
  View-search-last-regexp-forward
  View-search-last-regexp-backward
  View-search-regexp-forward
  View-goto-line-last
  View-scroll-line-forward
  View-scroll-line-backward
  :config
  ;; 読み込み専用ファイルを view-mode で開く
  (setq view-read-only t)
  ;; バッファローカルな変数の設定, local-set-keyなどは hook で設定すべき
  (defvar pager-keybind
    `( ;; less-like
      ("f" . View-scroll-page-forward)
      ("b" . View-scroll-page-backward)
      ("n" . View-search-last-regexp-forward)
      ("N" . View-search-last-regexp-backward)
      ("?" . View-search-regexp-backward)
      ("G" . View-goto-line-last)
      ;; vi/w3m-like
      ("h" . backward-char)
      ("j" . next-line)
      ("k" . previous-line)
      ("l" . forward-char)
      ("J" . View-scroll-line-forward)
      ;; bm-easy
      ("." . bm-toggle)
      ("[" . bm-previous)
      ("]" . bm-next)
      ))
  (defun define-many-keys (keymap key-table &optional includes)
    (let (key cmd)
      (dolist (key-cmd key-table)
        (setq key (car key-cmd)
              cmd (cdr key-cmd))
        (if (or (not includes) (member key includes))
            (define-key keymap key cmd))))
    keymap)

  (defun view-mode-hook0 ()
    (define-many-keys view-mode-map pager-keybind)
    ;; (hl-line-mode 1)
    (define-key view-mode-map " " 'scroll-up))
  (add-hook 'view-mode-hook 'view-mode-hook0)
  )

;;;=============================================================================
;;; bm.el -- bookmark file
;;;=============================================================================
(el-get-bundle bm)
(use-package bm
  :bind (:map view-mode-map
              ("m" . bm-toggle)
              ("[" . bm-previous)
              ("]" . bm-next))
  )

;; Viewer
(el-get-bundle viewer)
(use-package viewer
  :defines viewer-modeline-color-view viewer-modeline-color-unwritable
  :functions viewer-stay-in-setup  viewer-change-modeline-color-setup
  :config
  ;; 書き込み不能なファイルでは view-mode から抜けない
  (viewer-stay-in-setup)
  ;; view-mode 時に modeline に色を付ける
  (setq viewer-modeline-color-unwritable "tomato3")
  (setq viewer-modeline-color-view "red4")
  (viewer-change-modeline-color-setup)
  )
