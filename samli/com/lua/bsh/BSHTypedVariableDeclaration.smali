.class Lcom/lua/bsh/BSHTypedVariableDeclaration;
.super Lcom/lua/bsh/SimpleNode;


# instance fields
.field public modifiers:Lcom/lua/bsh/Modifiers;


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lua/bsh/SimpleNode;-><init>(I)V

    return-void
.end method

.method private b()Lcom/lua/bsh/BSHType;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/BSHType;

    return-object v0
.end method


# virtual methods
.method a()[Lcom/lua/bsh/BSHVariableDeclarator;
    .locals 5

    invoke-virtual {p0}, Lcom/lua/bsh/SimpleNode;->jjtGetNumChildren()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    new-array v3, v0, [Lcom/lua/bsh/BSHVariableDeclarator;

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/BSHVariableDeclarator;

    aput-object v0, v3, v4

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 8

    :try_start_0
    invoke-virtual {p1}, Lcom/lua/bsh/CallStack;->top()Lcom/lua/bsh/NameSpace;

    move-result-object v1

    invoke-direct {p0}, Lcom/lua/bsh/BSHTypedVariableDeclaration;->b()Lcom/lua/bsh/BSHType;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/lua/bsh/BSHType;->getType(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lua/bsh/BSHTypedVariableDeclaration;->a()[Lcom/lua/bsh/BSHVariableDeclarator;

    move-result-object v4

    const/4 v0, 0x0

    :goto_0
    array-length v5, v4
    :try_end_0
    .catch Lcom/lua/bsh/EvalError; {:try_start_0 .. :try_end_0} :catch_1

    if-lt v0, v5, :cond_0

    :goto_1
    sget-object v0, Lcom/lua/bsh/Primitive;->VOID:Lcom/lua/bsh/Primitive;

    return-object v0

    :cond_0
    aget-object v5, v4, v0

    :try_start_1
    invoke-virtual {v5, v2, p1, p2}, Lcom/lua/bsh/BSHVariableDeclarator;->eval(Lcom/lua/bsh/BSHType;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/lua/bsh/EvalError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    :try_start_2
    iget-object v5, v5, Lcom/lua/bsh/BSHVariableDeclarator;->name:Ljava/lang/String;

    iget-object v7, p0, Lcom/lua/bsh/BSHTypedVariableDeclaration;->modifiers:Lcom/lua/bsh/Modifiers;

    invoke-virtual {v1, v5, v3, v6, v7}, Lcom/lua/bsh/NameSpace;->setTypedVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/lua/bsh/Modifiers;)V
    :try_end_2
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/lua/bsh/EvalError; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0, p0, p1}, Lcom/lua/bsh/UtilEvalError;->toEvalError(Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)Lcom/lua/bsh/EvalError;

    move-result-object v0

    throw v0
    :try_end_3
    .catch Lcom/lua/bsh/EvalError; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v0

    const-string v1, "Typed variable declaration"

    invoke-virtual {v0, v1}, Lcom/lua/bsh/EvalError;->reThrow(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getTypeDescriptor(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/BSHTypedVariableDeclaration;->b()Lcom/lua/bsh/BSHType;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/lua/bsh/BSHType;->getTypeDescriptor(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
