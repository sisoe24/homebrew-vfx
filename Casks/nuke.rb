cask "nuke" do
  version "17.1v3"

  on_arm do
    sha256 "03aa37b71cf58a67595a4baf17cfe3d79d7e1566c3e64788367661cda9505cef"

    url "https://www.foundry.com/products/download_product?file=Nuke#{version}-mac-arm64.dmg"
  end
  on_intel do
    sha256 "23da975cd213a62f99b5b3c5e476c05c95087823dc72bb25832cce5cb315bd73"

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
