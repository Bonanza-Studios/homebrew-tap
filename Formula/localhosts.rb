class Localhosts < Formula
  desc "See every local dev server and stop the ones you don't need"
  homepage "https://github.com/Bonanza-Studios/localhosts"
  url "https://github.com/Bonanza-Studios/localhosts.git",
      tag:      "v0.1.0",
      revision: "7e20ee5457266b89ea224f1e9e5c78f2106cb685"
  license "MIT"

  def install
    bin.install "localhosts"
  end

  test do
    assert_match "list dev servers", shell_output("#{bin}/localhosts help")
  end
end
