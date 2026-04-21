class ZenMode < Formula
  desc "A macOS CLI tool that blocks distracting domains"
  homepage "https://github.com/vaahoot/zen-mode"
  url "https://github.com/vaahoot/zen-mode/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "ccbfd82f3e5923aafd07baa8001256d7cda8caf63c36c20a04c7cef98f56c2bc"
  license "MIT"

  def install
    system "make"
    bin.install "out/zen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zen -v")
  end
end
