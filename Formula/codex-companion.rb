class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.14/codex-companion-0.1.14-macos-arm64.tar.gz"
      sha256 "d56f5ace7abfb3c8172674268f525f98d39a53e889ec65a07bff4e80f62c6c54"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.14/codex-companion-0.1.14-macos-x64.tar.gz"
      sha256 "be58ff8a580772d1d5a17e535cc1ba21a08d5502865f9d3ed8694e25d75f5eb9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.14/codex-companion-0.1.14-linux-arm64.tar.gz"
      sha256 "66623fa4475860f5f19219444bcc103bedeaec56f80a65045e85a1c089987418"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.14/codex-companion-0.1.14-linux-x64.tar.gz"
      sha256 "f2052dcd44aef73f8ac580ac1691b9f1c1c2837de2346106033fba430d742ce2"
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
