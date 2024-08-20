.class public Lcom/lua/bsh/TargetError;
.super Lcom/lua/bsh/EvalError;


# instance fields
.field d:Ljava/lang/Throwable;

.field e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;Z)V
    .locals 0

    invoke-direct {p0, p1, p3, p4}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    iput-object p2, p0, Lcom/lua/bsh/TargetError;->d:Ljava/lang/Throwable;

    iput-boolean p5, p0, Lcom/lua/bsh/TargetError;->e:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V
    .locals 6

    const-string v1, "TargetError"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/lua/bsh/TargetError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;Z)V

    return-void
.end method


# virtual methods
.method public getTarget()Ljava/lang/Throwable;
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/TargetError;->d:Ljava/lang/Throwable;

    instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public inNativeCode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lua/bsh/TargetError;->e:Z

    return v0
.end method

.method public printStackTrace()V
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0, v1}, Lcom/lua/bsh/TargetError;->printStackTrace(ZLjava/io/PrintStream;)V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/lua/bsh/TargetError;->printStackTrace(ZLjava/io/PrintStream;)V

    return-void
.end method

.method public printStackTrace(ZLjava/io/PrintStream;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-super {p0, p2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    const-string v0, "--- Target Stack Trace ---"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/TargetError;->d:Ljava/lang/Throwable;

    invoke-virtual {v0, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    return-void
.end method

.method public printTargetError(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/TargetError;->d:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/lua/bsh/Capabilities;->canGenerateInterfaces()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Lcom/lua/bsh/TargetError;->xPrintTargetError(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Lcom/lua/bsh/EvalError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\nTarget exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/lua/bsh/TargetError;->d:Ljava/lang/Throwable;

    invoke-virtual {p0, v1}, Lcom/lua/bsh/TargetError;->printTargetError(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public xPrintTargetError(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/lua/bsh/Interpreter;

    invoke-direct {v0}, Lcom/lua/bsh/Interpreter;-><init>()V

    :try_start_0
    const-string v1, "target"

    invoke-virtual {v0, v1, p1}, Lcom/lua/bsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "import java.lang.reflect.UndeclaredThrowableException;String result=\"\";while ( target instanceof UndeclaredThrowableException ) {\ttarget=target.getUndeclaredThrowable(); \tresult+=\"Nested: \"+target.toString();}return result;"

    invoke-virtual {v0, v1}, Lcom/lua/bsh/Interpreter;->eval(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lcom/lua/bsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "xprintarget: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/lua/bsh/EvalError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/lua/bsh/InterpreterError;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method
