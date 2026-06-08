class CodexHistoryRepair < Formula
  desc "Repair local Codex history after provider switching"
  homepage "https://github.com/Alexlangl/codex-history-repair"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-history-repair/releases/download/v0.1.2/codex-history-repair-0.1.2-macos-arm64.tar.gz"
      sha256 "9aec0d70f04862b8beb0f102ad0432e55b3e414d92037810bed34fefb3d4be77"
    else
      url "https://github.com/Alexlangl/codex-history-repair/releases/download/v0.1.2/codex-history-repair-0.1.2-macos-x64.tar.gz"
      sha256 "3a643f2d9ce0b2cbd1da028d0a7c8d022123b87deb2192c3832c6f227c699bec"
    end
  end

  def install
    bin.install "codex-history-repair"
  end

  test do
    system "#{bin}/codex-history-repair", "--help"
  end
end
