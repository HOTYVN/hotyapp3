# Contributing to Win32

Contributions are very much appreciated. With thousands of Win32 APIs, there's a
lot of ground to cover. Don't hesitate to ask questions.

Some tips:

## Classic Win32 APIs

- When wrapping a Win32 API, use the Unicode ('W') wide variants of these APIs,
  rather than the ANSI ('A') variants. For example:
  [CredWriteW](https://learn.microsoft.com/windows/win32/api/wincred/nf-wincred-credwritew),
  rather than
  [CredWriteA](https://learn.microsoft.com/windows/win32/api/wincred/nf-wincred-credwritea).

- To create a new API, *don't* edit the main library files themselves; these get
  overwritten. Instead, edit `win32_functions.json` in the `data\` folder and run
  `tool\generate.cmd` to update the library files.

- Structs can be auto-generated by adding them to `win32_structs.json` which
  generate the appropriate Dart files.

- Constants belong in `constants.dart`; please add documentation. In rare cases
  (where the constant is truly self-documenting), you may add to
  `constants_nodoc.dart`, although the goal is to gradually document more
  constants.

- There are plenty of good existing patterns to build off in these locations;
  try to mirror an existing function if you can for consistency!

- Ideally pull requests for new API submissions include a sample (`example\`
  directory) and some tests (`tests\` directory).

## COM APIs

- Edit `data\com_types.json` with the COM interface to be generated.

Now run `generate.cmd` from the `tools\` directory, which should create the
relevant class in the `\lib\src\com` directory.