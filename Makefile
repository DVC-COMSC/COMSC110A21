all: clean main
programtest: main.cpp 
	g++ -fsanitize=address --std=c++17 main.cpp -o programtest 
test: programtest 
	./programtest
clean:
	rm -f programtest a.out main