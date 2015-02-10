class Scalpel < Formula
  homepage "https://github.com/sleuthkit/scalpel"
  url "https://github.com/githubutilities/scalpel/archive/v2.0.1.tar.gz"
  sha1 "4bc9068ca9436e6cea5a188b4f4b9bce978de4e3"

  depends_on 'autoconf' => :build
  depends_on 'automake' => :build
  depends_on 'libtool' => :build
  depends_on 'tre'

  def install
    system "./bootstrap"
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
    etc.install "scalpel.conf" => "scalpel.conf.sample"
  end

end
