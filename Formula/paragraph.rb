class Paragraph < Formula
  desc "CLI for Paragraph — manage posts, subscribers, and publications"
  homepage "https://docs.paragraph.com/developers/cli"
  url "https://registry.npmjs.org/@paragraph-com/cli/-/cli-1.0.0.tgz"
  sha256 "b9bba828dd7b4ad54db1060151b2ea73d976d6f6507f6a9844ee0b043f4d6ee8"
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
