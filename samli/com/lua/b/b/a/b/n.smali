.class public Lcom/lua/b/b/a/b/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/lua/b/b/a/b/s;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/lua/b/b/a/b/n;->a:I

    return-void
.end method


# virtual methods
.method public a(Lcom/lua/b/b/a/b/g;Ljava/lang/String;IIZZ)I
    .locals 4

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p3, :cond_2

    const-string v1, "TextBuffer.find: Invalid start position"

    invoke-static {v1}, Lcom/lua/b/b/a/b/v;->a(Ljava/lang/String;)V

    const/4 p3, 0x0

    :cond_2
    invoke-virtual {p1}, Lcom/lua/b/b/a/b/g;->c()I

    move-result v1

    if-le p4, v1, :cond_3

    const-string v1, "TextBuffer.find: Invalid end position"

    invoke-static {v1}, Lcom/lua/b/b/a/b/v;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lua/b/b/a/b/g;->c()I

    move-result p4

    :cond_3
    invoke-virtual {p1}, Lcom/lua/b/b/a/b/g;->c()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v1, p3

    :goto_1
    if-ge v1, v2, :cond_4

    invoke-virtual {p0, p1, p2, v1, p5}, Lcom/lua/b/b/a/b/n;->a(Lcom/lua/b/b/a/b/g;Ljava/lang/String;IZ)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz p6, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, p1, v1, v3}, Lcom/lua/b/b/a/b/n;->a(Lcom/lua/b/b/a/b/g;II)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    if-ge v1, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lcom/lua/b/b/a/b/n;->a:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/lua/b/b/a/b/n;->a:I

    goto :goto_1
.end method

.method protected a(Lcom/lua/b/b/a/b/g;II)Z
    .locals 5

    const/4 v1, 0x1

    invoke-static {}, Lcom/lua/b/b/a/b/m;->c()Lcom/lua/b/b/a/b/i;

    move-result-object v2

    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    add-int v3, p2, p3

    invoke-virtual {p1}, Lcom/lua/b/b/a/b/g;->c()I

    move-result v4

    if-ne v3, v4, :cond_1

    move v2, v1

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    :goto_2
    return v1

    :cond_0
    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p1, v0}, Lcom/lua/b/b/a/b/g;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v0}, Lcom/lua/b/b/a/b/i;->h(C)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v3}, Lcom/lua/b/b/a/b/g;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lua/b/b/a/b/i;->h(C)Z

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method protected a(Lcom/lua/b/b/a/b/g;Ljava/lang/String;IZ)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/lua/b/b/a/b/g;->c()I

    move-result v1

    sub-int/2addr v1, p3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    if-eqz p4, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int v3, v1, p3

    invoke-virtual {p1, v3}, Lcom/lua/b/b/a/b/g;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_0

    :cond_2
    if-nez p4, :cond_3

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    add-int v3, v1, p3

    invoke-virtual {p1, v3}, Lcom/lua/b/b/a/b/g;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    if-ne v2, v3, :cond_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method
