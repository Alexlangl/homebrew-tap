class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.21/codex-companion-0.1.21-macos-arm64.tar.gz"
      sha256 "3d8dafbc68036b394594460c563aba9bfdd997cb5a3238b764ac952f6d3d4fe1"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.21/codex-companion-0.1.21-macos-x64.tar.gz"
      sha256 "254b685d4991996f0c47c03fdf17502b622989283acfbf790d60a0e9fed4c8b1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.21/codex-companion-0.1.21-linux-arm64.tar.gz"
      sha256 "c26db1bb1b8f7b448034e0678d27e188c0fa5e1d7499c336f84a4715524a19ac"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.21/codex-companion-0.1.21-linux-x64.tar.gz"
      sha256 "6b7c6eac848c43880278b40676c64723363217c77637527b88e5f3c74581fe22"
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
