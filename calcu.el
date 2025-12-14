;;; calcu.el --- Summary

(message "Welcome to %s!" (buffer-name))

(defun select-operation ()
  "Return the selected operator."
  (let* ((choices '("+" "-" "*" "/"))
        (prompt "Choose an operation: ")
        (user-choice (completing-read prompt choices nil t)))
    user-choice))

(select-operation)

(defun select-value ()
  "Collect the two values, VALUE1 and VALUE2."
  (let* ((value1 (read-number "Enter the first number: "))
         (value2 (read-number "Enter the second number: ")))
    (list value1 value2)))
    
(select-value)

(defun calculate (operation values)
  "Do the selected OPERATION using the VALUES as parameters."
  (when (char-equal operation +)
    (+ (nth 0 values) (nth 1 values))))

(calculate select-operation select-value)
