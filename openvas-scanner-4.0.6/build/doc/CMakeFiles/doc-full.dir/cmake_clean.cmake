FILE(REMOVE_RECURSE
  "CMakeFiles/doc-full"
  ".built-html_full"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/doc-full.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
