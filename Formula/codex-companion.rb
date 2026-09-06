class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.1/codex-companion-0.1.1-macos-arm64.tar.gz"
      sha256 "747401da33e6b1cfdf24c04428a318c0823dce64419e158d5eeb5c95faa28953"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.1/codex-companion-0.1.1-macos-x64.tar.gz"
      sha256 "bef312eed4ea172123b7bdaac595531d4d99b05ee14a25e873fff98fd97b46b1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.1/codex-companion-0.1.1-linux-arm64.tar.gz"
      sha256 "a39d872c3e79759b2f1d03c32b74c4e60d1921f8754b57c0fabea77fe263ba09"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.1/codex-companion-0.1.1-linux-x64.tar.gz"
      sha256 "a80962fb93cdcd1e8c1578cb561e46b3ce17c461bee7a9467a26cf6912cbdcb9"
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
