class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.25"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.25/codex-companion-0.1.25-macos-arm64.tar.gz"
      sha256 "d25526600e2ccde1de3a08b9c224f9d5e11584464e33fb5debd5223ef4bcc54e"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.25/codex-companion-0.1.25-macos-x64.tar.gz"
      sha256 "92b750771d606177f226870b65019f8a0c86d6eddb2e2e754cf6e0061f527931"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.25/codex-companion-0.1.25-linux-arm64.tar.gz"
      sha256 "e577b928a1c211edd7d2c400a894e1c4c419b0d453deab56adde035c0bb7c1f2"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.25/codex-companion-0.1.25-linux-x64.tar.gz"
      sha256 "121ae678f45d91f9c59c7bbb85e19c979010eba811259c60b2e214f78db5db3f"
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
