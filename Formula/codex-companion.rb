class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.39"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.39/codex-companion-0.1.39-macos-arm64.tar.gz"
      sha256 "412941dae4dde5cb2ab27c478c68d0ffbbf58ec8f84e8618ca6fcb4bdbb41086"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.39/codex-companion-0.1.39-macos-x64.tar.gz"
      sha256 "1e239d06287f5136af479e83f055830def261f2d84cf32a93453e52072797e81"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.39/codex-companion-0.1.39-linux-arm64.tar.gz"
      sha256 "7c4b9e7cb1a430cc5e8360d1e86de0ddd7e34c929fba8d95dc97be0f11b87037"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.39/codex-companion-0.1.39-linux-x64.tar.gz"
      sha256 "ec00a2905c1acc2a7d619cd9c404de14084e3ba648e037c8e7ec1160d2513c99"
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
