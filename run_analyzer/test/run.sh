(for i in `find . -name \*.dart | grep -v out`; do echo --package-root packages "$i"; done) | dart_analyzer --batch
echo $?
