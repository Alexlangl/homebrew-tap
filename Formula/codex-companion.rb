class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.18/codex-companion-0.1.18-macos-arm64.tar.gz"
      sha256 "2784af624c6a25f25876781d7f3dc7f9bc9bf2ce5530ac01708be5321328338f"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.18/codex-companion-0.1.18-macos-x64.tar.gz"
      sha256 "1d53028a36cab160a4ac0d16edcc85043b834f221cb7192f29c941ed29fa1991"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.18/codex-companion-0.1.18-linux-arm64.tar.gz"
      sha256 "1dd4e965a578ccba0f93498ca00abd179535e00e6386e8272f9fc41a0d5c2b27"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.18/codex-companion-0.1.18-linux-x64.tar.gz"
      sha256 "a6e6cd789180d2d34cf7b867c59bd918311399e3a1281a597a673dfcf22adb3f"
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
