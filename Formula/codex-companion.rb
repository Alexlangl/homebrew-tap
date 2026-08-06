class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.17/codex-companion-0.1.17-macos-arm64.tar.gz"
      sha256 "cc1d7eb519ed05498036b0d8893a7328356bb51681c4752f456c1f11e7889d1e"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.17/codex-companion-0.1.17-macos-x64.tar.gz"
      sha256 "7c362b722bf70a4ad2764bdabacae54b49d0758822648b66bb96761c9d7daf0a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.17/codex-companion-0.1.17-linux-arm64.tar.gz"
      sha256 "5a77893494cc24b93f433a8864a936fd3cb743051f33372552e7d3a820d3ea43"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.17/codex-companion-0.1.17-linux-x64.tar.gz"
      sha256 "b2b74801f017dffff719049287f6baf925b731032c5da219b5fb281a349d56a0"
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
