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
 '(package-selected-packages '(dashboard neotree doom-themes all-the-icons)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Hack" :foundry "SRC" :slant normal :weight normal :height 143 :width normal)))))


;; neotree
  (add-to-list 'load-path "/some/path/neotree")
  (require 'neotree)
  (global-set-key [f8] 'neotree-toggle)

;; evil-neo


(add-hook 'neotree-mode-hook
           (lambda ()
           (define-key evil-normal-state-local-map (kbd "TAB") 'neotree-enter)
           (define-key evil-normal-state-local-map (kbd "SPC") 'neotree-quick-look)
           (define-key evil-normal-state-local-map (kbd "q") 'neotree-hide)
           (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)
           (define-key evil-normal-state-local-map (kbd "g") 'neotree-refresh)
           (define-key evil-normal-state-local-map (kbd "n") 'neotree-next-line)
           (define-key evil-normal-state-local-map (kbd "p") 'neotree-previous-line)
           (define-key evil-normal-state-local-map (kbd "A") 'neotree-stretch-toggle)
           (define-key evil-normal-state-local-map (kbd "H") 'neotree-hidden-file-toggle)))

;;dash board
(require 'dashboard)
(dashboard-setup-startup-hook)

;; dashboard-customization

;; Set the title
(setq dashboard-banner-logo-title "Hello there !!")
;; Set the banner
(setq dashboard-startup-banner "/home/sanal/pics/wall/gdu1.png")
;; Value can be
;; 'official which displays the official emacs logo
;; 'logo which displays an alternative emacs logo
;; 1, 2 or 3 which displays one of the text banners
;; "path/to/your/image.gif", "path/to/your/image.png" or "path/to/your/text.txt" which displays whatever gif/image/text you would prefer

;; Content is not centered by default. To center, set
(setq dashboard-center-content t)

;; To disable shortcut "jump" indicators for each section, set
(setq dashboard-show-shortcuts nil)

;; For emacscliennt
(setq initial-buffer-choice (lambda () (get-buffer "*dashboard*")))

;; dashboard contents
