;;; FlatUI-Dark-theme.el --- Custom face theme for Emacs

;; Copyright (C) 2018 MetroWind.

;; This program is free software. It comes without any warranty, to
;; the extent permitted by applicable law. You can redistribute it
;; and/or modify it under the terms of the Do What the Fuck You Want
;; to Public License, Version 2, as published by Sam Hocevar. See
;; http://www.wtfpl.net/ for more details.

;;; Code:

;; Note: for every face that is customized here, a customization for
;; it should be also provided in the light version. Otherwise it could
;; be ugly when switching bwteen styles

(deftheme FlatUI-Dark
  "Inspired by the color scheme from flatuicolors.com.")

;; Colors
(let*
    ((fui-turquoise "#1abc9c")
     (fui-emerald "#2ecc71")
     (fui-river "#3498db")
     (fui-amethyst "#9b59b6")
     (fui-deep-asphalt "#34495e")
     (fui-asphalt "#425d78")
     (fui-sunflower "#f1c40f")
     (fui-carrot "#e67e22")
     (fui-alizarin "#e74c3c")
     (fui-clouds "#ecf0f1")
     (fui-concrete "#95a5a6")
     (fui-dark-turquoise "#16a085")
     (fui-dark-emerald "#27ae60")
     (fui-dark-river "#2980b9")
     (fui-dark-amethyst "#8e44ad")
     (fui-dark-asphalt "#2c3e50")
     (fui-dark-sunflower "#f39c12")
     (fui-dark-carrot "#d35400")
     (fui-dark-alizarin "#c0392b")
     (fui-dark-clouds "#bdc3c7")
     (fui-deep-clouds "#dce0e1")
     (fui-dark-concrete "#7f8c8d")

     (fui-bg fui-dark-asphalt)
     (fui-fg fui-dark-clouds))

  (custom-theme-set-faces
   'FlatUI-Dark
   `(default ((t (:background ,fui-bg
                  :foreground ,fui-fg))))
   `(cursor ((t (:background ,fui-carrot
                 :foreground ,fui-fg))))
   `(region ((t (:background ,fui-dark-sunflower
                 :foreground ,fui-bg))))
   `(mode-line ((t (:background ,fui-asphalt
                    :foreground ,fui-fg
                    :box nil))))
   `(mode-line-buffer-id ((t (:foreground ,fui-fg))))
   `(mode-line-inactive ((t (:background ,fui-bg
                             :foreground ,fui-fg))))
   `(fringe ((t (:background ,fui-bg))))
   `(minibuffer-prompt ((t (:slant italic :foreground ,fui-dark-concrete))))
   `(font-lock-builtin-face ((t (:foreground ,fui-deep-clouds))))
   `(font-lock-comment-face ((t (:slant italic :foreground ,fui-dark-concrete))))
   `(font-lock-constant-face ((t (:slant italic :foreground ,fui-deep-clouds))))
   `(font-lock-function-name-face ((t (:foreground ,fui-sunflower))))
   `(font-lock-keyword-face ((t (:foreground ,fui-deep-clouds :slant italic))))
   `(font-lock-string-face ((t (:foreground ,fui-turquoise))))
   `(font-lock-type-face ((t (:foreground ,fui-emerald))))
   `(font-lock-variable-name-face ((t (:foreground ,fui-river))))
   `(font-lock-warning-face ((t (:foreground ,fui-dark-carrot))))
   `(isearch ((t (:background ,fui-dark-concrete
                  :foreground ,fui-fg))))
   `(lazy-highlight ((t (:background ,fui-concrete))))
   `(link ((t (:foreground ,fui-river :underline t))))
   `(link-visited ((t (:foreground ,fui-dark-concrete :underline t))))
   `(button ((t (:background ,fui-bg :underline t))))
   `(header-line ((t (:background ,fui-asphalt
                      :foreground ,fui-fg))))
   `(shadow ((t (:foreground ,fui-concrete))))
   `(show-paren-match ((t (:background ,fui-emerald :foreground ,fui-bg))))
   `(show-paren-mismatch ((t (:background ,fui-alizarin
                              :foreground ,fui-bg))))
   `(highlight ((t (:inverse-video nil :background ,fui-asphalt))))

   ;; Dired
   `(dired-directory ((t (:foreground ,fui-river))))
   `(dired-symlink ((t (:foreground ,fui-turquoise))))
   `(dired-perm-write ((t (:foreground ,fui-dark-carrot))))

   ;; Diff
   `(diff-added ((t (:foreground ,fui-turquoise))))
   `(diff-removed ((t (:foreground ,fui-alizarin))))
   ;; `(diff-context ((t (:inherit default))))
   `(diff-file-header ((t (:bold t :background ,fui-asphalt :weight bold :foreground ,fui-clouds))))
   `(diff-header ((t (:foreground ,fui-concrete :background ,fui-bg))))

   ;; Whitespace
   `(whitespace-trailing ((t (:background ,fui-asphalt))))
   `(whitespace-line ((t (:background ,fui-asphalt :foreground ,fui-fg))))

   ;; ERC
   `(erc-notice-face ((t (:foreground ,fui-river
                          :weight unspecified))))
   `(erc-header-line ((t (:background ,fui-asphalt))))
   `(erc-timestamp-face ((t (:foreground ,fui-dark-concrete
                             :weight unspecified))))
   `(erc-current-nick-face ((t (:foreground ,fui-sunflower
                                :weight unspecified))))
   `(erc-input-face ((t (:foreground ,fui-fg))))
   `(erc-prompt-face ((t (:foreground ,fui-dark-concrete
                          :background nil
                          :slant italic
                          :weight unspecified))))
   `(erc-my-nick-face ((t (:foreground ,fui-sunflower))))
   `(erc-pal-face ((t (:foreground ,fui-emerald))))

   ;; Rainbow delimiters
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,fui-fg))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,fui-river))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,fui-carrot))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,fui-amethyst))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,fui-sunflower))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,fui-emerald))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground ,fui-concrete))))
   `(rainbow-delimiters-unmatched-face ((t (:foreground ,fui-alizarin))))

   ;; Magit
   `(magit-branch-local ((t (:foreground ,fui-river :background nil))))
   `(magit-branch-remote ((t (:foreground ,fui-emerald :background nil))))
   `(magit-tag ((t (:foreground ,fui-river :background ,fui-bg))))
   `(magit-hash ((t (:foreground ,fui-concrete))))
   `(magit-section-title ((t (:foreground ,fui-dark-emerald :background ,fui-bg))))
   `(magit-section-heading ((t (:background ,fui-asphalt :foreground ,fui-fg))))
   `(magit-section-highlight ((t (:background ,fui-asphalt))))
   `(magit-item-highlight ((t (:foreground ,fui-fg :background ,fui-deep-clouds))))
   `(magit-log-author ((t (:foreground ,fui-sunflower))))
   `(magit-diff-added ((t (:inherit diff-added))))
   `(magit-diff-added-highlight ((t (:inherit magit-diff-added))))
   `(magit-diff-removed ((t (:inherit diff-removed))))
   `(magit-diff-removed-highlight ((t (:inherit magit-diff-removed))))
   `(magit-diff-context ((t (:inherit diff-context))))
   `(magit-diff-context-highlight ((t (:inherit magit-diff-context))))

   ;; Git-gutter-fringe
   `(git-gutter-fr:modified ((t (:foreground ,fui-sunflower))))
   `(git-gutter-fr:added ((t (:foreground ,fui-emerald))))
   `(git-gutter-fr:deleted ((t (:foreground ,fui-alizarin))))

   ;; Company
   `(company-preview ((t (:foreground ,fui-fg :background ,fui-sunflower))))
   `(company-preview-common ((t (:foreground ,fui-fg :background ,fui-carrot))))
   `(company-tooltip ((t (:foreground ,fui-fg :background ,fui-asphalt))))
   `(company-tooltip-common ((t (:foreground ,fui-sunflower))))
   `(company-tooltip-selection ((t (:background ,fui-bg))))
   `(company-tooltip-common-selection ((t (:foreground ,fui-sunflower))))
   `(company-tooltip-annotation ((t (:foreground ,fui-emerald))))
   `(company-scrollbar-bg ((t (:background ,fui-bg))))
   `(company-scrollbar-fg ((t (:background ,fui-asphalt))))

   ;; Powerline
   `(mode-line ((t (:box nil))))
   `(powerline-active2 ((t (:foreground ,fui-fg :background ,fui-dark-clouds))))
   `(powerline-active1 ((t (:foreground ,fui-bg :background ,fui-emerald))))
   `(powerline-inactive2 ((t (:foreground ,fui-bg :background ,fui-concrete))))
   `(powerline-inactive1 ((t (:foreground ,fui-fg :background ,fui-dark-clouds))))

   ;; Smart mode line
   `(sml/global  ((t (:foreground ,fui-fg))))
   `(sml/charging ((t (:foreground ,fui-emerald))))
   `(sml/discharging ((t (:foreground ,fui-dark-alizarin))))
   `(sml/read-only ((t (:foreground ,fui-dark-emerald))))
   `(sml/filename ((t (:foreground ,fui-turquoise))))
   `(sml/prefix ((t (:foreground ,fui-amethyst :weight normal :slant italic))))
   `(sml/modes ((t (:foreground ,fui-fg :weight bold))))
   `(sml/modified ((t (:foreground ,fui-alizarin))))
   `(sml/outside-modified ((t (:foreground ,fui-bg :background ,fui-alizarin))))
   `(sml/position-percentage ((t (:foreground ,fui-river :slant normal))))

   ;; Helm
   `(helm-candidate-number ((t (:foreground ,fui-fg :background nil))))
   `(helm-source-header ((t (:foreground ,fui-fg :background ,fui-asphalt
                                         :weight normal :slant italic))))
   `(helm-selection ((t (:background ,fui-dark-sunflower :foreground ,fui-bg))))
   `(helm-prefarg ((t (:foreground ,fui-dark-alizarin))))
   `(helm-ff-directory ((t (:foreground ,fui-river))))
   `(helm-ff-executable ((t (:foreground ,fui-emerald))))
   `(helm-ff-invalid-symlink ((t (:foreground ,fui-bg :background ,fui-dark-alizarin))))
   `(helm-ff-symlink ((t (:foreground ,fui-amethyst))))
   `(helm-ff-prefix ((t (:background ,fui-sunflower))))
   `(helm-M-x-key ((t (:foreground ,fui-dark-emerald))))

   ;; TeX
   `(font-latex-sedate-face ((t (:foreground ,fui-river))))
   `(font-latex-math-face ((t (:foreground ,fui-turquoise))))

   ;; adoc-mode
   `(markup-meta-hide-face ((t (:height 1.0 :foreground ,fui-fg))))
   `(markup-meta-face ((t (:height 1.0 :foreground ,fui-fg :family nil))))
   `(markup-reference-face ((t (:underline nil :foreground ,fui-river))))
   `(markup-gen-face ((t (:foreground ,fui-emerald))))
   `(markup-passthrough-face ((t (:inherit markup-gen-face))))
   `(markup-replacement-face ((t (:family nil :foreground ,fui-amethyst))))
   `(markup-list-face ((t (:weight bold))))
   `(markup-secondary-text-face ((t (:height 1.0 :foreground ,fui-emerald))))
   `(markup-verbatim-face ((t (:foreground ,fui-concrete))))
   `(markup-typewriter-face ((t (:inherit nil))))
   `(markup-title-0-face ((t (:height 1.2 :inherit markup-gen-face))))
   `(markup-title-1-face ((t (:height 1.0 :inherit markup-gen-face))))
   `(markup-title-2-face ((t (:height 1.0 :inherit markup-gen-face))))
   `(markup-title-3-face ((t (:height 1.0 :inherit markup-gen-face))))
   `(markup-title-4-face ((t (:height 1.0 :inherit markup-gen-face))))
   `(markup-title-5-face ((t (:height 1.0 :inherit markup-gen-face))))

   ;; Org-mode
   `(org-hide ((t (:foreground ,fui-bg))))
   `(org-table ((t (:foreground ,fui-fg))))
   `(org-date ((t (:foreground ,fui-emerald))))
   `(org-done ((t (:weight normal :foreground ,fui-dark-concrete))))
   `(org-todo ((t (:weight normal :foreground ,fui-carrot))))
   `(org-latex-and-related ((t (:foreground ,fui-concrete :italic t))))
   ))

(if (and (>= emacs-major-version 26) (equal window-system 'ns))
    ;; Let Emacs use dark appearance
    (let ((appearance-pair (assoc 'ns-appearance default-frame-alist)))
      (if (null appearance-pair)
          (add-to-list 'default-frame-alist '(ns-appearance . dark))
        (setcdr (assoc 'ns-appearance default-frame-alist) 'dark))))

(provide-theme 'FlatUI-Dark)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; FlatUI-Dark-theme.el  ends here
