echo "\n=========== Scanning for credit card numbers ========"
grep -rE --color=always '(\b[0-9]{4}[- ]?){3}[0-9]{4}\b' . --exclude-dir={.git} --line-number
echo "=========== credit card scan complete =========="

echo "\n=========== Scanning for social security numbers ========"
grep -rE --color=always '\b[0-9]{3}-[0-9]{2}-[0-9]{4}\b' . --exclude-dir={.git} --line-number
echo "=========== Social security scan complete =========="

echo "\n=========== Scanning for phone numbers ========"
grep -rE --color=always '\b[0-9]{3}-[0-9]{3}-[0-9]{4}\b' . --exclude-dir={.git} --line-number
grep -rE --color=always '\([0-9]{3}\) [0-9]{2}-[0-9]{4}\b' . --exclude-dir={.git} --line-number
echo "=========== Phone number scan complete =========="
