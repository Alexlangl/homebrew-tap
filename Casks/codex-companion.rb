cask "codex-companion" do
  version "0.1.24"
  sha256 "00c37f69479c4e8d38c51921c245378a8f7c429fe982a620dfe84954aba534d0"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.24/Codex-Companion-0.1.24-macos-universal-dmg.dmg"
  name "Codex Companion"
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"

  app "Codex Companion.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Codex Companion.app"]
  end

  zap trash: "~/.codex-companion"
end
