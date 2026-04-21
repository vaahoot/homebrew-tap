class ZenMode < Formula
  desc "A macOS CLI tool that blocks distracting domains"
  homepage "https://github.com/vaahoot/zen-mode"
  url "https://github.com/vaahoot/zen-mode/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "808601fab405c1ded88777f7aa9d2cad53ca15308a73a806f936c4389ed0ff81"
  license "MIT"

  def install
    system "make"
    bin.install "out/zen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zen -v")
  end
end
