

javac tool/XMLVersionUpdater.java 

LIB_VERSION="$(cd tool && java XMLVersionUpdater && cd ..)"
echo "libversion=${LIB_VERSION}" > gradle.properties
cat gradle.properties
bash gen-lib.sh

