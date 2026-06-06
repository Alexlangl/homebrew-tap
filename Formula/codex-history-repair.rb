class CodexHistoryRepair < Formula
  desc "Repair local Codex history after provider switching"
  homepage "https://github.com/Alexlangl/codex-history-repair"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-history-repair/releases/download/v0.1.1/codex-history-repair-0.1.1-macos-arm64.tar.gz"
      sha256 "f89e86fc527d88e2d62e27c9b0b042993257c02d49a216daa85a6d47bcbb52c4"
    else
      url "https://github.com/Alexlangl/codex-history-repair/releases/download/v0.1.1/codex-history-repair-0.1.1-macos-x64.tar.gz"
      sha256 "170ba46433e0ab96947b7688c76662cb9a8a15736b74fc0c3298a0b87608c8af"
    end
  end

  def install
    bin.install "codex-history-repair"
  end

  test do
    system "#{bin}/codex-history-repair", "--help"
  end
end
