.class public Lcom/lua/bsh/This;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Runnable;


# instance fields
.field a:Lcom/lua/bsh/NameSpace;

.field transient b:Lcom/lua/bsh/Interpreter;


# direct methods
.method protected constructor <init>(Lcom/lua/bsh/NameSpace;Lcom/lua/bsh/Interpreter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lua/bsh/This;->a:Lcom/lua/bsh/NameSpace;

    iput-object p2, p0, Lcom/lua/bsh/This;->b:Lcom/lua/bsh/Interpreter;

    return-void
.end method

.method static a(Lcom/lua/bsh/NameSpace;Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/This;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/lua/bsh/Capabilities;->canGenerateInterfaces()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "bsh.XThis"

    :goto_0
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/lua/bsh/Reflect;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/This;

    :goto_1
    return-object v0

    :cond_0
    invoke-static {}, Lcom/lua/bsh/Capabilities;->haveSwing()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "bsh.JThis"

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v0, Lcom/lua/bsh/This;

    invoke-direct {v0, p0, p1}, Lcom/lua/bsh/This;-><init>(Lcom/lua/bsh/NameSpace;Lcom/lua/bsh/Interpreter;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "internal error 1 in This: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/lua/bsh/InterpreterError;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "getClass"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "invokeMethod"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "getInterface"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "wait"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "notify"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "notifyAll"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static bind(Lcom/lua/bsh/This;Lcom/lua/bsh/NameSpace;Lcom/lua/bsh/Interpreter;)V
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/This;->a:Lcom/lua/bsh/NameSpace;

    invoke-virtual {v0, p1}, Lcom/lua/bsh/NameSpace;->setParent(Lcom/lua/bsh/NameSpace;)V

    iput-object p2, p0, Lcom/lua/bsh/This;->b:Lcom/lua/bsh/Interpreter;

    return-void
.end method


# virtual methods
.method public getInterface(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Dynamic proxy mechanism not available. Cannot construct interface type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/lua/bsh/UtilEvalError;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/lua/bsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getInterface([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    return-object p0

    :cond_0
    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Dynamic proxy mechanism not available. Cannot construct interface type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v0, p1, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/lua/bsh/UtilEvalError;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lua/bsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNameSpace()Lcom/lua/bsh/NameSpace;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/This;->a:Lcom/lua/bsh/NameSpace;

    return-object v0
.end method

.method public invokeMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/lua/bsh/This;->invokeMethod(Ljava/lang/String;[Ljava/lang/Object;Lcom/lua/bsh/Interpreter;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/SimpleNode;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invokeMethod(Ljava/lang/String;[Ljava/lang/Object;Lcom/lua/bsh/Interpreter;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/SimpleNode;Z)Ljava/lang/Object;
    .locals 7

    if-eqz p2, :cond_0

    array-length v0, p2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_4

    move-object p2, v2

    :cond_0
    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/lua/bsh/This;->b:Lcom/lua/bsh/Interpreter;

    :cond_1
    if-nez p4, :cond_2

    new-instance p4, Lcom/lua/bsh/CallStack;

    iget-object v0, p0, Lcom/lua/bsh/This;->a:Lcom/lua/bsh/NameSpace;

    invoke-direct {p4, v0}, Lcom/lua/bsh/CallStack;-><init>(Lcom/lua/bsh/NameSpace;)V

    :cond_2
    if-nez p5, :cond_3

    sget-object p5, Lcom/lua/bsh/SimpleNode;->JAVACODE:Lcom/lua/bsh/SimpleNode;

    :cond_3
    invoke-static {p2}, Lcom/lua/bsh/Types;->getTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Lcom/lua/bsh/This;->a:Lcom/lua/bsh/NameSpace;

    invoke-virtual {v0, p1, v1, p6}, Lcom/lua/bsh/NameSpace;->getMethod(Ljava/lang/String;[Ljava/lang/Class;Z)Lcom/lua/bsh/BshMethod;
    :try_end_0
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_6

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/lua/bsh/BshMethod;->invoke([Ljava/lang/Object;Lcom/lua/bsh/Interpreter;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/SimpleNode;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_4
    aget-object v1, p2, v0

    if-nez v1, :cond_5

    sget-object v1, Lcom/lua/bsh/Primitive;->NULL:Lcom/lua/bsh/Primitive;

    :goto_3
    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    aget-object v1, p2, v0

    goto :goto_3

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    const-string v2, "toString"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/lua/bsh/This;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    const-string v2, "hashCode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_2

    :cond_8
    const-string v2, "equals"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v0, 0x0

    aget-object v0, p2, v0

    if-ne p0, v0, :cond_b

    const/4 v0, 0x1

    :goto_4
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v1

    goto :goto_2

    :cond_9
    :try_start_1
    iget-object v2, p0, Lcom/lua/bsh/This;->a:Lcom/lua/bsh/NameSpace;

    const-string v3, "invoke"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/lua/bsh/NameSpace;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Lcom/lua/bsh/BshMethod;
    :try_end_1
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_5
    if-eqz v0, :cond_a

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1, p3, p4, p5}, Lcom/lua/bsh/BshMethod;->invoke([Ljava/lang/Object;Lcom/lua/bsh/Interpreter;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/SimpleNode;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_a
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Method "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1, v1}, Lcom/lua/bsh/StringUtil;->methodString(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " not found in bsh scripted object: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/lua/bsh/This;->a:Lcom/lua/bsh/NameSpace;

    invoke-virtual {v1}, Lcom/lua/bsh/NameSpace;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/lua/bsh/EvalError;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p5, p4}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v1

    :cond_b
    const/4 v0, 0x0

    goto :goto_4

    :catch_1
    move-exception v2

    goto :goto_5
.end method

.method public run()V
    .locals 4

    :try_start_0
    const-string v0, "run"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/lua/bsh/This;->invokeMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/lua/bsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/lua/bsh/This;->b:Lcom/lua/bsh/Interpreter;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Exception in runnable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/lua/bsh/Interpreter;->error(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\'this\' reference to Bsh object: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/lua/bsh/This;->a:Lcom/lua/bsh/NameSpace;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
