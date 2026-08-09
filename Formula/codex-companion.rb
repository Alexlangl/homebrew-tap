class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.24"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.24/codex-companion-0.1.24-macos-arm64.tar.gz"
      sha256 "4b709a356e356808df35434d9ab21c4d31c6dcec66e56260a40dfd5b151f9f2d"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.24/codex-companion-0.1.24-macos-x64.tar.gz"
      sha256 "dd1ed2d1e4343f7bcf148ac9c6086457e031160c6d4a724dc9c4c6d2b6faeec0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.24/codex-companion-0.1.24-linux-arm64.tar.gz"
      sha256 "d8a67b3630475b9f46ba9b98ea2d5eff05224d897f24200ec0f39d2070442158"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.24/codex-companion-0.1.24-linux-x64.tar.gz"
      sha256 "01a22bfe8aecbdcb109b2dcc0eee118ea44e6dbbec58177032cc97bfc600d3d1"
    end
  end

  def install
    bin.install "codex-companion"
    bin.install "codex-companion-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codex-companion --version")
    assert_path_exists bin/"codex-companion-tui"
  end
end
