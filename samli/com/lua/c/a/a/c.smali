.class public Lcom/lua/c/a/a/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x39

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lua/c/a/a/c;->a:[I

    return-void

    :array_0
    .array-data 4
        0x60
        0x71
        0x41
        0x54
        0x50
        0x50
        0x5c
        0x6c
        0x3c
        0x10
        0x3c
        0x54
        0x6c
        0x7c
        0x7c
        0x7c
        0x7c
        0x7c
        0x7c
        0x60
        0x60
        0x60
        0x68
        0x22
        0xbc
        0xbc
        0xbc
        0x84
        0xe4
        0x54
        0x54
        0x10
        0x62
        0x62
        0x4
        0xe2
        0x14
        0x51
        0x50
        0x7c
        0x7c
        0x7c
        0x7c
        0x7c
        0x7c
        0x60
        0x71
        0x31
        0x51
        0x71
        0x31
        0x50
        0x4
        0x54
        0x71
        0x71
        0x17
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0x6

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x1

    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x50

    if-le v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x50

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[string \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "\"]"

    goto :goto_1
.end method

.method public static b(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0x17

    and-int/lit16 v0, v0, 0x1ff

    return v0
.end method

.method public static c(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0xe

    and-int/lit16 v0, v0, 0x1ff

    return v0
.end method

.method public static d(I)I
    .locals 2

    shr-int/lit8 v0, p0, 0xe

    const v1, 0x3ffff

    and-int/2addr v0, v1

    const v1, 0x1ffff

    sub-int/2addr v0, v1

    return v0
.end method

.method public static e(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0x0

    and-int/lit8 v0, v0, 0x3f

    return v0
.end method

.method public static f(I)Z
    .locals 1

    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(I)I
    .locals 1

    or-int/lit16 v0, p0, 0x100

    return v0
.end method

.method public static h(I)I
    .locals 1

    sget-object v0, Lcom/lua/c/a/a/c;->a:[I

    aget v0, v0, p0

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public static i(I)I
    .locals 1

    sget-object v0, Lcom/lua/c/a/a/c;->a:[I

    aget v0, v0, p0

    shr-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public static j(I)I
    .locals 1

    sget-object v0, Lcom/lua/c/a/a/c;->a:[I

    aget v0, v0, p0

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public static k(I)Z
    .locals 1

    sget-object v0, Lcom/lua/c/a/a/c;->a:[I

    aget v0, v0, p0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
