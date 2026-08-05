class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.15/codex-companion-0.1.15-macos-arm64.tar.gz"
      sha256 "4d84577953d59e3d4ad75794ada12a7c29391b8b936f9b78764ec42903bc8186"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.15/codex-companion-0.1.15-macos-x64.tar.gz"
      sha256 "c99658345fccb67b10893bfa15138084f1ef2984509585285fad9784b62feb77"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.15/codex-companion-0.1.15-linux-arm64.tar.gz"
      sha256 "ab9392308156f4a36d051d3fbb1a5670c76f3f87c3a1468d980f917105d938ee"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.15/codex-companion-0.1.15-linux-x64.tar.gz"
      sha256 "8adc453603c817e5bc4549475a4b7a4079c67000f618ac058482137073c21f5c"
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
