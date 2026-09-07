class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.32"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.32/codex-companion-0.1.32-macos-arm64.tar.gz"
      sha256 "925463f18a47a7764b227805386a15b82e3df18048ba6838575a66109e279f14"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.32/codex-companion-0.1.32-macos-x64.tar.gz"
      sha256 "24914c33f4f1e2cc33eedb400723d81ddc7fbb86aa43c0a07c741ccc21a40668"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.32/codex-companion-0.1.32-linux-arm64.tar.gz"
      sha256 "b48846ee04141a39272666d31ce3c2eafc3b09b43091a60d00ac2bb0e825652e"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.32/codex-companion-0.1.32-linux-x64.tar.gz"
      sha256 "9ab723a10056587871e18834c0e34308db1a09443b3a530908a5124bb39e477c"
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
