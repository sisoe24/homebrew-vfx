cask "nuke@16" do
  version "16.1v5"

  on_arm do
    sha256 "771187a760e4ac5ff41e597d8ed725bf68bf96873df7e11fe6722c8ac6d67446"

    url "https://www.foundry.com/products/download_product?file=Nuke#{version}-mac-arm64.dmg"
  end
  on_intel do
    sha256 "247f9837a6d2bfcdcabe06b5d1d86354f2aeaacafbcb4c35c2ca37b6c139bdb1"

    url "https://www.foundry.com/products/download_product?file=Nuke#{version}-mac-x86_64.dmg"
  end

  name "Nuke#{version}"
  desc "Node-based compositing application"
  homepage "https://www.foundry.com/products/nuke"

  depends_on macos: :sequoia

  app "Nuke#{version}"

  zap trash: [
    "/Applications/Nuke#{version}",
    "~/Library/Preferences/uk.co.thefoundry.Nuke#{version}.plist",
    "~/Library/Saved Application State/uk.co.thefoundry.Nuke#{version}.savedState",
  ]
end
