class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.19/codex-companion-0.1.19-macos-arm64.tar.gz"
      sha256 "3b53708be6a2dad9e0f8abb85cc4b9996fe638349220ceeef21047d366a68a86"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.19/codex-companion-0.1.19-macos-x64.tar.gz"
      sha256 "7b29e5936df6cdef7971e34846f49ab0048063f17eeb7b9c86bf398c3e41bd6b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.19/codex-companion-0.1.19-linux-arm64.tar.gz"
      sha256 "5cbaa6ef848a32010c07e9558c36ca7073bcefb4ba3489878eeabfc7126c8af6"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.19/codex-companion-0.1.19-linux-x64.tar.gz"
      sha256 "53fef68cb361273a4001de3d4dca5d7756a9bcaa69fcf99d9cba4f002e4ff09e"
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
