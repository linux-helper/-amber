.class Lcom/lua/bsh/BSHLiteral;
.super Lcom/lua/bsh/SimpleNode;


# instance fields
.field public value:Ljava/lang/Object;


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lua/bsh/SimpleNode;-><init>(I)V

    return-void
.end method

.method private a(C)C
    .locals 1

    const/16 v0, 0x62

    if-eq p1, v0, :cond_4

    const/16 v0, 0x66

    if-eq p1, v0, :cond_3

    const/16 v0, 0x6e

    if-eq p1, v0, :cond_2

    const/16 v0, 0x72

    if-eq p1, v0, :cond_1

    const/16 v0, 0x74

    if-eq p1, v0, :cond_0

    :goto_0
    return p1

    :cond_0
    const/16 p1, 0x9

    goto :goto_0

    :cond_1
    const/16 p1, 0xd

    goto :goto_0

    :cond_2
    const/16 p1, 0xa

    goto :goto_0

    :cond_3
    const/16 p1, 0xc

    goto :goto_0

    :cond_4
    const/16 p1, 0x8

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 6

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lua/bsh/BSHLiteral;->value:Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5c

    if-ne v1, v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    add-int/lit8 v0, v2, 0x2

    if-lt v1, v0, :cond_2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-direct {p0, v0}, Lcom/lua/bsh/BSHLiteral;->a(C)C

    move-result v0

    move v1, v2

    goto :goto_2

    :cond_4
    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_2
.end method

.method public charSetup(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    :cond_0
    :goto_0
    new-instance v1, Lcom/lua/bsh/Primitive;

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, v0}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-direct {v1, v0}, Lcom/lua/bsh/Primitive;-><init>(C)V

    iput-object v1, p0, Lcom/lua/bsh/BSHLiteral;->value:Ljava/lang/Object;

    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/lua/bsh/BSHLiteral;->a(C)C

    move-result v0

    goto :goto_0
.end method

.method public eval(Lcom/lua/bsh/CallStack;Lcom/lua/bsh/Interpreter;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/BSHLiteral;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Null in bsh literal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/lua/bsh/BSHLiteral;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/lua/bsh/InterpreterError;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/lua/bsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1
.end method
