package launchers;

import org.graalvm.polyglot.Context;

public class JsToJavaHelloWorldLauncher {
    public static void main(String[] args) {
        runJavaHelloWorldFromJS();
    }

    private static void runJavaHelloWorldFromJS() {
        Context ctx = Context.newBuilder("js")
                .allowAllAccess(true)
                .option("simple-code-coverage", "true")
                .build();
        ctx.eval("js", "let helloMain = Java.type('hello.Main'); helloMain.main(null)");
    }
}