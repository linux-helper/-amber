.class public final Lcom/lua/c/a/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:[B


# instance fields
.field private b:[B

.field private c:I

.field private d:I

.field private e:Lcom/lua/c/a/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/lua/c/a/a/a;->a:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/lua/c/a/a/a;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/lua/c/a/a/a;->b:[B

    iput v1, p0, Lcom/lua/c/a/a/a;->c:I

    iput v1, p0, Lcom/lua/c/a/a/a;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lua/c/a/a/a;->e:Lcom/lua/c/a/a/k;

    return-void
.end method

.method private final b(II)V
    .locals 4

    iget-object v0, p0, Lcom/lua/c/a/a/a;->b:[B

    array-length v1, v0

    if-eq p1, v1, :cond_0

    new-array v1, p1, [B

    iget v2, p0, Lcom/lua/c/a/a/a;->d:I

    iget v3, p0, Lcom/lua/c/a/a/a;->c:I

    invoke-static {v0, v2, v1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/lua/c/a/a/a;->b:[B

    iput p2, p0, Lcom/lua/c/a/a/a;->d:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/lua/c/a/a/a;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/lua/c/a/a/j;->a([C)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/lua/c/a/a/a;->a(II)V

    array-length v2, v0

    iget-object v3, p0, Lcom/lua/c/a/a/a;->b:[B

    iget v4, p0, Lcom/lua/c/a/a/a;->d:I

    iget v5, p0, Lcom/lua/c/a/a/a;->c:I

    add-int/2addr v4, v5

    invoke-static {v0, v2, v3, v4}, Lcom/lua/c/a/a/j;->a([CI[BI)I

    iget v0, p0, Lcom/lua/c/a/a/a;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lua/c/a/a/a;->c:I

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/lua/c/a/a/a;->c()Lcom/lua/c/a/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lua/c/a/a/k;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(II)V
    .locals 5

    const/16 v0, 0x20

    iget-object v1, p0, Lcom/lua/c/a/a/a;->e:Lcom/lua/c/a/a/k;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/lua/c/a/a/k;->j()Lcom/lua/c/a/a/j;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lua/c/a/a/a;->e:Lcom/lua/c/a/a/k;

    iget v1, v0, Lcom/lua/c/a/a/j;->P:I

    iput v1, p0, Lcom/lua/c/a/a/a;->c:I

    iput p1, p0, Lcom/lua/c/a/a/a;->d:I

    iget v1, p0, Lcom/lua/c/a/a/a;->c:I

    add-int v2, p1, v1

    add-int/2addr v2, p2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/lua/c/a/a/a;->b:[B

    iget-object v2, v0, Lcom/lua/c/a/a/j;->N:[B

    iget v0, v0, Lcom/lua/c/a/a/j;->O:I

    iget-object v3, p0, Lcom/lua/c/a/a/a;->b:[B

    iget v4, p0, Lcom/lua/c/a/a/a;->d:I

    invoke-static {v2, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/lua/c/a/a/a;->d:I

    iget v2, p0, Lcom/lua/c/a/a/a;->c:I

    add-int/2addr v2, v1

    add-int/2addr v2, p2

    iget-object v3, p0, Lcom/lua/c/a/a/a;->b:[B

    array-length v3, v3

    if-gt v2, v3, :cond_2

    if-ge v1, p1, :cond_0

    :cond_2
    iget v2, p0, Lcom/lua/c/a/a/a;->c:I

    add-int v1, p1, v2

    add-int/2addr v1, p2

    if-ge v1, v0, :cond_4

    move v1, v0

    :cond_3
    :goto_1
    if-nez p1, :cond_5

    const/4 v0, 0x0

    :goto_2
    invoke-direct {p0, v1, v0}, Lcom/lua/c/a/a/a;->b(II)V

    goto :goto_0

    :cond_4
    mul-int/lit8 v0, v2, 0x2

    if-ge v1, v0, :cond_3

    mul-int/lit8 v0, v2, 0x2

    move v1, v0

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/lua/c/a/a/a;->c:I

    sub-int v0, v1, v0

    sub-int/2addr v0, p2

    goto :goto_2
.end method

.method public final b()Lcom/lua/c/a/a/j;
    .locals 3

    iget v0, p0, Lcom/lua/c/a/a/a;->c:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lua/c/a/a/a;->b(II)V

    iget-object v0, p0, Lcom/lua/c/a/a/a;->b:[B

    iget v1, p0, Lcom/lua/c/a/a/a;->d:I

    iget v2, p0, Lcom/lua/c/a/a/a;->c:I

    invoke-static {v0, v1, v2}, Lcom/lua/c/a/a/j;->c([BII)Lcom/lua/c/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/lua/c/a/a/k;
    .locals 1

    iget-object v0, p0, Lcom/lua/c/a/a/a;->e:Lcom/lua/c/a/a/k;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/lua/c/a/a/a;->b()Lcom/lua/c/a/a/j;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/lua/c/a/a/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
