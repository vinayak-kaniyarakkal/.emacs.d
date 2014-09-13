(custom-set-variables
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (tsdh-light)))
 '(inhibit-startup-screen t)
)
(custom-set-faces)

 ;; Colors
 ;; ====== 

(set-background-color "#ffffff")
(set-foreground-color "#000000")
(set-face-foreground 'mode-line "#200020")
(set-face-background 'fringe "#f5f5f5")

(set-face-attribute 'mode-line nil
   :foreground "gray0"
   :background "#f5f5f5"
   :overline "#f5f5f5"
   :underline "#f5f5f5"
   :box nil)

 ;; Hiding bars 
 ;; =========== 

(tool-bar-mode 0)
(scroll-bar-mode 0)
(menu-bar-mode 0)

 ;; Comfort of reading
 ;; ==================

;; font size and line spacing
(set-face-attribute 'default nil :height 180)
(setq line-spacing 3)
;; line numbering
(global-display-line-numbers-mode t)
;; highlight current line
(global-hl-line-mode 1)
(set-face-background 'hl-line "#f5f5f5")
;; bar cursor
(setq-default cursor-type 'bar) 

 ;; Open blank scratch on starting
(setq initial-scratch-message "")


(add-to-list 'default-frame-alist '(fullscreen . maximized))

 ;; Others
 ;;=======
(setq visible-bell t)
(put 'narrow-to-region 'disabled nil)
(setq frame-title-format '((:eval default-directory)))

;; Fonts 
  ;; (set-frame-font "Inconsolata-14")
  ;; Commented out because font not availiable

;; Package stuff

(require 'package)

(setq package-archives '(("org" . "http://orgmode.org/elpa/")
			 ("gnu" . "http://elpa.gnu.org/packages/")
			 ("marmalade" . "http://marmalade-repo.org/packages/")
			 ("melpa" . "http://melpa.milkbox.net/packages/"))) 

(package-initialize)


;; desktop-mode
(desktop-save-mode t)
(setq desktop-files-not-to-save "^$")
(add-to-list 'desktop-modes-not-to-save 'dired-mode)
(add-to-list 'desktop-modes-not-to-save 'help-mode)
(add-to-list 'desktop-modes-not-to-save 'magit-mode)
(add-to-list 'desktop-modes-not-to-save 'fundamental-mode)
(add-to-list 'desktop-modes-not-to-save 'completion-list-mode)
(define-key global-map (kbd "C-c s") 'desktop-save-in-desktop-dir)

(define-key global-map (kbd "C-j") 'newline-and-indent)

(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)
(define-key global-map (kbd "C-=") 'text-scale-increase)
(define-key global-map (kbd "C-;") 'replace-string)

;; Using arrow keys to change buffer
(define-key global-map (kbd "C-<left>") 'previous-buffer)
(define-key global-map (kbd "C-<right>") 'next-buffer)
(define-key global-map (kbd "<F8>") 'kill-buffer)
(put 'set-goal-column 'disabled nil)

(define-key global-map (kbd "s-w") 'save-buffer)


(global-set-key (kbd "C-<up>") (kbd "{{ SPC SPC }} C-b C-b C-b"))
(global-set-key (kbd "C-<down>") (kbd "{% SPC SPC %} C-b C-b C-b"))



;; smex-mode
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
