.class Lcom/lua/bsh/BSHMethodInvocation;
.super Lcom/lua/bsh/SimpleNode;


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lua/bsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method a()Lcom/lua/bsh/BSHArguments;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/BSHArguments;

    return-object v0
.end method

.method b()Lcom/lua/bsh/BSHAmbiguousName;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/BSHAmbiguousName;

    return-object v0
.end method

.method public eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p1}, Lcom/lua/bsh/CallStack;->top()Lcom/lua/bsh/NameSpace;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lua/bsh/BSHMethodInvocation;->b()Lcom/lua/bsh/BSHAmbiguousName;

    move-result-object v1

    invoke-virtual {v0}, Lcom/lua/bsh/NameSpace;->getParent()Lcom/lua/bsh/NameSpace;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/lua/bsh/NameSpace;->getParent()Lcom/lua/bsh/NameSpace;

    move-result-object v2

    iget-boolean v2, v2, Lcom/lua/bsh/NameSpace;->p:Z

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/lua/bsh/BSHAmbiguousName;->text:Ljava/lang/String;

    const-string v3, "super"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/lua/bsh/BSHAmbiguousName;->text:Ljava/lang/String;

    const-string v3, "this"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    sget-object v0, Lcom/lua/bsh/Primitive;->VOID:Lcom/lua/bsh/Primitive;

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1, v0}, Lcom/lua/bsh/BSHAmbiguousName;->getName(Lcom/lua/bsh/NameSpace;)Lcom/lua/bsh/Name;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lua/bsh/BSHMethodInvocation;->a()Lcom/lua/bsh/BSHArguments;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/lua/bsh/BSHArguments;->getArguments(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)[Ljava/lang/Object;

    move-result-object v1

    :try_start_0
    invoke-virtual {v0, p2, v1, p1, p0}, Lcom/lua/bsh/Name;->invokeMethod(Lcom/lua/bsh/Interpreter;[Ljava/lang/Object;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/SimpleNode;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/lua/bsh/ReflectError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0, p0, p1}, Lcom/lua/bsh/UtilEvalError;->toEvalError(Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)Lcom/lua/bsh/EvalError;

    move-result-object v0

    throw v0

    :catch_1
    move-exception v2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Method Invocation "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v0, v2, Lcom/lua/bsh/EvalError;

    if-eqz v0, :cond_3

    instance-of v0, v2, Lcom/lua/bsh/TargetError;

    if-eqz v0, :cond_2

    move-object v0, v2

    check-cast v0, Lcom/lua/bsh/TargetError;

    invoke-virtual {v0}, Lcom/lua/bsh/TargetError;->inNativeCode()Z

    move-result v5

    :goto_1
    new-instance v0, Lcom/lua/bsh/TargetError;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/lua/bsh/TargetError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;Z)V

    throw v0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    const/4 v5, 0x1

    goto :goto_1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Error in method invocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/lua/bsh/EvalError;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v0
.end method
