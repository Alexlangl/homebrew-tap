class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.6/codex-companion-0.1.6-macos-arm64.tar.gz"
      sha256 "11c33d670bd8b76a71ae2779b144b1240b5ddce4096122b7a217c04f02619495"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.6/codex-companion-0.1.6-macos-x64.tar.gz"
      sha256 "e03c2cc2420279a52c927eefba5af1d27d189e8190ea37faf29c187fe9daf49c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.6/codex-companion-0.1.6-linux-arm64.tar.gz"
      sha256 "b42c79dcd5ef1a3b09ad5252c369aeba7817b49985d7e3c9c2e5bc9eacf91f86"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.6/codex-companion-0.1.6-linux-x64.tar.gz"
      sha256 "99b9c9b90c09c1fb031172883c4145973c431bce3210036939b34298ef96e651"
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
