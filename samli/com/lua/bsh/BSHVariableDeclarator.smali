.class Lcom/lua/bsh/BSHVariableDeclarator;
.super Lcom/lua/bsh/SimpleNode;


# instance fields
.field public name:Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lua/bsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public eval(Lcom/lua/bsh/BSHType;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lcom/lua/bsh/SimpleNode;->jjtGetNumChildren()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/SimpleNode;

    if-eqz p1, :cond_0

    instance-of v1, v0, Lcom/lua/bsh/BSHArrayInitializer;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/lua/bsh/BSHArrayInitializer;

    invoke-virtual {p1}, Lcom/lua/bsh/BSHType;->getBaseType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lua/bsh/BSHType;->getArrayDims()I

    move-result v2

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/lua/bsh/BSHArrayInitializer;->eval(Ljava/lang/Class;ILcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    sget-object v1, Lcom/lua/bsh/Primitive;->VOID:Lcom/lua/bsh/Primitive;

    if-eq v0, v1, :cond_2

    return-object v0

    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/lua/bsh/SimpleNode;->eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/lua/bsh/EvalError;

    const-string v1, "Void initializer."

    invoke-direct {v0, v1, p0, p2}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "BSHVariableDeclarator "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/lua/bsh/BSHVariableDeclarator;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
