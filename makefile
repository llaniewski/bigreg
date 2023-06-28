CXX=hipcc
CXXFLAGS=--offload-arch=gfx90a -save-temps

main: test.o
	$(CXX) -o $@ $^

%.o: %.cpp
	$(CXX) -c -o $@ $< $(CXXFLAGS)

%.cpp: %.cpp.Rt
	./RT -o $@ -f $<
