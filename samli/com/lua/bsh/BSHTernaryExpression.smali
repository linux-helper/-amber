.class Lcom/lua/bsh/BSHTernaryExpression;
.super Lcom/lua/bsh/SimpleNode;


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lua/bsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/SimpleNode;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v1

    check-cast v1, Lcom/lua/bsh/SimpleNode;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v2

    check-cast v2, Lcom/lua/bsh/SimpleNode;

    invoke-static {v0, p1, p2}, Lcom/lua/bsh/BSHIfStatement;->evaluateCondition(Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/lua/bsh/SimpleNode;->eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v2, p1, p2}, Lcom/lua/bsh/SimpleNode;->eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
