cask "codex-companion" do
  version "0.1.40"
  sha256 "32e8213510357288f9135a5aac4b576358fe961e5ec72b4f7c681563ca9beac3"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.40/Codex-Companion-0.1.40-macos-universal-dmg.dmg"
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
