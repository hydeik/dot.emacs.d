;;; atom-dark-theme.el --- Atom.io Editor Default Dark Theme
;;
;; Copyright 2014 Jonathan Chu
;;
;; Author: Jonathan Chu <jonathan.chu@me.com>
;; URL:
;; Version: 0.1.0


(deftheme atom-dark
  "Atom Dark color theme")

(custom-theme-set-faces
 'atom-dark
 '(default (( t (:background "#1d1f21" :foreground "#ffffff"))))  ;; DONE
 '(cursor ((t (:background "#ffffff"))))
 '(border ((t (:foreground "#ffffff"))))
 ;; '(region ((t (:background "#6c91be"))))
 '(region ((t (:background "#444444"))))
 '(fringe ((t (:background "#1d1f21"))))  ;; DONE
 '(header-line ((t (:foreground "#f0dfaf" :background "#2b2b2b"))))
 '(highlight ((t (:background "#2b2b2b"))))

 '(mode-line ((t (:foreground "#030303" :background "#bdbdbd"
                              :box (:line-width 1 :color "#000000" :style released-button)))))
 ;; uncomment and use the following mode-line below for use with emacs-powerline
 ;; (https://github.com/jonathanchu/emacs-powerline.git)
 ;; '(mode-line ((t (:foreground "#030303" :background "#bdbdbd"))))
 '(minibuffer-prompt ((t (:foreground "#729fcf" :bold t))))

 ;; magit
 '(magit-log-sha1 ((t (:foreground "#cf6a4c"))))
 '(magit-log-head-label-local ((t (:foreground "#3387cc"))))
 '(magit-log-head-label-remote ((t (:foreground "#65b042"))))
 '(magit-branch ((t (:foreground "#fbde2d"))))
 '(magit-section-title ((t (:foreground "#adc6ee"))))
 '(magit-item-highlight ((t (:background "#6c91be"))))

 ;; hl-line-mode
 '(hl-line-face ((t (:background "#000000"))))

 ;; hl-linum-mode
 '(linum-highlight-face ((t (:background "#444444" :foreground "#ffffff"))))

 ;; font lock
 '(font-lock-builtin-face ((t (:foreground "#ffd2a7"))))  ;; DONE
 '(font-lock-comment-delimiter-face ((t (:foreground "#7c7c7c"))))  ;; DONE
 '(font-lock-constant-face ((t (:foreground "#a8ff60"))))  ;; DONE
 '(font-lock-doc-face ((t (:foreground "#a8ff60"))))  ;; DONE
 '(font-lock-doc-string-face ((t (:foreground "#a8ff60"))))  ;; DONE
 '(font-lock-comment-face ((t (:foreground "#7c7c7c"))))  ;; DONE
 '(font-lock-function-name-face ((t (:foreground "#ffd2a7"))))  ;; DONE
 '(font-lock-keyword-face ((t (:foreground "#96cbfe"))))  ;; DONE
 '(font-lock-string-face ((t (:foreground "#a8ff60"))))  ;; DONE
 '(font-lock-type-face ((t (:foreground "#ffd2a7"))))  ;; DONE
 '(font-lock-variable-name-face ((t (:foreground "#ffffff"))))  ;; DONE
 '(font-lock-warning-face ((t (:foreground "Red" :bold t))))
 '(font-lock-negation-char-face ((t (:foreground "#a8ff60"))))  ;; DONE
 '(font-lock-preprocessor-face ((t (:foreground "#a8ff60"))))  ;; DONE

 ;; Flymake
 '(flymake-warnline (( t (:underline (:color "#de935f" :style wave)))))
 '(flymake-errline (( t (:underline (:color "#cc6666" :style wave)))))

 ;; show-paren
 '(show-paren-match-face ((t (:foreground "#000000" :background "#F0F6FC" :weight bold))))
 '(show-paren-mismatch-face ((t (:foreground "#960050" :background "#1E0010" :weight bold))))

 ;; search
 '(isearch ((t (:foreground "#a33a37" :background "#f590ae"))))
 '(isearch-fail ((t (:foreground "#ffffff" :background "#f590ae"))))
 '(lazy-highlight ((t (:foreground "#465457" :background "#000000"))))

 ;; ido mode
 '(ido-first-match ((t (:foreground "#fbde2d" :weight bold))))
 '(ido-only-match ((t (:foreground "#d8fa3c" :weight bold))))
 '(ido-subdir ((t (:foreground "#adc6ee"))))

 ;; org-mode
 '(org-agenda-date-today
   ((t (:foreground "white" :slant italic :weight bold))) t)
 '(org-agenda-structure
   ((t (:inherit font-lock-comment-face))))
 '(org-archived ((t (:foreground "#eeeeec" :weight bold))))
 '(org-checkbox ((t (:background "#5f5f5f" :foreground "white"
                                 :box (:line-width 1 :style released-button)))))
 '(org-date ((t (:foreground "#8cd0d3" :underline t))))
 '(org-deadline-announce ((t (:foreground "#8787FF"))))
 '(org-done ((t (:bold t :weight bold :foreground "#bff740"))))
 '(org-headline-done ((t (:foreground "#8787ff"))))
 '(org-level-1 ((t (:foreground "#dfaf8f"))))
 '(org-level-2 ((t (:foreground "#aeaeae"))))
 '(org-level-3 ((t (:foreground "#94bff3"))))
 '(org-level-4 ((t (:foreground "#e0cf9f"))))
 '(org-level-5 ((t (:foreground "#93e0e3"))))
 '(org-level-6 ((t (:foreground "#8fb28f"))))
 '(org-level-7 ((t (:foreground "#8c5353"))))
 '(org-level-8 ((t (:foreground "#4c7073"))))
 '(org-table ((t (:foreground "#8787FF"))))
 '(org-todo ((t (:bold t :foreground "#e21d24" :weight bold))))
 '(org-upcoming-deadline ((t (:inherit font-lock-keyword-face))))
 '(org-warning ((t (:bold t :foreground "#cc9393"d :weight bold))))
)

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'atom-dark)
;;; atom-dark-theme.el ends here
