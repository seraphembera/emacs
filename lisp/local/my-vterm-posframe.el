(require 'vterm)
(require 'posframe)

(defgroup vterm-posframe nil
  "scratch posframe"
  :prefix "vterm-posframe"
  :group 'convience)

(defvar vterm-posframe--buffer nil)
(defvar vterm-posframe--frame nil)

(defcustom vterm-posframe-buffer-name "posframe-vterm"
  "name of scratch buffer"
  :type 'string
  :group 'vterm-posframe)

(defcustom vterm-posframe-parameters
  '((left-fringe . 8)
    (right-fringe . 8))
  "frame parameters used by vterm-posframe"
  :type 'string
  :group 'vterm-posframe)

(defcustom vterm-posframe-poshandler 'posframe-poshandler-frame-center
  "posframe used by vterm-posframe"
  :type 'symbol
  :group 'vterm-posframe)

(defcustom vterm-posframe-width 140
  "vterm-posframe width"
  :type 'number
  :group 'vterm-posframe)

(defcustom vterm-posframe-height 30
  "vterm-posframe height"
  :type 'number
  :group 'vterm-posframe)

(defcustom vterm-posframe-border-width 2
  "vterm-posframe border width"
  :type 'number
  :group 'vterm-posframe)

(defface vterm-posframe-border
  '((t (:inherit default :background "gray50")))
  "Face used by the vterm-posframe"
  :group 'vterm-posframe)

(defcustom vterm-posframe-vterm-func #'vterm-posframe--create-vterm
  "vterm-posframe vterm function"
  :type 'function
  :group 'vterm-posframe)

(defcustom vterm-posframe-vterm-func-interactive nil
  "vterm-posframe vterm function interactive"
  :type 'boolean
  :group 'vterm-posframe)

(defun )
