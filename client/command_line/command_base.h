#pragma once

#include <vector>
#include <string>

namespace bingo {
namespace dfs {

class CommandBase {
 public:
  explicit CommandBase(const std::vector<std::string>& args);
  virtual ~CommandBase() = default;
  virtual int Run() = 0;
 private:
  std::vector<std::string> args_;
};

} // namespace dfs
} // namespace bingo
