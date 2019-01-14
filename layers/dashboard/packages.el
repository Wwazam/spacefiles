;;; packages.el --- dashboard layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: bpracca <bpracca@bpracca-pc>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `dashboard-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `dashboard/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `dashboard/pre-init-PACKAGE' and/or
;;   `dashboard/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst dashboard-packages
  '(dashboard)
)

(defun dashboard/init-dashboard()
  (use-package dashboard
    :ensure t
    :config
    (dashboard-setup-startup-hook))
  )
