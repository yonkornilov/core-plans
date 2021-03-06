$pkg_name="nasm"
$pkg_distname="$pkg_name"
$pkg_origin="core"
$pkg_version="2.12.02"
$pkg_description="The Netwide Assembler, NASM, is an 80x86 and x86-64 assembler designed for portability and modularity."
$pkg_upstream_url="http://www.nasm.us/"
$pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
$pkg_license=@("BSD-2-Clause")
$pkg_source="http://www.nasm.us/pub/$pkg_distname/releasebuilds/${pkg_version}/win64/$pkg_distname-${pkg_version}-win64.zip"
$pkg_shasum="6dc3a56979b2618f6bf9cc4e148f7dc99334b2e2c1aea0a9f2094128c950ca26"
$pkg_bin_dirs=@("bin")

function Invoke-Install {
    Copy-Item "$HAB_CACHE_SRC_PATH/$pkg_dirname/$pkg_name-$pkg_version/*" "$pkg_prefix/bin" -Recurse -Force
}
