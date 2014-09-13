(custom-set-variables
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (tsdh-light)))
 '(inhibit-startup-screen t)
)
(custom-set-faces)

 ;; Colors
 ;; ====== 

(set-background-color "#191919")
(set-foreground-color "green")
(set-face-foreground 'mode-line "#191919")

 ;; Hiding bars
 ;; =========== 

(tool-bar-mode 0)
(scroll-bar-mode 0)
(menu-bar-mode 0)

 ;; Comfort of reading
 ;; ==================

;; font size and line spacing
(set-face-attribute 'default nil :height 175)
(setq line-spacing 3)
;; line numbering
(global-linum-mode t)
;; highlight current line
(global-hl-line-mode 1)
(set-face-background 'hl-line "darkslategrey")
;; bar cursor
(setq-default cursor-type 'bar) 

 ;; Open blank scratch on starting
(setq initial-scratch-message "")


 ;; To maximise
 ;; ===========
(defun maximise (&optional f)
       (interactive)
       (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
               '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
       (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
               '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0)))
(maximise)

 ;; Others
 ;;=======
(setq initial-major-mode 'python-mode)
(setq visible-bell t)
(put 'narrow-to-region 'disabled nil)
(setq frame-title-format '((:eval default-directory)))
