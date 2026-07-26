cask "codex-companion" do
  version "0.1.5"
  sha256 "6bd1dcd1a01734a14db37a7f1f56891c0c78348f8062806b05034ee1e5c6c705"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.5/Codex-Companion-0.1.5-macos-universal-dmg.dmg"
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
