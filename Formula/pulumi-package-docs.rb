class PulumiPackageDocs < Formula
  desc "Local documentation viewer for parameterized/local Pulumi providers"
  homepage "https://github.com/pierskarsenbarg/pulumi-package-docs"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pierskarsenbarg/pulumi-package-docs/releases/download/v0.9.1/pulumi-package-docs-darwin-arm64"
      sha256 "aa0cc5384876738c70249030d93c4c36085dc422e425c90195c81ab2bd3c6c74"
    end
    on_intel do
      url "https://github.com/pierskarsenbarg/pulumi-package-docs/releases/download/v0.9.1/pulumi-package-docs-darwin-x64"
      sha256 "a839dd2863fdd2f0a83244e121bc94433205d668eaabd9c7e31d95c3cc5e604c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pierskarsenbarg/pulumi-package-docs/releases/download/v0.9.1/pulumi-package-docs-linux-arm64"
      sha256 "26ed19a902c57792670e41b327b348d6c5c73e6806a0a8e16ebab8b97b78ac4f"
    end
    on_intel do
      url "https://github.com/pierskarsenbarg/pulumi-package-docs/releases/download/v0.9.1/pulumi-package-docs-linux-x64"
      sha256 "cafab102ff4eaebd8ceb2b2dcb5affb3698dd939d3d471bbcb325e580bb3b4db"
    end
  end

  def install
    bin.install Dir["pulumi-package-docs-*"].first => "pulumi-package-docs"
  end

  test do
    system "#{bin}/pulumi-package-docs", "--help"
  end
end
