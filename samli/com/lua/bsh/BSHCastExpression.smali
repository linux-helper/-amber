.class Lcom/lua/bsh/BSHCastExpression;
.super Lcom/lua/bsh/SimpleNode;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lua/bsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/lua/bsh/CallStack;->top()Lcom/lua/bsh/NameSpace;

    invoke-virtual {p0, v0}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/BSHType;

    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/BSHType;->getType(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Class;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/SimpleNode;

    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/SimpleNode;->eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, v1, v2}, Lcom/lua/bsh/Types;->castObject(Ljava/lang/Object;Ljava/lang/Class;I)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0, p0, p1}, Lcom/lua/bsh/UtilEvalError;->toEvalError(Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)Lcom/lua/bsh/EvalError;

    move-result-object v0

    throw v0
.end method
