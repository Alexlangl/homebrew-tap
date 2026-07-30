class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.10/codex-companion-0.1.10-macos-arm64.tar.gz"
      sha256 "b0ccc595ef4a8fcebd82f9d2a0a476356f1fb52c5d45684e09992fbabd3e2082"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.10/codex-companion-0.1.10-macos-x64.tar.gz"
      sha256 "417af9387de265cedf5c7935c648a8bbe5fb75fa845a5a68cdf0cdcbebc14a31"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.10/codex-companion-0.1.10-linux-arm64.tar.gz"
      sha256 "3c473a8a5fb00fa90a47f714aa7640f43127bd3392aa4553153a9b3770a567a9"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.10/codex-companion-0.1.10-linux-x64.tar.gz"
      sha256 "079d1ec15eaa0966c25e7575e6b35748e5d1e2edbfe71f1079ec8f4ceddc4885"
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
