cask "codex-companion" do
  version "0.1.33"
  sha256 "b2ab2baf1d0a32bcfd16e79940719c24bf5cd1bef76e19c9dd4c0dd13306057a"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.33/Codex-Companion-0.1.33-macos-universal-dmg.dmg"
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
