class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.43"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.43/codex-companion-0.1.43-macos-arm64.tar.gz"
      sha256 "d2b2c700a1563aa2765cd9e73e32d89d96c01714b0f42e03844086edbd6f8592"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.43/codex-companion-0.1.43-macos-x64.tar.gz"
      sha256 "e5e7ef66143108149de283a4d1d14e92ff70fa6c68030483cd22e97db32633f1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.43/codex-companion-0.1.43-linux-arm64.tar.gz"
      sha256 "cb81cd38de3185b11bb42ee468c217cf4b5155972b13c5359775a4843634ed00"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.43/codex-companion-0.1.43-linux-x64.tar.gz"
      sha256 "7808592d9ec3515fa4bfb1482fd88c8f850765062cefa94a055ba1a0a0906d58"
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
