.class Lcom/lua/bsh/BSHForStatement;
.super Lcom/lua/bsh/SimpleNode;

# interfaces
.implements Lcom/lua/bsh/ParserConstants;


# instance fields
.field private a:Lcom/lua/bsh/SimpleNode;

.field private b:Lcom/lua/bsh/SimpleNode;

.field private c:Lcom/lua/bsh/SimpleNode;

.field private d:Lcom/lua/bsh/SimpleNode;

.field public hasExpression:Z

.field public hasForInit:Z

.field public hasForUpdate:Z


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lua/bsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/lua/bsh/BSHForStatement;->hasForInit:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0, v3}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/SimpleNode;

    iput-object v0, p0, Lcom/lua/bsh/BSHForStatement;->a:Lcom/lua/bsh/SimpleNode;

    move v1, v2

    :goto_0
    iget-boolean v0, p0, Lcom/lua/bsh/BSHForStatement;->hasExpression:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/SimpleNode;

    iput-object v0, p0, Lcom/lua/bsh/BSHForStatement;->b:Lcom/lua/bsh/SimpleNode;

    add-int/lit8 v1, v1, 0x1

    :cond_0
    iget-boolean v0, p0, Lcom/lua/bsh/BSHForStatement;->hasForUpdate:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/SimpleNode;

    iput-object v0, p0, Lcom/lua/bsh/BSHForStatement;->c:Lcom/lua/bsh/SimpleNode;

    add-int/lit8 v1, v1, 0x1

    :cond_1
    invoke-virtual {p0}, Lcom/lua/bsh/SimpleNode;->jjtGetNumChildren()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/SimpleNode;

    iput-object v0, p0, Lcom/lua/bsh/BSHForStatement;->d:Lcom/lua/bsh/SimpleNode;

    :cond_2
    invoke-virtual {p1}, Lcom/lua/bsh/CallStack;->top()Lcom/lua/bsh/NameSpace;

    move-result-object v5

    new-instance v0, Lcom/lua/bsh/BlockNameSpace;

    invoke-direct {v0, v5}, Lcom/lua/bsh/BlockNameSpace;-><init>(Lcom/lua/bsh/NameSpace;)V

    invoke-virtual {p1, v0}, Lcom/lua/bsh/CallStack;->swap(Lcom/lua/bsh/NameSpace;)Lcom/lua/bsh/NameSpace;

    iget-boolean v0, p0, Lcom/lua/bsh/BSHForStatement;->hasForInit:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lua/bsh/BSHForStatement;->a:Lcom/lua/bsh/SimpleNode;

    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/SimpleNode;->eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    :cond_3
    sget-object v4, Lcom/lua/bsh/Primitive;->VOID:Lcom/lua/bsh/Primitive;

    :goto_1
    iget-boolean v0, p0, Lcom/lua/bsh/BSHForStatement;->hasExpression:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/lua/bsh/BSHForStatement;->b:Lcom/lua/bsh/SimpleNode;

    invoke-static {v0, p1, p2}, Lcom/lua/bsh/BSHIfStatement;->evaluateCondition(Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Z

    move-result v0

    if-nez v0, :cond_6

    move-object v0, v4

    :cond_4
    invoke-virtual {p1, v5}, Lcom/lua/bsh/CallStack;->swap(Lcom/lua/bsh/NameSpace;)Lcom/lua/bsh/NameSpace;

    return-object v0

    :cond_5
    move v1, v3

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/lua/bsh/BSHForStatement;->d:Lcom/lua/bsh/SimpleNode;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/SimpleNode;->eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, Lcom/lua/bsh/ReturnControl;

    if-eqz v0, :cond_7

    move-object v0, v1

    check-cast v0, Lcom/lua/bsh/ReturnControl;

    iget v0, v0, Lcom/lua/bsh/ReturnControl;->kind:I

    const/16 v6, 0xc

    if-eq v0, v6, :cond_9

    const/16 v6, 0x13

    if-eq v0, v6, :cond_7

    const/16 v6, 0x2e

    if-eq v0, v6, :cond_a

    :cond_7
    move-object v0, v4

    move v1, v3

    :goto_2
    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/lua/bsh/BSHForStatement;->hasForUpdate:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/lua/bsh/BSHForStatement;->c:Lcom/lua/bsh/SimpleNode;

    invoke-virtual {v1, p1, p2}, Lcom/lua/bsh/SimpleNode;->eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;

    :cond_8
    move-object v4, v0

    goto :goto_1

    :cond_9
    move-object v1, v4

    :cond_a
    move-object v0, v1

    move v1, v2

    goto :goto_2
.end method
