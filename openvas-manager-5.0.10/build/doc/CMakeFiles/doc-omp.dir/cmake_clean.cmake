FILE(REMOVE_RECURSE
  ".built-html"
  ".built-html_full"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/doc-omp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
