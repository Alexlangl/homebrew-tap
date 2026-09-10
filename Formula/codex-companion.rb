class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.35"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.35/codex-companion-0.1.35-macos-arm64.tar.gz"
      sha256 "be413378860429efaf77df1e1ce3d23452cd0eaca736d6624b5958428576cc3c"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.35/codex-companion-0.1.35-macos-x64.tar.gz"
      sha256 "92c3a257b84a7534013c0d7a47c4fa72fb522a7420e5160588e1f851407a3097"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.35/codex-companion-0.1.35-linux-arm64.tar.gz"
      sha256 "cbc1922f7949a27366d9ef170ecaeab07a6fc97956cb3a8d5bfcbfeda47036b8"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.35/codex-companion-0.1.35-linux-x64.tar.gz"
      sha256 "6d70901d9ebf8d1fb6788c3fdc5ebf6483a4786c67c7d6a3fc0c001020ecb24f"
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
