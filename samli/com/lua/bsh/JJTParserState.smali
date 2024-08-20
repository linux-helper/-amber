.class Lcom/lua/bsh/JJTParserState;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Stack;

.field private b:Ljava/util/Stack;

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/lua/bsh/JJTParserState;->a:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/lua/bsh/JJTParserState;->b:Ljava/util/Stack;

    iput v1, p0, Lcom/lua/bsh/JJTParserState;->c:I

    iput v1, p0, Lcom/lua/bsh/JJTParserState;->d:I

    return-void
.end method


# virtual methods
.method a()I
    .locals 2

    iget v0, p0, Lcom/lua/bsh/JJTParserState;->c:I

    iget v1, p0, Lcom/lua/bsh/JJTParserState;->d:I

    sub-int/2addr v0, v1

    return v0
.end method

.method a(Lcom/lua/bsh/Node;)V
    .locals 2

    :goto_0
    iget v0, p0, Lcom/lua/bsh/JJTParserState;->c:I

    iget v1, p0, Lcom/lua/bsh/JJTParserState;->d:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/lua/bsh/JJTParserState;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/lua/bsh/JJTParserState;->d:I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/lua/bsh/JJTParserState;->b()Lcom/lua/bsh/Node;

    goto :goto_0
.end method

.method a(Lcom/lua/bsh/Node;I)V
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/JJTParserState;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/lua/bsh/JJTParserState;->d:I

    :goto_0
    add-int/lit8 v0, p2, -0x1

    if-gtz p2, :cond_0

    invoke-interface {p1}, Lcom/lua/bsh/Node;->jjtClose()V

    invoke-virtual {p0, p1}, Lcom/lua/bsh/JJTParserState;->c(Lcom/lua/bsh/Node;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lua/bsh/JJTParserState;->e:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/lua/bsh/JJTParserState;->b()Lcom/lua/bsh/Node;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lua/bsh/Node;->jjtSetParent(Lcom/lua/bsh/Node;)V

    invoke-interface {p1, v1, v0}, Lcom/lua/bsh/Node;->jjtAddChild(Lcom/lua/bsh/Node;I)V

    move p2, v0

    goto :goto_0
.end method

.method a(Lcom/lua/bsh/Node;Z)V
    .locals 2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/lua/bsh/JJTParserState;->a()I

    move-result v1

    iget-object v0, p0, Lcom/lua/bsh/JJTParserState;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/lua/bsh/JJTParserState;->d:I

    move v0, v1

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-gtz v0, :cond_0

    invoke-interface {p1}, Lcom/lua/bsh/Node;->jjtClose()V

    invoke-virtual {p0, p1}, Lcom/lua/bsh/JJTParserState;->c(Lcom/lua/bsh/Node;)V

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/lua/bsh/JJTParserState;->e:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/lua/bsh/JJTParserState;->b()Lcom/lua/bsh/Node;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lua/bsh/Node;->jjtSetParent(Lcom/lua/bsh/Node;)V

    invoke-interface {p1, v0, v1}, Lcom/lua/bsh/Node;->jjtAddChild(Lcom/lua/bsh/Node;I)V

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/lua/bsh/JJTParserState;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/lua/bsh/JJTParserState;->d:I

    const/4 v0, 0x0

    goto :goto_1
.end method

.method b()Lcom/lua/bsh/Node;
    .locals 2

    iget v0, p0, Lcom/lua/bsh/JJTParserState;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lua/bsh/JJTParserState;->c:I

    iget v1, p0, Lcom/lua/bsh/JJTParserState;->d:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/lua/bsh/JJTParserState;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/lua/bsh/JJTParserState;->d:I

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/JJTParserState;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/Node;

    return-object v0
.end method

.method b(Lcom/lua/bsh/Node;)V
    .locals 3

    iget-object v0, p0, Lcom/lua/bsh/JJTParserState;->b:Ljava/util/Stack;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lcom/lua/bsh/JJTParserState;->d:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/lua/bsh/JJTParserState;->c:I

    iput v0, p0, Lcom/lua/bsh/JJTParserState;->d:I

    invoke-interface {p1}, Lcom/lua/bsh/Node;->jjtOpen()V

    return-void
.end method

.method c()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/lua/bsh/JJTParserState;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->removeAllElements()V

    iget-object v0, p0, Lcom/lua/bsh/JJTParserState;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->removeAllElements()V

    iput v1, p0, Lcom/lua/bsh/JJTParserState;->c:I

    iput v1, p0, Lcom/lua/bsh/JJTParserState;->d:I

    return-void
.end method

.method c(Lcom/lua/bsh/Node;)V
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/JJTParserState;->a:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/lua/bsh/JJTParserState;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lua/bsh/JJTParserState;->c:I

    return-void
.end method

.method d()Lcom/lua/bsh/Node;
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/JJTParserState;->a:Ljava/util/Stack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/Node;

    return-object v0
.end method
