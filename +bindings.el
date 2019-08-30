;;; .doom.d/+bindings.el -*- lexical-binding: t; -*-

(when (eq system-type 'darwin)
  (setq mac-command-modifier 'meta))

(setq doom-localleader-key ",")

;; This is not working yet
(setq doom-localleader-alt-key "SPC m")

(map!
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

	  )
  )
