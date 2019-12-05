;;; idee.el --- A unified way to perform IDE-like tasks across mutiple languages and frameworks.

;; Copyright (C) 2018 Ioannis Canellos

;; Licensed under the Apache License, Version 2.0 (the "License");
;; you may not use this file except in compliance with the License.
;; You may obtain a copy of the License at

;;       http://www.apache.org/licenses/LICENSE-2.0

;;Unless required by applicable law or agreed to in writing, software
;;distributed under the License is distributed on an "AS IS" BASIS,
;;WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
;;See the License for the specific language governing permissions and
;;limitations under the License.

;; Author: Ioannis Canellos

;; Version: 0.0.1

;; Package-Requires: ((emacs "25.1"))

;;; Commentary:

;;; Code:
(require 'idee-vars)
(require 'idee-projects)

(defcustom idee-repo-url "git@github.com:iocanel/idee.git" "The repository url of the idee project." :group 'idee :type 'string)

(defun idee-resources-init ()
  (interactive)
  "Initialize idee resources."
  (idee-git-checkout idee-repo-url idee-resources-dir '("headers" "templates" "snippets")))

(defun idee-init ()
  (interactive)
  "Initialize idee"
  (idee--projects-init)
  (idee--treemacs-init)
  (idee--templates-init)
  (idee--headers-init)
  (idee--views-init)
  (idee--evil-init))

(provide 'idee)
;;; idee.el ends here
