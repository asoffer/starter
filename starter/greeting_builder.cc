#include <fstream>

#include "absl/debugging/failure_signal_handler.h"
#include "absl/debugging/symbolize.h"
#include "starter/greeting.pb.h"

int main(int argc, char* argv[]) {
  absl::InitializeSymbolizer("");
  absl::FailureSignalHandlerOptions opts;
  absl::InstallFailureSignalHandler(opts);

  if (argc != 3) { return 1; }
  starter::Greeting greeting;
  greeting.set_greeting(argv[1]);
  greeting.set_person(argv[2]);
  greeting.SerializeToOstream(&std::cout);
  return 0;
}
