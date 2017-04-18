
wget --header="User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_0) AppleWebKit/600.1.17 (KHTML, like Gecko) Version/8.0 Safari/600.1.17" \
  --recursive \
  --no-clobber \
  --page-requisites \
  --html-extension \
  -A "*.html" \
  --convert-links \
  --domains "bikompkf.ru" \
  --no-parent \
  "http://bikompkf.ru"
