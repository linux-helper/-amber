.class Lcom/lua/bsh/BSHSwitchStatement;
.super Lcom/lua/bsh/SimpleNode;

# interfaces
.implements Lcom/lua/bsh/ParserConstants;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lua/bsh/SimpleNode;-><init>(I)V

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/SimpleNode;)Z
    .locals 3

    instance-of v0, p1, Lcom/lua/bsh/Primitive;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/lua/bsh/Primitive;

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x5a

    :try_start_0
    invoke-static {p1, p2, v0}, Lcom/lua/bsh/Primitive;->binaryOperation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/lua/bsh/Primitive;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Switch value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p4}, Lcom/lua/bsh/SimpleNode;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p3}, Lcom/lua/bsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)Lcom/lua/bsh/EvalError;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 8

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/lua/bsh/SimpleNode;->jjtGetNumChildren()I

    move-result v5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/SimpleNode;

    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/SimpleNode;->eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v6

    if-ge v1, v5, :cond_9

    const/4 v3, 0x2

    invoke-virtual {p0, v1}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v1

    check-cast v1, Lcom/lua/bsh/BSHSwitchLabel;

    const/4 v2, 0x0

    move-object v4, v1

    move v1, v3

    :cond_0
    :goto_0
    if-ge v1, v5, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    if-eqz v2, :cond_8

    iget v0, v2, Lcom/lua/bsh/ReturnControl;->kind:I

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_8

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_2
    iget-boolean v3, v4, Lcom/lua/bsh/BSHSwitchLabel;->g:Z

    if-nez v3, :cond_3

    invoke-virtual {v4, p1, p2}, Lcom/lua/bsh/BSHSwitchLabel;->eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v6, v3, p1, v0}, Lcom/lua/bsh/BSHSwitchStatement;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/SimpleNode;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    :goto_2
    if-ge v1, v5, :cond_0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v1

    instance-of v7, v1, Lcom/lua/bsh/BSHSwitchLabel;

    if-eqz v7, :cond_7

    :cond_4
    move v1, v3

    goto :goto_2

    :cond_5
    move v1, v3

    :cond_6
    if-ge v1, v5, :cond_0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v1

    instance-of v7, v1, Lcom/lua/bsh/BSHSwitchLabel;

    if-eqz v7, :cond_5

    check-cast v1, Lcom/lua/bsh/BSHSwitchLabel;

    move-object v4, v1

    move v1, v3

    goto :goto_0

    :cond_7
    check-cast v1, Lcom/lua/bsh/SimpleNode;

    invoke-virtual {v1, p1, p2}, Lcom/lua/bsh/SimpleNode;->eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v1

    instance-of v7, v1, Lcom/lua/bsh/ReturnControl;

    if-eqz v7, :cond_4

    check-cast v1, Lcom/lua/bsh/ReturnControl;

    move-object v2, v1

    move v1, v3

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/lua/bsh/Primitive;->VOID:Lcom/lua/bsh/Primitive;

    goto :goto_1

    :cond_9
    new-instance v0, Lcom/lua/bsh/EvalError;

    const-string v1, "Empty switch statement."

    invoke-direct {v0, v1, p0, p1}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v0
.end method
