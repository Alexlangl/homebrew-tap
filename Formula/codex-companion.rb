class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.33"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.33/codex-companion-0.1.33-macos-arm64.tar.gz"
      sha256 "5474d49d784c2e294aa35b95a26cf6b011022965dfbcde81a4560d633f86d0a7"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.33/codex-companion-0.1.33-macos-x64.tar.gz"
      sha256 "7b36b07f4e736bc15c41e4e3ebb23b11d295d98a2a30c750942ef66978226f66"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.33/codex-companion-0.1.33-linux-arm64.tar.gz"
      sha256 "cb6ac9d743b5bfeb6943050f858515c025418a8ba28f1a79d0bfc2b119bcb1ca"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.33/codex-companion-0.1.33-linux-x64.tar.gz"
      sha256 "2569148a62ffedf20aa40d1480a92c7c99b64b7f07b626936122bac8808c13e8"
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
