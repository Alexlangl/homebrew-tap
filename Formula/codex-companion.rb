class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.45"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.45/codex-companion-0.1.45-macos-arm64.tar.gz"
      sha256 "c2f084fbd0c11168f5ad34831a3be68a862efb9cf47c68fa93d5344c2dcfdc38"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.45/codex-companion-0.1.45-macos-x64.tar.gz"
      sha256 "12f3e8dfbfa63bd7bceed274473e074e307e46e42bbb3f7336988d56c0555759"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.45/codex-companion-0.1.45-linux-arm64.tar.gz"
      sha256 "22bb6adb1d7f55fc168708d849b8c88b6ea6b15b1089bb6e1a3af1dcd2f1ae8f"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.45/codex-companion-0.1.45-linux-x64.tar.gz"
      sha256 "de186408b78a3c9b2a3f46ffb3a6caee5e6d3f89b6f6c0d2145f25051292adf6"
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
