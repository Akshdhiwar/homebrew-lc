class Lc < Formula
  desc "Fast CLI to browse and solve LeetCode problems from terminal"
  homepage "https://github.com/Akshdhiwar/leetcode-terminal"
  version "1.0.1"

  if Hardware::CPU.arm?
    url "https://github.com/Akshdhiwar/leetcode-terminal/releases/tag/latest/lc-darwin-arm64"
    sha256 "sha256:cb6e4f1c7a7e26c1047c8746dc93c02819f5a3c40f76874c677b9c37f7a3f8ee"
  else
    url "https://github.com/Akshdhiwar/leetcode-terminal/releases/tag/latest/lc-darwin-amd64"
    sha256 "sha256:198d7437f56b14fb8194e254faf45c5d896fa8b91d2f217b1a5932b831be8725"
  end

  def install
    bin.install Dir["*"].first => "lc"
  end
end
