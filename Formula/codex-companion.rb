class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.48"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.48/codex-companion-0.1.48-macos-arm64.tar.gz"
      sha256 "8c9b74820a0dcbdf4b98bb72261a1a89a7db6bc19a60769e4675952838dd4f2f"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.48/codex-companion-0.1.48-macos-x64.tar.gz"
      sha256 "2e25b8e3389efb588e992bb6aef7d0095111eb92497e68d6dee3975a6a2be804"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.48/codex-companion-0.1.48-linux-arm64.tar.gz"
      sha256 "d7114392fb11a8488d8995b14d4e17bf0a6e65c7e743d748d3dc1f60f012d87b"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.48/codex-companion-0.1.48-linux-x64.tar.gz"
      sha256 "58791f9d8693c999932dafa943bdcc043ae84a79ea40f402a057546acae0fe48"
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
