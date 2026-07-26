class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.5/codex-companion-0.1.5-macos-arm64.tar.gz"
      sha256 "d1b176092fd8a81123f4299ca69e5ab241f532498539c0fbb322af52059f243a"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.5/codex-companion-0.1.5-macos-x64.tar.gz"
      sha256 "89abe89eff36d90d982d490dc30d85a2ef8ed0a193535a7e90e3dfee0510ff58"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.5/codex-companion-0.1.5-linux-arm64.tar.gz"
      sha256 "370f0d72cd05d271ce0bbf2bf3982be404023482ad20a58c73c936721aa14cb3"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.5/codex-companion-0.1.5-linux-x64.tar.gz"
      sha256 "9e85ed9cf68ead3a8b62c1d09bcb005e314d8aea8f35b87c38e5b7ec989013a6"
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
