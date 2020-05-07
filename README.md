# `ex_graalvm_with_custom_truffle`

This example project is meant to demonstrate different ways to invoke the
GraalVM with a custom Truffle language or tool (a.k.a. instrument).

## Building Example Truffle Projects

This project uses two Truffle examples provided by GraalVM, `simplelanguage` and
`simpletool`. These example projects are included in this project as [Git
submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules) under
`external/`.

These projects are used in GraalVM's official documentation:

- [Implement Your Language](https://www.graalvm.org/docs/graalvm-as-a-platform/implement-language/)
- [Implement Your Tools](https://www.graalvm.org/docs/graalvm-as-a-platform/implement-instrument/)

Both are Maven projects. Project build artifacts can be created with
`mvn package`.

**`simpletool`:** This project can be built with a standard GraalVM
distribution. Running `mvn package` from `external/simpletool` should create
`external/simpletool/simpletool-20.0.0.jar`.

**`simplelanguage`:** This project can be built with a standard GraalVM
distribution once `native-image` is installed via `gu`. Running `mvn package`
from `external/simplelanguage` should create a number of artifacts:

- `simplelanguage`
- `launcher`
- `simplelanguage-graalvm-native`
- `simplelanguage-graalvm-component`

Notice that both of these builds involve Java code generation via annotation
processors. (E.g., `external/simplelanguage/language/target/generated-sources/**`.)
