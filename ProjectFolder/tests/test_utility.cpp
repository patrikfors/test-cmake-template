// Copyright Patrik Fors
#include <utility/utility.h>

#include "test_utility.h"

void testHelloWorld() { assert(Utility::HelloWorld() == "Hello World!"); }

int main() {
  testHelloWorld();

  return 0;
}
