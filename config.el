;;; .doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

(setq cedille-path (expand-file-name "lisp/cedille" doom-private-dir))

(def-package! cedille-mode
	      :load-path cedille-path
	      )

(load! "+bindings")

;; Open emacs on fullscreen by default
;; (toggle-frame-fullscreen)

;; Set the default font and size
(set-default-font "Menlo 16")

;; Set window default size
(setq default-frame-alist '((tool-bar-lines . 0)
			    (width . 100)
			    (height . 30)))
