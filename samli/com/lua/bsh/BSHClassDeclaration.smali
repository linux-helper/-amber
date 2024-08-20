.class Lcom/lua/bsh/BSHClassDeclaration;
.super Lcom/lua/bsh/SimpleNode;


# instance fields
.field g:Ljava/lang/String;

.field h:Lcom/lua/bsh/Modifiers;

.field i:I

.field j:Z

.field k:Z


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lua/bsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 9

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/lua/bsh/BSHClassDeclaration;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/BSHAmbiguousName;

    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/BSHAmbiguousName;->toClass(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Class;

    move-result-object v4

    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Lcom/lua/bsh/BSHClassDeclaration;->i:I

    new-array v3, v2, [Ljava/lang/Class;

    move v2, v1

    move v1, v0

    :goto_1
    iget v0, p0, Lcom/lua/bsh/BSHClassDeclaration;->i:I

    if-lt v2, v0, :cond_2

    invoke-virtual {p0}, Lcom/lua/bsh/SimpleNode;->jjtGetNumChildren()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/BSHBlock;

    move-object v5, v0

    :goto_2
    :try_start_0
    invoke-static {}, Lcom/lua/bsh/ClassGenerator;->getClassGenerator()Lcom/lua/bsh/ClassGenerator;

    move-result-object v0

    iget-object v1, p0, Lcom/lua/bsh/BSHClassDeclaration;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/lua/bsh/BSHClassDeclaration;->h:Lcom/lua/bsh/Modifiers;

    iget-boolean v6, p0, Lcom/lua/bsh/BSHClassDeclaration;->k:Z

    move-object v7, p1

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/lua/bsh/ClassGenerator;->generateClass(Ljava/lang/String;Lcom/lua/bsh/Modifiers;[Ljava/lang/Class;Ljava/lang/Class;Lcom/lua/bsh/BSHBlock;ZLcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Class;
    :try_end_0
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v4, 0x0

    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v5, Lcom/lua/bsh/BSHBlock;

    const/16 v0, 0x19

    invoke-direct {v5, v0}, Lcom/lua/bsh/BSHBlock;-><init>(I)V

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0, p0, p1}, Lcom/lua/bsh/UtilEvalError;->toEvalError(Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)Lcom/lua/bsh/EvalError;

    move-result-object v0

    throw v0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/BSHAmbiguousName;

    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/BSHAmbiguousName;->toClass(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v2

    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, v0, Lcom/lua/bsh/BSHAmbiguousName;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " is not an interface!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/lua/bsh/EvalError;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "ClassDeclaration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/lua/bsh/BSHClassDeclaration;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
