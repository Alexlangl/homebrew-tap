cask "codex-companion" do
  version "0.1.36"
  sha256 "2831ae93e460acf7349a87a4ef67cbe77637a08818ff8aee8607256d639efe59"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.36/Codex-Companion-0.1.36-macos-universal-dmg.dmg"
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
