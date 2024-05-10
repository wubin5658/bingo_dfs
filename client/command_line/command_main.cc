#include "glog/logging.h"

namespace bingo {
namespace dfs {

int CommandLineMain(int argc, char* argv[]) {
  LOG(INFO) << "enter CommandLineMain";
  return 0;
}

} // namespace dfs
} // namespace bingo

int main(int argc, char* argv[]) {
  return bingo::dfs::CommandLineMain(argc, argv);
}
