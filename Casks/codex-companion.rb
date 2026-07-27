cask "codex-companion" do
  version "0.1.7"
  sha256 "fadb07ecbecc216f5a91bf3e474d54ed03249f799261dcf007f41fafc4a49029"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.7/Codex-Companion-0.1.7-macos-universal-dmg.dmg"
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
