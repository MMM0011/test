aclocal && autoconf && touch AUTHORS NEWS README ChangeLog && automake --add-missing 
./configure && make && make install
./helloworld
