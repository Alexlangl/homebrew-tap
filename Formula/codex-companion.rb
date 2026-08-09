class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.22/codex-companion-0.1.22-macos-arm64.tar.gz"
      sha256 "35362e8644357bffa23ab830f2615e79b54e0eb08dccdc5ee97f51aab8c31388"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.22/codex-companion-0.1.22-macos-x64.tar.gz"
      sha256 "024e05133cd566eefff28a1e660628180f89a39ab351122cec8bdd7f029e82a9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.22/codex-companion-0.1.22-linux-arm64.tar.gz"
      sha256 "196dc4790a590a31ce7b003735fad4df064ae0615c02460a6baa21e656e63b3e"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.22/codex-companion-0.1.22-linux-x64.tar.gz"
      sha256 "a6ff0e14b6722972663932cb060d9588336144854f0779d3e6d89763e0b39cff"
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
