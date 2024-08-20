.class Lcom/lua/bsh/BSHMethodDeclaration;
.super Lcom/lua/bsh/SimpleNode;


# instance fields
.field a:Lcom/lua/bsh/BSHReturnType;

.field b:Lcom/lua/bsh/BSHFormalParameters;

.field c:Lcom/lua/bsh/BSHBlock;

.field d:I

.field e:Ljava/lang/Class;

.field f:I

.field public modifiers:Lcom/lua/bsh/Modifiers;

.field public name:Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/lua/bsh/SimpleNode;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/lua/bsh/BSHMethodDeclaration;->f:I

    return-void
.end method

.method private a(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/lua/bsh/BSHMethodDeclaration;->b()V

    iget v0, p0, Lcom/lua/bsh/BSHMethodDeclaration;->d:I

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/lua/bsh/BSHMethodDeclaration;->f:I

    iget v2, p0, Lcom/lua/bsh/BSHMethodDeclaration;->d:I

    add-int/2addr v0, v2

    if-lt v1, v0, :cond_4

    iget-object v0, p0, Lcom/lua/bsh/BSHMethodDeclaration;->b:Lcom/lua/bsh/BSHFormalParameters;

    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/BSHFormalParameters;->eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/lua/bsh/Interpreter;->getStrictJava()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/lua/bsh/BSHMethodDeclaration;->b:Lcom/lua/bsh/BSHFormalParameters;

    iget-object v1, v1, Lcom/lua/bsh/BSHFormalParameters;->h:[Ljava/lang/Class;

    array-length v2, v1

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lcom/lua/bsh/BSHMethodDeclaration;->e:Ljava/lang/Class;

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "(Strict Java Mode) Undeclared return type for method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/lua/bsh/BSHMethodDeclaration;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/lua/bsh/EvalError;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, v3}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v1

    :cond_2
    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "(Strict Java Mode) Undeclared argument type, parameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/lua/bsh/BSHMethodDeclaration;->b:Lcom/lua/bsh/BSHFormalParameters;

    invoke-virtual {v2}, Lcom/lua/bsh/BSHFormalParameters;->getParamNames()[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " in method: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/lua/bsh/BSHMethodDeclaration;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/lua/bsh/EvalError;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, v3}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v0

    :cond_4
    invoke-virtual {p0, v1}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/BSHAmbiguousName;

    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/BSHAmbiguousName;->toClass(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Class;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method a()Lcom/lua/bsh/BSHReturnType;
    .locals 1

    invoke-virtual {p0}, Lcom/lua/bsh/BSHMethodDeclaration;->b()V

    iget-object v0, p0, Lcom/lua/bsh/BSHMethodDeclaration;->a:Lcom/lua/bsh/BSHReturnType;

    return-object v0
.end method

.method a(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/lua/bsh/BSHMethodDeclaration;->b()V

    iget-object v0, p0, Lcom/lua/bsh/BSHMethodDeclaration;->a:Lcom/lua/bsh/BSHReturnType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/lua/bsh/BSHReturnType;->getTypeDescriptor(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lua/bsh/BSHMethodDeclaration;->b:Lcom/lua/bsh/BSHFormalParameters;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, p0, Lcom/lua/bsh/BSHMethodDeclaration;->d:I

    instance-of v1, v0, Lcom/lua/bsh/BSHReturnType;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/lua/bsh/BSHReturnType;

    iput-object v0, p0, Lcom/lua/bsh/BSHMethodDeclaration;->a:Lcom/lua/bsh/BSHReturnType;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/BSHFormalParameters;

    iput-object v0, p0, Lcom/lua/bsh/BSHMethodDeclaration;->b:Lcom/lua/bsh/BSHFormalParameters;

    invoke-virtual {p0}, Lcom/lua/bsh/SimpleNode;->jjtGetNumChildren()I

    move-result v0

    iget v1, p0, Lcom/lua/bsh/BSHMethodDeclaration;->f:I

    add-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/lua/bsh/BSHMethodDeclaration;->f:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/BSHBlock;

    iput-object v0, p0, Lcom/lua/bsh/BSHMethodDeclaration;->c:Lcom/lua/bsh/BSHBlock;

    :cond_1
    iget v0, p0, Lcom/lua/bsh/BSHMethodDeclaration;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lua/bsh/BSHMethodDeclaration;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/BSHFormalParameters;

    iput-object v0, p0, Lcom/lua/bsh/BSHMethodDeclaration;->b:Lcom/lua/bsh/BSHFormalParameters;

    iget v0, p0, Lcom/lua/bsh/BSHMethodDeclaration;->f:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/BSHBlock;

    iput-object v0, p0, Lcom/lua/bsh/BSHMethodDeclaration;->c:Lcom/lua/bsh/BSHBlock;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/lua/bsh/BSHMethodDeclaration;->evalReturnType(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/lua/bsh/BSHMethodDeclaration;->e:Ljava/lang/Class;

    invoke-direct {p0, p1, p2}, Lcom/lua/bsh/BSHMethodDeclaration;->a(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)V

    invoke-virtual {p1}, Lcom/lua/bsh/CallStack;->top()Lcom/lua/bsh/NameSpace;

    move-result-object v0

    new-instance v1, Lcom/lua/bsh/BshMethod;

    iget-object v2, p0, Lcom/lua/bsh/BSHMethodDeclaration;->modifiers:Lcom/lua/bsh/Modifiers;

    invoke-direct {v1, p0, v0, v2}, Lcom/lua/bsh/BshMethod;-><init>(Lcom/lua/bsh/BSHMethodDeclaration;Lcom/lua/bsh/NameSpace;Lcom/lua/bsh/Modifiers;)V

    :try_start_0
    iget-object v2, p0, Lcom/lua/bsh/BSHMethodDeclaration;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/lua/bsh/NameSpace;->setMethod(Ljava/lang/String;Lcom/lua/bsh/BshMethod;)V
    :try_end_0
    .catch Lcom/lua/bsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Lcom/lua/bsh/Primitive;->VOID:Lcom/lua/bsh/Primitive;

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0, p0, p1}, Lcom/lua/bsh/UtilEvalError;->toEvalError(Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)Lcom/lua/bsh/EvalError;

    move-result-object v0

    throw v0
.end method

.method evalReturnType(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Class;
    .locals 1

    invoke-virtual {p0}, Lcom/lua/bsh/BSHMethodDeclaration;->b()V

    iget-object v0, p0, Lcom/lua/bsh/BSHMethodDeclaration;->a:Lcom/lua/bsh/BSHReturnType;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/BSHReturnType;->evalReturnType(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "MethodDeclaration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/lua/bsh/BSHMethodDeclaration;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
