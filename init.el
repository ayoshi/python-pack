(install-packs '(elpy))

(elpy-enable)
(elpy-use-ipython)

;;(elpy-clean-modeline)

;; Load bindings config
(live-load-config-file "bindings.el")
