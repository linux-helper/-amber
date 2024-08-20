.class Lcom/lua/bsh/BSHThrowStatement;
.super Lcom/lua/bsh/SimpleNode;


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lua/bsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/SimpleNode;

    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/SimpleNode;->eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Exception;

    if-nez v1, :cond_0

    new-instance v0, Lcom/lua/bsh/EvalError;

    const-string v1, "Expression in \'throw\' must be Exception type"

    invoke-direct {v0, v1, p0, p1}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v0

    :cond_0
    new-instance v1, Lcom/lua/bsh/TargetError;

    check-cast v0, Ljava/lang/Exception;

    invoke-direct {v1, v0, p0, p1}, Lcom/lua/bsh/TargetError;-><init>(Ljava/lang/Throwable;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v1
.end method
