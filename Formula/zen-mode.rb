class ZenMode < Formula
  desc "A macOS CLI tool that blocks distracting domains"
  homepage "https://github.com/vaahoot/zen-mode"
  url "https://github.com/vaahoot/zen-mode/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "af56e016492c2b27f39cca6568288a5e51c7190fa42b375b8fe4002e9781a863"
  license "MIT"

  def install
    system "make"
    bin.install "out/zen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zen -v")
  end
end
