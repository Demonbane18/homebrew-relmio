class Relmio < Formula
  desc "Set up a private OpenAI-compatible endpoint for self-hosted n8n"
  homepage "https://github.com/Demonbane18/relmio"
  url "https://registry.npmjs.org/relmio/-/relmio-0.4.1.tgz"
  sha256 "7e33d9e28a0268f0b9b2157048493db1825ab2424415a453bbb62f4be9720832"
  license "Apache-2.0"

  depends_on "python" => :build
  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_predicate bin/"relmio", :executable?
    system bin/"relmio", "--version"
  end
end
