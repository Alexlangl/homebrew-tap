class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.34"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.34/codex-companion-0.1.34-macos-arm64.tar.gz"
      sha256 "1bd21d3505f4e877af5183593487fef9f808c739d2b35a7b4616049c8f40ff1d"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.34/codex-companion-0.1.34-macos-x64.tar.gz"
      sha256 "2132f86553f5cdcce279942d36f658c7e0241ce057d6e435c0df38bd75583b43"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.34/codex-companion-0.1.34-linux-arm64.tar.gz"
      sha256 "1e567e771d8f640e6bc24b469cc47ae3c6b9ea6deb397269afd66510fc1cbebe"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.34/codex-companion-0.1.34-linux-x64.tar.gz"
      sha256 "c5e0ebfc3ef194c6b80c0a247a6ff8bf48516c031aaf7d389e3e78103bff6de4"
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
