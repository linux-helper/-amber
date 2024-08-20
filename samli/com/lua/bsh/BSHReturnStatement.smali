.class Lcom/lua/bsh/BSHReturnStatement;
.super Lcom/lua/bsh/SimpleNode;

# interfaces
.implements Lcom/lua/bsh/ParserConstants;


# instance fields
.field public kind:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lua/bsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lcom/lua/bsh/SimpleNode;->jjtGetNumChildren()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/SimpleNode;

    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/SimpleNode;->eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/lua/bsh/ReturnControl;

    iget v2, p0, Lcom/lua/bsh/BSHReturnStatement;->kind:I

    invoke-direct {v1, v2, v0, p0}, Lcom/lua/bsh/ReturnControl;-><init>(ILjava/lang/Object;Lcom/lua/bsh/SimpleNode;)V

    return-object v1

    :cond_0
    sget-object v0, Lcom/lua/bsh/Primitive;->VOID:Lcom/lua/bsh/Primitive;

    goto :goto_0
.end method
