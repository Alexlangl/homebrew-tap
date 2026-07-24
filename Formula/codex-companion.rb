class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.4/codex-companion-0.1.4-macos-arm64.tar.gz"
      sha256 "b34dfb6668c33254a8acf2b7a60660447bd112c9973675a4c4b5c86cd55d7cff"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.4/codex-companion-0.1.4-macos-x64.tar.gz"
      sha256 "1fab2a174fddbeb1d68bb3032f2c78fab192e025fb0e74285af92fd20f6c6306"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.4/codex-companion-0.1.4-linux-arm64.tar.gz"
      sha256 "e698eda2ef6194cceaf2969b9488f0c3a3e104b50e385f0b02f0702862a0dae2"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.4/codex-companion-0.1.4-linux-x64.tar.gz"
      sha256 "40ec246da31299cab6b871bc68146a5940f9abb9b796cdb8b04b2272c5c219a6"
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
