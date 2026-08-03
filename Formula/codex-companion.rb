class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.12/codex-companion-0.1.12-macos-arm64.tar.gz"
      sha256 "575b905bad362b6392ae6566e1db0210c7bf1babd26ca77698fe0327b3ee8175"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.12/codex-companion-0.1.12-macos-x64.tar.gz"
      sha256 "ac1f93247458c0bb4dc95356bc3002cdc5d6a23192864eb9a3bbd277faa305db"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.12/codex-companion-0.1.12-linux-arm64.tar.gz"
      sha256 "715d09c1b7da3dcce4c85465e0c3ff8ac86a1969c71a930c35c5d5955cccd497"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.12/codex-companion-0.1.12-linux-x64.tar.gz"
      sha256 "084363dc10c70f5ae981d5f87101a27c7089b3dafd3e2fcac3182fee5b2823c4"
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
