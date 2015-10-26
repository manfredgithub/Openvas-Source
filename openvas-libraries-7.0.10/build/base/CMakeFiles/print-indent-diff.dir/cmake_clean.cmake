FILE(REMOVE_RECURSE
  "CMakeFiles/print-indent-diff"
  ".indent.array.c"
  ".indent.credentials.c"
  ".indent.openvas_hosts.c"
  ".indent.cvss.c"
  ".indent.drop_privileges.c"
  ".indent.nvti.c"
  ".indent.nvticache.c"
  ".indent.openvas_compress.c"
  ".indent.openvas_file.c"
  ".indent.openvas_networking.c"
  ".indent.openvas_string.c"
  ".indent.pidfile.c"
  ".indent.settings.c"
  ".indent.gpgme_util.c"
  ".indent.pwpolicy.c"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/print-indent-diff.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
