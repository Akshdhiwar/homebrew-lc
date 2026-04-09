class Lc < Formula
  desc "Fast CLI to browse and solve LeetCode problems from terminal"
  homepage "https://github.com/Akshdhiwar/leetcode-terminal"
  version "1.0.1"

  if Hardware::CPU.arm?
    url "https://github.com/Akshdhiwar/leetcode-terminal/releases/tag/v1.0.1/lc-darwin-arm64"
    sha256 "sha256:fdc1674423c5f438cc7acba2508982cfb52d1a62ca8bc215473efa6d07f83215"
  else
    url "https://github.com/Akshdhiwar/leetcode-terminal/releases/tag/v1.0.1/lc-darwin-amd64"
    sha256 "sha256:d0647503f6cf75459533b30fe819d6d29cf9f7a5df3ba1f41529afa077e2f7ad"
  end

  def install
    bin.install Dir["*"].first => "lc"
  end
end
