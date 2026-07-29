cask "codex-companion" do
  version "0.1.9"
  sha256 "7ffc816332caed2a03acac5afc17829291a0d57cd74508e6cc01e9e0c2f57a43"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.9/Codex-Companion-0.1.9-macos-universal-dmg.dmg"
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
