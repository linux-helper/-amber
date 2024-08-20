.class Lcom/lua/bsh/BSHIfStatement;
.super Lcom/lua/bsh/SimpleNode;


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lua/bsh/SimpleNode;-><init>(I)V

    return-void
.end method

.method public static evaluateCondition(Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Z
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/lua/bsh/SimpleNode;->eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/lua/bsh/Primitive;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/lua/bsh/Primitive;->VOID:Lcom/lua/bsh/Primitive;

    if-eq v0, v1, :cond_1

    check-cast v0, Lcom/lua/bsh/Primitive;

    invoke-virtual {v0}, Lcom/lua/bsh/Primitive;->getValue()Ljava/lang/Object;

    move-result-object v0

    :cond_0
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    new-instance v0, Lcom/lua/bsh/EvalError;

    const-string v1, "Condition evaluates to void type"

    invoke-direct {v0, v1, p0, p1}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/lua/bsh/EvalError;

    const-string v1, "Condition must evaluate to a Boolean or boolean."

    invoke-direct {v0, v1, p0, p1}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v0
.end method


# virtual methods
.method public eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/SimpleNode;

    invoke-static {v0, p1, p2}, Lcom/lua/bsh/BSHIfStatement;->evaluateCondition(Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/lua/bsh/SimpleNode;

    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/SimpleNode;->eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    instance-of v1, v0, Lcom/lua/bsh/ReturnControl;

    if-eqz v1, :cond_2

    :goto_2
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/lua/bsh/SimpleNode;->jjtGetNumChildren()I

    move-result v0

    if-le v0, v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/lua/bsh/Primitive;->VOID:Lcom/lua/bsh/Primitive;

    goto :goto_2
.end method
