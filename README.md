[![test-cmake-template](https://github.com/patrikfors/test-cmake-template/actions/workflows/cmake.yml/badge.svg?branch=master)](https://github.com/patrikfors/test-cmake-template/actions/workflows/cmake.yml)

<h1>test cpp-cmake-template</h1>
This is an instantiated clone of mortinger91/cpp-cmake-template that has been cleaned up  

Template for a multi platform CMake C++ project that includes:

- VSCode files  -- no idea if this works
- Github Actions  -- updated to use cmake presets
- Test suite using CTest
- Dockerfile 
<h2>Set up project:</h2>

```cmake --preset debug```<br>

<h2>Build and Run:</h2>
 
 ```cmake --build --preset debug```<br>

then run:<br>
```./ProjectFolder/build/debug/bin/cpp-cmake-template```<br>

<h2>Run tests:</h2>

```ctest --preset default```<br>


To run tests in a Docker container:<br>

```docker compose down --volumes --rmi all```<br>
```docker compose up```

