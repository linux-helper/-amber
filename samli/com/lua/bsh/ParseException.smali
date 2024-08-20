.class public Lcom/lua/bsh/ParseException;
.super Lcom/lua/bsh/EvalError;


# instance fields
.field a:Ljava/lang/String;

.field protected b:Z

.field protected c:Ljava/lang/String;

.field public currentToken:Lcom/lua/bsh/Token;

.field public expectedTokenSequences:[[I

.field public tokenImage:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/lua/bsh/ParseException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lua/bsh/ParseException;->b:Z

    return-void
.end method

.method public constructor <init>(Lcom/lua/bsh/Token;[[I[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/lua/bsh/ParseException;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lua/bsh/ParseException;->b:Z

    iput-object p1, p0, Lcom/lua/bsh/ParseException;->currentToken:Lcom/lua/bsh/Token;

    iput-object p2, p0, Lcom/lua/bsh/ParseException;->expectedTokenSequences:[[I

    iput-object p3, p0, Lcom/lua/bsh/ParseException;->tokenImage:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/lua/bsh/EvalError;-><init>(Ljava/lang/String;Lcom/lua/bsh/SimpleNode;Lcom/lua/bsh/CallStack;)V

    const-string v0, "<unknown>"

    iput-object v0, p0, Lcom/lua/bsh/ParseException;->a:Ljava/lang/String;

    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lua/bsh/ParseException;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lua/bsh/ParseException;->b:Z

    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eqz v1, :cond_2

    const/16 v3, 0x22

    if-eq v1, v3, :cond_8

    const/16 v3, 0x27

    if-eq v1, v3, :cond_7

    const/16 v3, 0x5c

    if-eq v1, v3, :cond_6

    const/16 v3, 0xc

    if-eq v1, v3, :cond_5

    const/16 v3, 0xd

    if-eq v1, v3, :cond_4

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x20

    if-lt v1, v3, :cond_1

    const/16 v3, 0x7e

    if-le v1, v3, :cond_3

    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "0000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v4, 0x10

    invoke-static {v1, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "\\u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :pswitch_0
    const-string v1, "\\n"

    goto :goto_1

    :pswitch_1
    const-string v1, "\\t"

    goto :goto_1

    :pswitch_2
    const-string v1, "\\b"

    goto :goto_1

    :cond_4
    const-string v1, "\\r"

    goto :goto_1

    :cond_5
    const-string v1, "\\f"

    goto :goto_1

    :cond_6
    const-string v1, "\\\\"

    goto :goto_1

    :cond_7
    const-string v1, "\\\'"

    goto :goto_1

    :cond_8
    const-string v1, "\\\""

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getErrorLineNumber()I
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/ParseException;->currentToken:Lcom/lua/bsh/Token;

    iget-object v0, v0, Lcom/lua/bsh/Token;->next:Lcom/lua/bsh/Token;

    iget v0, v0, Lcom/lua/bsh/Token;->beginLine:I

    return v0
.end method

.method public getErrorSourceFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/ParseException;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorText()Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/lua/bsh/ParseException;->expectedTokenSequences:[[I

    array-length v4, v3

    if-lt v2, v4, :cond_3

    iget-object v2, p0, Lcom/lua/bsh/ParseException;->currentToken:Lcom/lua/bsh/Token;

    iget-object v2, v2, Lcom/lua/bsh/Token;->next:Lcom/lua/bsh/Token;

    const-string v3, ""

    move v5, v1

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    :goto_1
    if-lt v5, v0, :cond_0

    move-object v0, v2

    :goto_2
    return-object v0

    :cond_0
    if-eqz v5, :cond_1

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    iget v4, v3, Lcom/lua/bsh/Token;->kind:I

    if-nez v4, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/lua/bsh/ParseException;->tokenImage:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v3, Lcom/lua/bsh/Token;->image:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/lua/bsh/ParseException;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v2, v3, Lcom/lua/bsh/Token;->next:Lcom/lua/bsh/Token;

    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v3, v2

    move-object v2, v4

    goto :goto_1

    :cond_3
    aget-object v4, v3, v2

    array-length v4, v4

    if-ge v0, v4, :cond_4

    aget-object v0, v3, v2

    array-length v0, v0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lua/bsh/ParseException;->getMessage(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage(Z)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/lua/bsh/ParseException;->b:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/lua/bsh/EvalError;->getMessage()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    move v2, v1

    move-object v3, v0

    move v0, v1

    :goto_1
    iget-object v4, p0, Lcom/lua/bsh/ParseException;->expectedTokenSequences:[[I

    array-length v5, v4

    if-lt v0, v5, :cond_6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "In file: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/lua/bsh/ParseException;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " Encountered \""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/lua/bsh/ParseException;->currentToken:Lcom/lua/bsh/Token;

    iget-object v0, v0, Lcom/lua/bsh/Token;->next:Lcom/lua/bsh/Token;

    move v5, v1

    move-object v7, v0

    move-object v0, v4

    move-object v4, v7

    :goto_2
    if-lt v5, v2, :cond_2

    :goto_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\" at line "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/lua/bsh/ParseException;->currentToken:Lcom/lua/bsh/Token;

    iget-object v0, v0, Lcom/lua/bsh/Token;->next:Lcom/lua/bsh/Token;

    iget v0, v0, Lcom/lua/bsh/Token;->beginLine:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, ", column "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/lua/bsh/ParseException;->currentToken:Lcom/lua/bsh/Token;

    iget-object v0, v0, Lcom/lua/bsh/Token;->next:Lcom/lua/bsh/Token;

    iget v0, v0, Lcom/lua/bsh/Token;->beginColumn:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/lua/bsh/ParseException;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/lua/bsh/ParseException;->expectedTokenSequences:[[I

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "Was expecting:"

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/lua/bsh/ParseException;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "    "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    if-eqz v5, :cond_3

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget v6, v4, Lcom/lua/bsh/Token;->kind:I

    if-nez v6, :cond_5

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/lua/bsh/ParseException;->tokenImage:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "Was expecting one of:"

    goto :goto_4

    :cond_5
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, v4, Lcom/lua/bsh/Token;->image:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lua/bsh/ParseException;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v4, Lcom/lua/bsh/Token;->next:Lcom/lua/bsh/Token;

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move-object v4, v0

    move-object v0, v6

    goto/16 :goto_2

    :cond_6
    aget-object v5, v4, v0

    array-length v5, v5

    if-ge v2, v5, :cond_7

    aget-object v2, v4, v0

    array-length v2, v2

    :cond_7
    move v4, v1

    :goto_5
    iget-object v5, p0, Lcom/lua/bsh/ParseException;->expectedTokenSequences:[[I

    aget-object v6, v5, v0

    array-length v6, v6

    if-lt v4, v6, :cond_9

    aget-object v4, v5, v0

    aget-object v5, v5, v0

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "..."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_8
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/lua/bsh/ParseException;->c:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "    "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_9
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/lua/bsh/ParseException;->tokenImage:[Ljava/lang/String;

    iget-object v6, p0, Lcom/lua/bsh/ParseException;->expectedTokenSequences:[[I

    aget-object v6, v6, v0

    aget v6, v6, v4

    aget-object v3, v3, v6

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v3, v5

    goto :goto_5
.end method

.method public setErrorSourceFile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lua/bsh/ParseException;->a:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/lua/bsh/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
