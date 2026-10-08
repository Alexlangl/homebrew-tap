class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.44"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.44/codex-companion-0.1.44-macos-arm64.tar.gz"
      sha256 "c4c69363797d244ea7a28ee233343d384c3ea3fb1dda2278b164e379b7ba4ba4"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.44/codex-companion-0.1.44-macos-x64.tar.gz"
      sha256 "108676235758afec0d6d7e892000568832a138919c8486e45d4d4fbb4bd3134b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.44/codex-companion-0.1.44-linux-arm64.tar.gz"
      sha256 "32376b53660eaf36b6b9bcfe84f1695ee76fba79b2137112852ca5c229a5e4ce"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.44/codex-companion-0.1.44-linux-x64.tar.gz"
      sha256 "a55e93f0e5a0a342f9a699c40e07047e146df37b554003cd706727555fa976e8"
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
