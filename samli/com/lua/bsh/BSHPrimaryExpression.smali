.class Lcom/lua/bsh/BSHPrimaryExpression;
.super Lcom/lua/bsh/SimpleNode;


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lua/bsh/SimpleNode;-><init>(I)V

    return-void
.end method

.method private a(ZLcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lua/bsh/SimpleNode;->jjtGetNumChildren()I

    move-result v3

    const/4 v0, 0x1

    move v2, v0

    move-object v0, v1

    :goto_0
    if-lt v2, v3, :cond_6

    instance-of v1, v0, Lcom/lua/bsh/SimpleNode;

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/lua/bsh/BSHAmbiguousName;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    check-cast v0, Lcom/lua/bsh/BSHAmbiguousName;

    invoke-virtual {v0, p2, p3}, Lcom/lua/bsh/BSHAmbiguousName;->toLHS(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/LHS;

    move-result-object v0

    :cond_0
    :goto_1
    instance-of v1, v0, Lcom/lua/bsh/LHS;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_5

    :cond_1
    :goto_2
    return-object v0

    :cond_2
    check-cast v0, Lcom/lua/bsh/BSHAmbiguousName;

    invoke-virtual {v0, p2, p3}, Lcom/lua/bsh/BSHAmbiguousName;->toObject(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    check-cast v0, Lcom/lua/bsh/SimpleNode;

    invoke-virtual {v0, p2, p3}, Lcom/lua/bsh/SimpleNode;->eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/lua/bsh/EvalError;

    const-string v1, "Can\'t assign to prefix."

    invoke-direct {v0, v1, p0, p2}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v0

    :cond_5
    :try_start_0
    check-cast v0, Lcom/lua/bsh/LHS;

    invoke-virtual {v0}, Lcom/lua/bsh/LHS;->getValue()Ljava/lang/Object;
    :try_end_0
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0, p0, p2}, Lcom/lua/bsh/UtilEvalError;->toEvalError(Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)Lcom/lua/bsh/EvalError;

    move-result-object v0

    throw v0

    :cond_6
    invoke-virtual {p0, v2}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v1

    check-cast v1, Lcom/lua/bsh/BSHPrimarySuffix;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/lua/bsh/BSHPrimarySuffix;->doSuffix(Ljava/lang/Object;ZLcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/lua/bsh/BSHPrimaryExpression;->a(ZLcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toLHS(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Lcom/lua/bsh/LHS;
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/lua/bsh/BSHPrimaryExpression;->a(ZLcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/lua/bsh/LHS;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/lua/bsh/LHS;

    return-object v0

    :cond_0
    new-instance v0, Lcom/lua/bsh/EvalError;

    const-string v1, "Can\'t assign to:"

    invoke-direct {v0, v1, p0, p1}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v0
.end method
