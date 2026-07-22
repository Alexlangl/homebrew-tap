class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.2/codex-companion-0.1.2-macos-arm64.tar.gz"
      sha256 "90e7058f8f05b7e9e29e9e2b85cf5af80e28e67f27e293e54eb468832e6fa044"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.2/codex-companion-0.1.2-macos-x64.tar.gz"
      sha256 "b5bde58cb24e46b70de5a6e16f044878c4554ed864c02f844e29bcc647a1a3f4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.2/codex-companion-0.1.2-linux-arm64.tar.gz"
      sha256 "1934b71aed2ab0b09695b70850e3ab289a10a7629449c7ef5094cda9011e0972"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.2/codex-companion-0.1.2-linux-x64.tar.gz"
      sha256 "357badd876852ed8c2c5166cc539ee62aec5826cefa1350927678f4e639c4680"
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
