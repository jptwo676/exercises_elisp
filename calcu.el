;; simple calculator in elisp

(message "Welcome to %s!" (buffer-name))

(defun operation-selection ()
  "Return the selected operator."
  (let* ((choices '("+" "-" "*" "/"))
        (prompt "Choose an operation: ")
        (user-choice (completing-read prompt choices nil t)))
    (message "You choose: %s" user-choice)))

(defun value-selection ()
  "Collect the two values."
  (let* ((user-input (read-number "Enter the first number: "))

(operation-selection)

