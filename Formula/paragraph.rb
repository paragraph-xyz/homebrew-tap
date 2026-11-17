class Paragraph < Formula
  desc "CLI for Paragraph — manage posts, subscribers, and publications"
  homepage "https://docs.paragraph.com/developers/cli"
  url "https://registry.npmjs.org/@paragraph-com/cli/-/cli-2.0.1.tgz"
  sha256 "a09c4a4d814fc57836745f3c578f9f8e041e1151f01a5e37a86b0f13a5c45a50"
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
