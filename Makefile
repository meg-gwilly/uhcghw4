CPP = g++
CPPFLAGS = -O3 -fPIC -Wno-deprecated-declarations
TARGET = main
OS = $(shell uname)
SOURCE = $(wildcard *.cpp)

ifeq ($(OS),Darwin)
	LIB = -framework OpenGL -framework Cocoa \
	-I/opt/homebrew/opt/glew/include -I/opt/homebrew/opt/glfw/include \
	-I/opt/homebrew/opt/glm/include \
	-L/opt/homebrew/opt/glew/lib -L/opt/homebrew/opt/glfw/lib \
	-lGLEW -lglfw
else
	LIB = -lGL -lGLEW -lglfw
endif

default:
	$(CPP) $(SOURCE) $(LIB) -o $(TARGET)

clean:
	rm -f *.o $(TARGET)
