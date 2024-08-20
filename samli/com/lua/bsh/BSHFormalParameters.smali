.class Lcom/lua/bsh/BSHFormalParameters;
.super Lcom/lua/bsh/SimpleNode;


# instance fields
.field private g:[Ljava/lang/String;

.field h:[Ljava/lang/Class;

.field i:I

.field j:[Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lua/bsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    iget-object v0, p0, Lcom/lua/bsh/BSHFormalParameters;->g:[Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/lua/bsh/SimpleNode;->jjtGetNumChildren()I

    move-result v0

    iput v0, p0, Lcom/lua/bsh/BSHFormalParameters;->i:I

    iget v0, p0, Lcom/lua/bsh/BSHFormalParameters;->i:I

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget v0, p0, Lcom/lua/bsh/BSHFormalParameters;->i:I

    if-lt v1, v0, :cond_1

    iput-object v2, p0, Lcom/lua/bsh/BSHFormalParameters;->g:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/BSHFormalParameter;

    iget-object v0, v0, Lcom/lua/bsh/BSHFormalParameter;->name:Ljava/lang/String;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/lua/bsh/BSHFormalParameters;->h:[Ljava/lang/Class;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/lua/bsh/BSHFormalParameters;->a()V

    iget v0, p0, Lcom/lua/bsh/BSHFormalParameters;->i:I

    new-array v1, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    iget v0, p0, Lcom/lua/bsh/BSHFormalParameters;->i:I

    if-lt v2, v0, :cond_1

    iput-object v1, p0, Lcom/lua/bsh/BSHFormalParameters;->h:[Ljava/lang/Class;

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/BSHFormalParameter;

    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/BSHFormalParameter;->eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    aput-object v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method public getParamNames()[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/lua/bsh/BSHFormalParameters;->a()V

    iget-object v0, p0, Lcom/lua/bsh/BSHFormalParameters;->g:[Ljava/lang/String;

    return-object v0
.end method

.method public getTypeDescriptors(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/lua/bsh/BSHFormalParameters;->j:[Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/lua/bsh/BSHFormalParameters;->a()V

    iget v0, p0, Lcom/lua/bsh/BSHFormalParameters;->i:I

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    iget v0, p0, Lcom/lua/bsh/BSHFormalParameters;->i:I

    if-lt v2, v0, :cond_1

    iput-object v1, p0, Lcom/lua/bsh/BSHFormalParameters;->j:[Ljava/lang/String;

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/BSHFormalParameter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lua/bsh/BSHFormalParameter;->getTypeDescriptor(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method
