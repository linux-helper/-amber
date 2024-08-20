.class Lcom/lua/bsh/BSHFormalParameter;
.super Lcom/lua/bsh/SimpleNode;


# static fields
.field public static final UNTYPED:Ljava/lang/Class;


# instance fields
.field public name:Ljava/lang/String;

.field public type:Ljava/lang/Class;


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lua/bsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/lua/bsh/SimpleNode;->jjtGetNumChildren()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/BSHType;

    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/BSHType;->getType(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/lua/bsh/BSHFormalParameter;->type:Ljava/lang/Class;

    iget-object v0, p0, Lcom/lua/bsh/BSHFormalParameter;->type:Ljava/lang/Class;

    return-object v0

    :cond_0
    sget-object v0, Lcom/lua/bsh/BSHFormalParameter;->UNTYPED:Ljava/lang/Class;

    goto :goto_0
.end method

.method public getTypeDescriptor(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/lua/bsh/SimpleNode;->jjtGetNumChildren()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/BSHType;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lua/bsh/BSHType;->getTypeDescriptor(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Ljava/lang/Object;"

    goto :goto_0
.end method
