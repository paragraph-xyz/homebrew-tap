class Paragraph < Formula
  desc "CLI for Paragraph — manage posts, subscribers, and publications"
  homepage "https://docs.paragraph.com/developers/cli"
  url "https://registry.npmjs.org/@paragraph-com/cli/-/cli-1.2.0.tgz"
  sha256 "a6e806ef118c6347aa04d99c71e69ce9d49135408f7b75ba9571673a8578e90f"
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
