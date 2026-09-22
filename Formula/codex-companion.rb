class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.40"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.40/codex-companion-0.1.40-macos-arm64.tar.gz"
      sha256 "d68359658b48ae0a99032e1c17bc4cce371a3e5d68f0fe92cb5b7a4686c04526"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.40/codex-companion-0.1.40-macos-x64.tar.gz"
      sha256 "353eb1e482e454cb14cdd87279bfe7202e1a332bdf1f8253843f335f7b943641"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.40/codex-companion-0.1.40-linux-arm64.tar.gz"
      sha256 "55a1e91dad08acf7cd92ecf816adb30559bf34bf4404d6a634313336878b18b1"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.40/codex-companion-0.1.40-linux-x64.tar.gz"
      sha256 "de6b4c17f23168edd73e0fe5694db6f16a37ad6ac86eaa70b396c5ed35372dfd"
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
