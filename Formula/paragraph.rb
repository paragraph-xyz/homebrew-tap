class Paragraph < Formula
  desc "CLI for Paragraph — manage posts, subscribers, and publications"
  homepage "https://github.com/paragraph-xyz/paragraph-cli"
  url "https://github.com/paragraph-xyz/paragraph-cli/releases/download/v0.1.0/paragraph-cli-v0.1.0.tgz"
  sha256 "056064a1a25232970bedefdba6c7087bc54ebce264bdb98ba4c9d753e79be7a6"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["\#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/paragraph --version").strip
  end
end
