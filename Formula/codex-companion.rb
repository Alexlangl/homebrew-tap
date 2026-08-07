class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.20"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.20/codex-companion-0.1.20-macos-arm64.tar.gz"
      sha256 "990977e809ff4168e0f5252643a547467d506ec08f0313f5b353a276d1114b5d"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.20/codex-companion-0.1.20-macos-x64.tar.gz"
      sha256 "2593a0ff359c77680c1644577f3815d77bc104bef575fdb132e5af8c9bfb10da"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.20/codex-companion-0.1.20-linux-arm64.tar.gz"
      sha256 "16d84fefac0e9afbe95ab0e700df5eb95fa16fc219db03cb6bc40587dba16bc5"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.20/codex-companion-0.1.20-linux-x64.tar.gz"
      sha256 "8e382c2826dde37c276d050699ab7b590f60d5f684a92ec960f1f281ea46b4e1"
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
