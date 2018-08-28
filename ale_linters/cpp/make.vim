call ale#linter#Define('cpp', {
\   'name': 'make',
\   'output_stream': 'stderr',
\   'executable': 'make',
\   'callback': 'ale#handlers#gcc#HandleGCCFormatWithIncludes',
\})

"       {'callback': 'ale_linters#cpp#gcc#GetCommand'},
