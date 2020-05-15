package launchers;

import org.graalvm.polyglot.Context;

class JsHelloWorldLauncher {

    public static void main(String[] args) {
        runJsHelloWorld();
    }

    private static void runJsHelloWorld() {
        Context ctx = Context.newBuilder().build();
        ctx.eval("js", "console.log('Hello, world.')");
    }
}