.class Lcom/lua/bsh/BSHWhileStatement;
.super Lcom/lua/bsh/SimpleNode;

# interfaces
.implements Lcom/lua/bsh/ParserConstants;


# instance fields
.field public isDoStatement:Z


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lua/bsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/lua/bsh/SimpleNode;->jjtGetNumChildren()I

    move-result v1

    iget-boolean v0, p0, Lcom/lua/bsh/BSHWhileStatement;->isDoStatement:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, v4}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/SimpleNode;

    invoke-virtual {p0, v5}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v1

    check-cast v1, Lcom/lua/bsh/SimpleNode;

    move-object v2, v1

    move-object v3, v0

    :goto_0
    iget-boolean v0, p0, Lcom/lua/bsh/BSHWhileStatement;->isDoStatement:Z

    move v6, v0

    :cond_0
    :goto_1
    if-nez v6, :cond_5

    invoke-static {v3, p1, p2}, Lcom/lua/bsh/BSHIfStatement;->evaluateCondition(Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_1
    sget-object v1, Lcom/lua/bsh/Primitive;->VOID:Lcom/lua/bsh/Primitive;

    :cond_2
    return-object v1

    :cond_3
    invoke-virtual {p0, v5}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/SimpleNode;

    if-le v1, v4, :cond_4

    invoke-virtual {p0, v4}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v1

    check-cast v1, Lcom/lua/bsh/SimpleNode;

    move-object v2, v1

    move-object v3, v0

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v0

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_0

    invoke-virtual {v2, p1, p2}, Lcom/lua/bsh/SimpleNode;->eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, Lcom/lua/bsh/ReturnControl;

    if-eqz v0, :cond_6

    move-object v0, v1

    check-cast v0, Lcom/lua/bsh/ReturnControl;

    iget v0, v0, Lcom/lua/bsh/ReturnControl;->kind:I

    const/16 v7, 0xc

    if-eq v0, v7, :cond_7

    const/16 v7, 0x13

    if-eq v0, v7, :cond_0

    const/16 v6, 0x2e

    if-eq v0, v6, :cond_2

    :cond_6
    move v0, v5

    :goto_2
    if-nez v0, :cond_1

    move v6, v5

    goto :goto_1

    :cond_7
    move v0, v4

    goto :goto_2
.end method
