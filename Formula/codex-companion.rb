class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.37"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.37/codex-companion-0.1.37-macos-arm64.tar.gz"
      sha256 "c281d648f7fc574e8894103fda0c79fe69279570a3b27495a9b3fbddf6d628ae"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.37/codex-companion-0.1.37-macos-x64.tar.gz"
      sha256 "56faab8634f51d603e873689a65b2f429ab2ce28a737f002b80eb50bb07240f4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.37/codex-companion-0.1.37-linux-arm64.tar.gz"
      sha256 "2e1c8dda405339c164254269e9b3c3a7c1679379391dd1fa8acbf1f65f5b7257"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.37/codex-companion-0.1.37-linux-x64.tar.gz"
      sha256 "3cef2264289e93f7256eac7228f5ca0e7c0cf31696db7adcf768d4e501e7f449"
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
