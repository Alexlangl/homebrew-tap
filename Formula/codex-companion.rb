class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.41"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.41/codex-companion-0.1.41-macos-arm64.tar.gz"
      sha256 "a0d79ece06c49df2e69174d7ddd9a6047bd08af6c0f693e2ec3c1618c133948f"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.41/codex-companion-0.1.41-macos-x64.tar.gz"
      sha256 "3dd4438796c9f41387fcd700bd122b4d288f17e67855c8c476640be284b83e8c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.41/codex-companion-0.1.41-linux-arm64.tar.gz"
      sha256 "7bf87269602ea615a511b8b73f98594d066dc59be5e7dd3f7636be496ba5b283"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.41/codex-companion-0.1.41-linux-x64.tar.gz"
      sha256 "ece86c190e018159067c56eb448dfb99748471468164f8151b9677345b4aaf56"
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
