cask "codex-companion" do
  version "0.1.27"
  sha256 "e619cd5fac58d008f2f28df297839ad627f4fefa19a1a655c32b3cebf83eefd4"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.27/Codex-Companion-0.1.27-macos-universal-dmg.dmg"
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
