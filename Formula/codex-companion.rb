class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.7/codex-companion-0.1.7-macos-arm64.tar.gz"
      sha256 "3151bbd923e12a9ba9db4361903b909f99a4d0154784d4087823f54004f16005"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.7/codex-companion-0.1.7-macos-x64.tar.gz"
      sha256 "d9c67411118b4e25ed287de52466938b71e648d20dc936a262cbb34ddc237624"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.7/codex-companion-0.1.7-linux-arm64.tar.gz"
      sha256 "a683df8a250416100ad2484efca07ab88608bfb927c5c94787c8f3ce329bcb7b"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.7/codex-companion-0.1.7-linux-x64.tar.gz"
      sha256 "3ce5bd77323231148eae55f07e55e8610325a2fbc4208c018c76b51c70bc8eb8"
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
