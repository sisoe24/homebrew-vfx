cask "nuke@15" do
  # Foundry ships no arm64 build for 15.2v9, so Apple silicon stays on 15.2v7.
  on_arm do
    version "15.2v7"
    sha256 "c50caea31db91fe63deb835b47583c32d5da90e190418601e91fe0e8b1e2f81a"

    url "https://www.foundry.com/products/download_product?file=Nuke#{version}-mac-arm64.dmg"
  end
  on_intel do
    version "15.2v9"
    sha256 "46e8b7f59258c866fe00afc123f9e93aeccb4ec978ae77fe3e3bd7dfc9a3bd34"

    url "https://www.foundry.com/products/download_product?file=Nuke#{version}-mac-x86_64.dmg"
  end

  name "Nuke#{version}"
  desc "Node-based compositing application"
  homepage "https://www.foundry.com/products/nuke"

  depends_on macos: :sonoma

  app "Nuke#{version}"

  zap trash: [
    "/Applications/Nuke#{version}",
    "~/Library/Preferences/uk.co.thefoundry.Nuke#{version}.plist",
    "~/Library/Saved Application State/uk.co.thefoundry.Nuke#{version}.savedState",
  ]
end
