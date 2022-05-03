;; elpa-packages
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

;; evil mode
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)

;; custom-themes

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/") 

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(doom-one))
 '(custom-safe-themes
   '("835868dcd17131ba8b9619d14c67c127aa18b90a82438c8613586331129dda63" default))
 '(package-selected-packages
   '(company-shell dart-mode lsp-mode lsp-dart lsp-treemacs flycheck company lsp-ui company hover)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Hack" :foundry "SRC" :slant normal :weight normal :height 143 :width normal)))))

 ;;dash board
(require 'dashboard)
(dashboard-setup-startup-hook)

;; dashboard-customization


;; Set the title
  (setq dashboard-banner-logo-title "Hello there !!")
;; Set the banner
 (setq dashboard-startup-banner "/home/sanal/pics/wall/gdu1.png")

 ;; Content is not centered by default. To center, set
 (setq dashboard-center-content t)

;doom-modeline
(require 'doom-modeline)
(doom-modeline-mode 1)

;; What to display as the version while a new one is being loaded
(setq doom-modeline-env-load-string "...")

;; Hooks that run before/after the modeline version string is updated
(setq doom-modeline-before-update-env-hook nil)
(setq doom-modeline-after-update-env-hook nil)

;; auto-complete-WIP
(ac-config-default)

;;auto-complete-mode use alt+TAB

;;(define-key ac-mode-map (kbd "M-TAB") 'auto-complete)

;;lsp-flutter LOOK FOR ERROR !!

(setq package-selected-packages 
  '(dart-mode lsp-mode lsp-dart lsp-treemacs flycheck company
    ;; Optional packages
    lsp-ui company hover))

(when (cl-find-if-not #'package-installed-p package-selected-packages)
  (package-refresh-contents)
  (mapc #'package-install package-selected-packages))

(add-hook 'dart-mode-hook 'lsp)

(setq gc-cons-threshold (* 100 1024 1024)
      read-process-output-max (* 1024 1024))


;;company WIP
(add-hook 'after-init-hook 'global-company-mode)


