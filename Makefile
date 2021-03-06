all: rshell ls
			mkdir bin
			mv ./rshell ./bin/rshell
			mv ./ls ./bin/ls
			mv ./cp ./bin/cp
			mv ./rm ./bin/rm
			mv ./mv ./bin/mv
rshell: ./src/main.cpp
	g++ -Wall -Werror -ansi -pedantic -o rshell ./src/main.cpp
ls: ./src/ls.cpp
	g++ -Wall -Werror -ansi -pedantic -o ls ./src/ls.cpp
cp: ./src/cp.cpp
	g++ -Wall -Werror -ansi -pedantic -o cp ./src/cp.cpp
rm: ./src/rm.cpp
	g++ -Wall -Werror -ansi -pedantic -o rm ./src/rm.cpp
mv: ./src/mv.cpp
	g++ -Wall -Werror -ansi -pedantic -o mv ./src/mv.cpp
clean:
	rm -rf bin
