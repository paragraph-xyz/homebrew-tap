class Paragraph < Formula
  desc "CLI for Paragraph — manage posts, subscribers, and publications"
  homepage "https://github.com/paragraph-xyz/paragraph-cli"
  url "https://github.com/paragraph-xyz/paragraph-cli/releases/download/v0.0.1/paragraph-cli-v0.0.1.tgz"
  sha256 "01991ffdd227cc4113a07ae1f629dd60cbf6ea7651358ca54a1d1e3ce286bb6e"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/paragraph --version").strip
  end
end
