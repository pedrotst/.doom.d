;;; .doom.d/+bindings.el -*- lexical-binding: t; -*-

(when (eq system-type 'darwin)
  (setq mac-command-modifier 'meta))

(setq doom-localleader-key ",")

;; This is not working yet
;; (setq doom-localleader-alt-key "SPC m")
(defun open-config()
  (interactive)
  (find-file "~/.doom.d/config.el")
  )

(defun my-toggle-fullscreen (&optional f)
  (interactive)
  (let ((current-value (frame-parameter nil 'fullscreen)))
    (set-frame-parameter nil 'fullscreen
      (if (equal 'fullboth current-value)
        (if (boundp 'old-fullscreen) old-fullscreen nil)
        (progn (setq old-fullscreen current-value)
          'fullboth)))))

(map!
  ;; Global Configurations
  (:leader  
    :desc "M-x"			    "SPC"	#'execute-extended-command
    ;; :desc "Full Screen"		    "RET"	#'toggle-frame-fullscreen
    :desc "Full Screen"		    "RET"	#'my-toggle-fullscreen
    :desc "Open Shell"		    "'"		#'shell
    ;; How can I make this work?
    ;; :desc "Open config.el"	    "f e d"	'open-config
    :desc "Switch to Last Buffer"   "TAB"	#'evil-switch-to-windows-last-buffer
    )

  ;; Cedile configurations
  (:after cedille-mode
	  :map cedille-mode-map
	  :localleader
	  :desc "Start Navigation"		"l" 'cedille-start-navigation
	  :desc "Start Navigation"		"w" 'cedille-start-navigation
	  :desc "Quit Navigation"		"q" 'cedille-mode-quit
	  :desc "Select Current Node or Parent"	"p" 'cedille-mode-select-parent
	  :desc "Check Current Node"		"c" (make-cedille-mode-buffer (cedille-mode-context-buffer) lambda cedille-context-view-mode nil t)
	  :desc "Inspect Current Node"		"i" (make-cedille-mode-buffer (cedille-mode-inspect-buffer) lambda cedille-mode-inspect nil t)
	  :desc "Development letter"		"d" (make-cedille-mode-buffer (wtfff) lambda wtfff nil t)

	  )
  )
