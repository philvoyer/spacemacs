;; -*- mode: emacs-lisp -*-

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
   You should not put any user code in this function besides modifying the variable values."
  (setq-default

    ;; spacemacs distribution
    dotspacemacs-distribution 'spacemacs

    ;; lazy installation of configuration layers
    dotspacemacs-ask-for-lazy-installation t
    dotspacemacs-configuration-layer-path '()

    ;; list of configuration layers
    dotspacemacs-configuration-layers
    '(
       auto-completion
       (auto-completion :variables auto-completion-return-key-behavior 'complete)
       (auto-completion :variables auto-completion-tab-key-behavior 'cycle)
       (auto-completion :variables auto-completion-complete-with-key-sequence nil)
       (auto-completion :variables auto-completion-complete-with-key-sequence-delay 0.1)
       (auto-completion :variables auto-completion-private-snippets-directory nil)
       (auto-completion :variables auto-completion-enable-help-tooltip t)
       better-defaults
       c-c++
       (c-c++ :variables c-c++-default-mode-for-headers 'c++-mode)
       (c-c++ :variables c-c++-enable-clang-support t)
       (c-c++ :variables c-c++-enable-rtags-support t)
       clojure
       colors
       (colors :variables colors-enable-nyan-cat-progress-bar t)
       (colors :variables colors-colorize-identifiers 'variables) ;; 'all 'variables
       csharp
       csv
       dart
       elixir
       emacs-lisp
       git
       (git :variables git-magit-status-fullscreen t)
       gpu
       helm
       html
       java
       javascript
       json
       (json :variables js-indent-level 2)
       (json :variables json-backend nil)
       latex
       (latex :variables latex-build-command "LaTeX")
       (latex :variables latex-enable-auto-fill t)
       (latex :variables latex-enable-folding t)
       lsp ;; https://emacs-lsp.github.io/lsp-mode/tutorials/how-to-turn-off/
       (lsp :variables lsp-headerline-breadcrumb-segments '(project file symbols))
       (lsp :variables lsp-enable-symbol-highlighting nil)
       (lsp :variables lsp-lens-enable t)
       (lsp :variables lsp-ui-sideline-enable t)
       (lsp :variables lsp-signature-auto-activate t)
       lua
       markdown
       nav-flash
       org
       (org :variables org-adapt-indentation nil)
       osx
       python
       react
       rust
       search-engine
       semantic
       shell
       (shell :variables shell-default-shell 'eshell)
       (shell :variables shell-default-position 'bottom)
       (shell :variables shell-default-width 20)
       (shell :variables shell-default-heigh3 20)
       (shell :variables shell-default-full-span nil)
       spell-checking
       (spell-checking :variables spell-checking-enable-by-default nil)
       (spell-checking :variables spell-checking-enable-auto-dictionary t)
       (spell-checking :variables enable-flyspell-auto-completion t)
       sql
       syntax-checking
       swift
       version-control
       (version-control :variables version-control-diff-tool 'diff-hl)
       (version-control :variables version-control-global-margin t)
       yaml
       )

    ;; additional packages
    dotspacemacs-additional-packages '(editorconfig)

    ;; frozen packages
    dotspacemacs-frozen-packages '()

    ;; excluded packages
    dotspacemacs-excluded-packages '()

    ;; install packages behaviour.
    dotspacemacs-install-packages 'used-only)
  )

(defun dotspacemacs/init ()
  "Initialization function.
   This function is called at the very startup of Spacemacs initialization before layers configuration."

  ;; list of all spacemacs settings
  (setq-default

    ;; check for updates at startup
    dotspacemacs-check-for-update nil

    ;; contact ELPA repositories via HTTPS
    dotspacemacs-elpa-https t

    ;; contact ELPA repository timout
    dotspacemacs-elpa-timeout 5

    ;; use ELPA package subdirectory
    dotspacemacs-elpa-subdirectory nil

    ;; editing style
    dotspacemacs-editing-style 'vim

    ;; output loading progress in `*Messages*' buffer
    dotspacemacs-verbose-loading nil

    ;; startup banner
    dotspacemacs-startup-banner 'random

    ;; list of items to show in startup buffer
    dotspacemacs-startup-lists '((recents . 20)
                                  (projects . 10)
                                  (bookmarks . 5)
                                  (todos . 5)
                                  (agenda . 5))

    ;; home buffer should respond to resize events
    dotspacemacs-startup-buffer-responsive t

    ;; default major mode of the scratch buffer
    dotspacemacs-scratch-mode 'text-mode

    ;; list of themes, the first of the list is loaded when spacemacs starts
    dotspacemacs-themes '(spacemacs-dark spacemacs-light)

    ;; cursor color matches the state color
    dotspacemacs-colorize-cursor-according-to-state t

    ;; default font, or prioritized list of fonts
    dotspacemacs-default-font '("Source Code Pro"
                                 :size 16
                                 :weight normal
                                 :width normal
                                 :powerline-scale 1.1)

    ;; leader key
    dotspacemacs-leader-key "SPC"

    ;; emacs commands (M-x) (after pressing on the leader key)
    dotspacemacs-emacs-command-key "SPC"

    ;; vim ex commands (default ":")
    dotspacemacs-ex-command-key ":"

    ;; leader key in `emacs state' and `insert state'
    dotspacemacs-emacs-leader-key "M-m"

    ;; major mode leader key (equivalent of pressing `<leader> m`)
    dotspacemacs-major-mode-leader-key ","

    ;; major mode leader key in `emacs state' and `insert state'
    dotspacemacs-major-mode-emacs-leader-key "C-M-m"

    ;; same command for the key pairs C-i, TAB, C-m, and RET
    dotspacemacs-distinguish-gui-tab nil

    ;; if non nil, `Y' is remapped to `y$' in evil states
    dotspacemacs-remap-Y-to-y$ nil

    ;; if non-nil, shift mappings `<' and `>' retain visual state
    dotspacemacs-retain-visual-state-on-shift t

    ;; if non-nil, J and K move lines up and down when in visual mode
    dotspacemacs-visual-line-move-text nil

    ;; if non nil, inverse the meaning of `g' in `:substitute' evil ex-command
    dotspacemacs-ex-substitute-global nil

    ;; name of the default layout
    dotspacemacs-default-layout-name "default"

    ;; if non nil, the default layout name is displayed in the mode-line
    dotspacemacs-display-default-layout nil

    ;; if non nil, last auto saved layouts are resume automatically upon start
    dotspacemacs-auto-resume-layouts nil

    ;; size (MB) above which spacemacs will prompt to open large file
    dotspacemacs-large-file-size 1

    ;; auto-save file location (`original' or `cache')
    dotspacemacs-auto-save-file-location 'cache

    ;; maximum number of rollback slots
    dotspacemacs-max-rollback-slots 5

    ;; if non nil, `helm' will try to minimize the space it uses
    dotspacemacs-helm-resize t

    ;; if non nil, helm header is hidden when there is only one source
    dotspacemacs-helm-no-header nil

    ;; position to display `helm' (`bottom', `top', `left' or `right')
    dotspacemacs-helm-position 'bottom

    ;; fuzzy matching in `helm' (`always' or `source')
    dotspacemacs-helm-use-fuzzy 'always

    ;; if non nil, paste micro-state is enabled (`p` cycle between kill ring content)
    dotspacemacs-enable-paste-transient-state t

    ;; which-key delay in seconds (popup listing commands bound to the current keystroke sequence)
    dotspacemacs-which-key-delay 0.4

    ;; which-key frame position (`right', `bottom' or `right-then-bottom')
    dotspacemacs-which-key-position 'bottom
    ;; dotspacemacs-which-key-position 'right-then-bottom

    ;; progress bar is displayed when spacemacs is loading
    dotspacemacs-loading-progress-bar t

    ;; frame is fullscreen when emacs starts up
    dotspacemacs-fullscreen-at-startup t

    ;; disable fullscreen animations in OSX
    dotspacemacs-fullscreen-use-non-native t

    ;; frame is maximized when emacs starts up
    dotspacemacs-maximized-at-startup nil

    ;; transparency level of a frame when it's active or selected
    dotspacemacs-active-transparency 90

    ;; transparency level of a frame when it's inactive or deselected
    dotspacemacs-inactive-transparency 90

    ;; if non nil, show the titles of transient states
    dotspacemacs-show-transient-state-title t

    ;; if non nil, show the color guide hint for transient state keys
    dotspacemacs-show-transient-state-color-guide t

    ;; if non nil, unicode symbols are displayed in the mode line
    dotspacemacs-mode-line-unicode-symbols t

    ;; smooth scrolling
    dotspacemacs-smooth-scrolling t

    ;; display line numbers
    dotspacemacs-line-numbers t

    ;; code folding method (`evil' or `origami')
    dotspacemacs-folding-method 'evil

    ;; smartparens-strict-mode enabled in programming modes
    dotspacemacs-smartparens-strict-mode nil

    ;; pressing `)' key in insert mode passes over automatically added delimiters
    ;; disabled by pressing `C-q' before `)'
    dotspacemacs-smart-closing-parenthesis nil

    ;; highlight delimiters
    dotspacemacs-highlight-delimiters 'all

    ;; keep server open when quitting
    dotspacemacs-persistent-server nil

    ;; list of search tool executable names
    dotspacemacs-search-tools '("ag" "pt" "ack" "grep")

    ;; default package repository
    dotspacemacs-default-package-repository nil

    ;; delete whitespace while saving buffer
    dotspacemacs-whitespace-cleanup nil ;; use .editorconfig instead
    )
  )

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
   It is called immediately after `dotspacemacs/init', before layer configuration executes."
  ;; override theme color
  ;; (custom-set-variables '(spacemacs-theme-custom-colors
  ;;                          '((highlight . "#ffff00"))))
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
   This function is called at the very end of Spacemacs initialization after layers configuration."

  ;; activate point in center of frame
  (spacemacs/toggle-centered-point-globally)

  ;; activate visual-line-mode for text mode (ex. .org)
  (add-hook 'text-mode-hook #'visual-line-mode)

  ;; display time in status bar
  (display-time-mode t)

  ;; activate editorconfig mode
  (editorconfig-mode 1)

  ;; activate which-function-mode
  (which-function-mode 1)

  ;; python
  (setq python-indent-guess-indent-offset t) ;; guess indent (active by default)
  (setq python-indent-guess-indent-offset-verbose nil) ;; but silent warning

  ;; c indentation style
  (setq-default c-default-style "bsd")

  ;; associate processing files to java mode
  (add-to-list 'auto-mode-alist '("\\.pde\\'" . java-mode))

  ;; associate .subseqnth to clojure mode
  (add-to-list 'auto-mode-alist '("\\.subseqnth\\'" . clojure-mode))

  ;; latex
  (setenv "PATH" "/usr/local/bin:/Library/TeX/texbin/:$PATH" t)
  )
