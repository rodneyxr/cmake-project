default:
	cmake -H./src -Bbuild
	cmake --build build -- -j8

clean:
	rm -rf build/* bin/*