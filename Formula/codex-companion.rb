class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.30"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.30/codex-companion-0.1.30-macos-arm64.tar.gz"
      sha256 "a7b79d38f742c331a09241679681a5e63bdc461d9738a0fb2f7ec585ce068fdf"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.30/codex-companion-0.1.30-macos-x64.tar.gz"
      sha256 "f576a676c711f9d411002b8358288abd95740add9ebea9c6b93b0e0584682b46"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.30/codex-companion-0.1.30-linux-arm64.tar.gz"
      sha256 "230297ad50db9340f7f982f55d3b58d7f91deb8caf8015f9a7aee06ed5f42147"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.30/codex-companion-0.1.30-linux-x64.tar.gz"
      sha256 "c825d0f726ccfd0ab37e69b10c3d11abf81bc51bca4d72519379e02489ae076b"
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
