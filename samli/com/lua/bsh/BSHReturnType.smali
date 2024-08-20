.class Lcom/lua/bsh/BSHReturnType;
.super Lcom/lua/bsh/SimpleNode;


# instance fields
.field public isVoid:Z


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lua/bsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method a()Lcom/lua/bsh/BSHType;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/BSHType;

    return-object v0
.end method

.method public evalReturnType(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Class;
    .locals 1

    iget-boolean v0, p0, Lcom/lua/bsh/BSHReturnType;->isVoid:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/lua/bsh/BSHReturnType;->a()Lcom/lua/bsh/BSHType;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/BSHType;->getType(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public getTypeDescriptor(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/lua/bsh/BSHReturnType;->isVoid:Z

    if-eqz v0, :cond_0

    const-string v0, "V"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/lua/bsh/BSHReturnType;->a()Lcom/lua/bsh/BSHType;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/lua/bsh/BSHType;->getTypeDescriptor(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
