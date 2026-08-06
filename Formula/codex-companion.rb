class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.16/codex-companion-0.1.16-macos-arm64.tar.gz"
      sha256 "c4366623db58c1ba1a9361067867dbd25fb2fddf999191fcb86fdad3dc40969d"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.16/codex-companion-0.1.16-macos-x64.tar.gz"
      sha256 "c73b1383efb76a491da83cb0646151dd8a5ff7f025ba41724f9f884362aa3b6d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.16/codex-companion-0.1.16-linux-arm64.tar.gz"
      sha256 "4516eee3657f3b2c12cec363ce24d7cdf3004942c186eaf7f04a894ddb589e26"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.16/codex-companion-0.1.16-linux-x64.tar.gz"
      sha256 "c5354d19c342422d8254d42505220f17023cb18bb590fbb0e967378c777b017b"
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
