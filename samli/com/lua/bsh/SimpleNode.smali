.class Lcom/lua/bsh/SimpleNode;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/lua/bsh/Node;


# static fields
.field public static JAVACODE:Lcom/lua/bsh/SimpleNode;


# instance fields
.field protected a:Lcom/lua/bsh/Node;

.field protected b:[Lcom/lua/bsh/Node;

.field protected c:I

.field d:Lcom/lua/bsh/Token;

.field e:Lcom/lua/bsh/Token;

.field f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/lua/bsh/SimpleNode$1;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/lua/bsh/SimpleNode$1;-><init>(I)V

    sput-object v0, Lcom/lua/bsh/SimpleNode;->JAVACODE:Lcom/lua/bsh/SimpleNode;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/lua/bsh/SimpleNode;->c:I

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Lcom/lua/bsh/SimpleNode;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lua/bsh/SimpleNode;->b:[Lcom/lua/bsh/Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/lua/bsh/SimpleNode;->b:[Lcom/lua/bsh/Node;

    array-length v2, v0

    if-lt v1, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    aget-object v0, v0, v1

    check-cast v0, Lcom/lua/bsh/SimpleNode;

    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lua/bsh/SimpleNode;->dump(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Unimplemented or inappropriate for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/lua/bsh/InterpreterError;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getChild(I)Lcom/lua/bsh/SimpleNode;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/lua/bsh/SimpleNode;->jjtGetChild(I)Lcom/lua/bsh/Node;

    move-result-object v0

    check-cast v0, Lcom/lua/bsh/SimpleNode;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/SimpleNode;->d:Lcom/lua/bsh/Token;

    iget v0, v0, Lcom/lua/bsh/Token;->beginLine:I

    return v0
.end method

.method public getSourceFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/SimpleNode;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lua/bsh/SimpleNode;->a:Lcom/lua/bsh/Node;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/lua/bsh/SimpleNode;

    invoke-virtual {v0}, Lcom/lua/bsh/SimpleNode;->getSourceFile()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "<unknown file>"

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcom/lua/bsh/SimpleNode;->d:Lcom/lua/bsh/Token;

    :goto_0
    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v2, v0, Lcom/lua/bsh/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v0, Lcom/lua/bsh/Token;->image:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v2, p0, Lcom/lua/bsh/SimpleNode;->e:Lcom/lua/bsh/Token;

    if-eq v0, v2, :cond_0

    iget-object v2, v0, Lcom/lua/bsh/Token;->image:Ljava/lang/String;

    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/lua/bsh/Token;->image:Ljava/lang/String;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, v0, Lcom/lua/bsh/Token;->next:Lcom/lua/bsh/Token;

    goto :goto_0
.end method

.method public jjtAddChild(Lcom/lua/bsh/Node;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/lua/bsh/SimpleNode;->b:[Lcom/lua/bsh/Node;

    if-nez v0, :cond_1

    add-int/lit8 v0, p2, 0x1

    new-array v0, v0, [Lcom/lua/bsh/Node;

    iput-object v0, p0, Lcom/lua/bsh/SimpleNode;->b:[Lcom/lua/bsh/Node;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lua/bsh/SimpleNode;->b:[Lcom/lua/bsh/Node;

    aput-object p1, v0, p2

    return-void

    :cond_1
    array-length v1, v0

    if-lt p2, v1, :cond_0

    add-int/lit8 v1, p2, 0x1

    new-array v1, v1, [Lcom/lua/bsh/Node;

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/lua/bsh/SimpleNode;->b:[Lcom/lua/bsh/Node;

    goto :goto_0
.end method

.method public jjtClose()V
    .locals 0

    return-void
.end method

.method public jjtGetChild(I)Lcom/lua/bsh/Node;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/SimpleNode;->b:[Lcom/lua/bsh/Node;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public jjtGetNumChildren()I
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/SimpleNode;->b:[Lcom/lua/bsh/Node;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    array-length v0, v0

    goto :goto_0
.end method

.method public jjtGetParent()Lcom/lua/bsh/Node;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/SimpleNode;->a:Lcom/lua/bsh/Node;

    return-object v0
.end method

.method public jjtOpen()V
    .locals 0

    return-void
.end method

.method public jjtSetParent(Lcom/lua/bsh/Node;)V
    .locals 0

    iput-object p1, p0, Lcom/lua/bsh/SimpleNode;->a:Lcom/lua/bsh/Node;

    return-void
.end method

.method public prune()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lua/bsh/SimpleNode;->jjtSetParent(Lcom/lua/bsh/Node;)V

    return-void
.end method

.method public setSourceFile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lua/bsh/SimpleNode;->f:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/lua/bsh/ParserTreeConstants;->jjtNodeName:[Ljava/lang/String;

    iget v1, p0, Lcom/lua/bsh/SimpleNode;->c:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/lua/bsh/SimpleNode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
