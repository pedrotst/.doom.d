;;; .doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

(setq cedille-path (expand-file-name "lisp/cedille" doom-private-dir))

(def-package! cedille-mode
	      :load-path cedille-path
	      )

(load! "+bindings")
