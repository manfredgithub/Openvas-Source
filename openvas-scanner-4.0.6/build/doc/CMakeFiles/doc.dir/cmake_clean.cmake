FILE(REMOVE_RECURSE
  "CMakeFiles/doc"
  ".built-html"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/doc.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
