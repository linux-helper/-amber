.class public Lcom/lua/b/b/a/b/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lua/b/b/a/b/o$a;,
        Lcom/lua/b/b/a/b/o$b;
    }
.end annotation


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lua/b/b/a/b/q;",
            ">;>;"
        }
    .end annotation
.end field

.field public static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lua/b/b/a/b/o$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lua/b/b/a/b/o$b;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lua/c/a/a/j;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lua/b/b/a/b/q;",
            ">;>;"
        }
    .end annotation
.end field

.field private static h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:[I

.field private static final j:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lua/b/b/a/b/o;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lua/b/b/a/b/o;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lua/b/b/a/b/o;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lua/b/b/a/b/o;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lua/b/b/a/b/o;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lua/b/b/a/b/o;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lua/b/b/a/b/o;->g:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lua/b/b/a/b/o;->h:Ljava/util/ArrayList;

    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lua/b/b/a/b/o;->i:[I

    const/16 v0, 0x17

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/lua/b/b/a/b/o;->j:[C

    return-void

    nop

    :array_0
    .array-data 4
        0x641
        0x665
        0x729
        0x81e
        0x8e2
        0x8fe
        0x981
        0xa22
        0xae3
        0xc22
        0xc8c
        0xd90
        0xe33
        0xe8a
        0xe92
        0xf12
        0xfbb
        0xff6
        0x1126
        0x11ce
        0x124c
        0x133d
        0x1481
        0x15e0
    .end array-data

    :array_1
    .array-data 2
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data
.end method

.method private static a(C)C
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GBK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    aget-byte v2, v1, v0

    const/16 v3, 0x80

    if-ge v2, v3, :cond_0

    aget-byte v2, v1, v0

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {v1}, Lcom/lua/b/b/a/b/o;->a([B)C

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a([B)C
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-byte v2, p0, v0

    add-int/lit16 v2, v2, -0xa0

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget-byte v0, p0, v1

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    mul-int/lit8 v0, v0, 0x64

    add-int/2addr v2, v0

    move v0, v1

    :goto_1
    const/16 v3, 0x17

    if-ge v0, v3, :cond_1

    sget-object v3, Lcom/lua/b/b/a/b/o;->i:[I

    aget v4, v3, v0

    if-lt v2, v4, :cond_2

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    if-ge v2, v3, :cond_2

    sget-object v1, Lcom/lua/b/b/a/b/o;->j:[C

    aget-char v1, v1, v0

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Lcom/lua/c/a/a/b;)Ljava/lang/String;
    .locals 7

    iget-object v3, p1, Lcom/lua/c/a/a/b;->f:Lcom/lua/c/a/a/n;

    if-nez v3, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v3, Lcom/lua/c/a/a/n;->h:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    iget-object v0, v3, Lcom/lua/c/a/a/n;->h:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, v3, Lcom/lua/c/a/a/n;->h:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v3, Lcom/lua/c/a/a/n;->h:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v3, Lcom/lua/c/a/a/n;->h:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/lua/b/b/a/b/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/lua/b/b/a/b/o;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/lua/b/b/a/b/o;->d:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance v4, Lcom/lua/b/b/a/b/o$a;

    iget-object v3, v3, Lcom/lua/c/a/a/n;->h:Ljava/lang/String;

    iget v5, p1, Lcom/lua/c/a/a/b;->d:I

    iget v6, p1, Lcom/lua/c/a/a/b;->e:I

    invoke-direct {v4, v3, v5, v6}, Lcom/lua/b/b/a/b/o$a;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/lua/c/a/a/m;)Ljava/lang/String;
    .locals 4

    iget-object v0, p1, Lcom/lua/c/a/a/m;->b:Lcom/lua/c/a/a/n;

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, v0, Lcom/lua/c/a/a/n;->h:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v1, 0x1

    if-ge v2, v1, :cond_2

    iget-object v0, v0, Lcom/lua/c/a/a/n;->h:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/lua/c/a/a/n;->h:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/lua/c/a/a/n;->h:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v3, p1, v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/lua/b/b/a/b/o;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_1
    if-ltz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lua/b/b/a/b/o$a;

    iget v5, v1, Lcom/lua/b/b/a/b/o$a;->b:I

    if-gt v5, v3, :cond_3

    iget v5, v1, Lcom/lua/b/b/a/b/o$a;->c:I

    if-lt v5, v3, :cond_3

    iget-object v0, v1, Lcom/lua/b/b/a/b/o$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/lua/b/b/a/b/o;->c:Ljava/util/HashMap;

    iget-object v2, v1, Lcom/lua/b/b/a/b/o$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    sget-object v0, Lcom/lua/b/b/a/b/o;->b:Ljava/util/HashMap;

    iget-object v1, v1, Lcom/lua/b/b/a/b/o$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;ILcom/lua/b/b/a/b/c;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/lua/b/b/a/b/c;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/lua/b/b/a/b/o;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_3

    sget-object v0, Lcom/lua/b/b/a/b/o;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lua/b/b/a/b/o$b;

    iget v4, v0, Lcom/lua/b/b/a/b/o$b;->c:I

    if-gt v4, p1, :cond_0

    iget v4, v0, Lcom/lua/b/b/a/b/o$b;->d:I

    if-lt v4, p1, :cond_0

    iget-object v4, v0, Lcom/lua/b/b/a/b/o$b;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/lua/b/b/a/b/o$b;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/lua/b/b/a/b/o$b;->b:Ljava/lang/String;

    invoke-static {v6}, Lcom/lua/b/b/a/b/o;->c(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v6}, Lcom/lua/b/b/a/b/c;->a(I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/lua/b/b/a/b/o;->b(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {v4}, Lcom/lua/b/b/a/b/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/lua/b/b/a/b/o$b;->b:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Lcom/lua/b/b/a/b/o$b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/lua/b/b/a/b/o;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/lua/b/b/a/b/c;->a(I)I

    move-result v0

    invoke-static {v4, v0}, Lcom/lua/b/b/a/b/o;->b(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/lua/b/b/a/b/o;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lua/c/a/a/k;

    invoke-virtual {v0}, Lcom/lua/c/a/a/k;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " :global"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v7}, Lcom/lua/b/b/a/b/c;->a(I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/lua/b/b/a/b/o;->b(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {v0}, Lcom/lua/b/b/a/b/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " :global"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v7}, Lcom/lua/b/b/a/b/c;->a(I)I

    move-result v4

    invoke-static {v0, v4}, Lcom/lua/b/b/a/b/o;->b(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    return-object v2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/lua/b/b/a/b/o;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    return-object v4

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    :goto_0
    if-ltz v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lua/b/b/a/b/o$a;

    iget v2, v1, Lcom/lua/b/b/a/b/o$a;->b:I

    if-gt v2, p2, :cond_4

    iget v2, v1, Lcom/lua/b/b/a/b/o$a;->c:I

    if-lt v2, p2, :cond_4

    iget-object v2, v1, Lcom/lua/b/b/a/b/o$a;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/lua/b/b/a/b/o;->c:Ljava/util/HashMap;

    iget-object v5, v1, Lcom/lua/b/b/a/b/o$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/lua/b/b/a/b/o;->b:Ljava/util/HashMap;

    iget-object v1, v1, Lcom/lua/b/b/a/b/o$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_5

    :cond_4
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lcom/lua/b/b/a/b/o;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private static a(Lcom/lua/c/a/a/l;)V
    .locals 11

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/lua/c/a/a/l;->g:[Lcom/lua/c/a/a/b;

    iget v5, p0, Lcom/lua/c/a/a/l;->l:I

    iget-object v2, p0, Lcom/lua/c/a/a/l;->h:[Lcom/lua/c/a/a/m;

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v3, v2, v0

    iget-object v6, v3, Lcom/lua/c/a/a/m;->a:Lcom/lua/c/a/a/j;

    invoke-virtual {v6}, Lcom/lua/c/a/a/j;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/lua/b/b/a/b/o;->a(Ljava/lang/String;Lcom/lua/c/a/a/m;)Ljava/lang/String;

    sget-object v3, Lcom/lua/b/b/a/b/o;->e:Ljava/util/ArrayList;

    new-instance v7, Lcom/lua/b/b/a/b/o$b;

    const-string v8, " :upval"

    iget v9, p0, Lcom/lua/c/a/a/l;->p:I

    iget v10, p0, Lcom/lua/c/a/a/l;->o:I

    invoke-direct {v7, v6, v8, v9, v10}, Lcom/lua/b/b/a/b/o$b;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_1
    array-length v0, v4

    if-ge v3, v0, :cond_5

    aget-object v6, v4, v3

    iget-object v0, v6, Lcom/lua/c/a/a/b;->a:Lcom/lua/c/a/a/j;

    invoke-virtual {v0}, Lcom/lua/c/a/a/j;->c()Ljava/lang/String;

    move-result-object v7

    if-ge v3, v5, :cond_4

    sget-object v0, Lcom/lua/b/b/a/b/o;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/lua/b/b/a/b/o$b;

    const-string v8, " :arg"

    iget v9, v6, Lcom/lua/c/a/a/b;->d:I

    iget v10, v6, Lcom/lua/c/a/a/b;->e:I

    invoke-direct {v2, v7, v8, v9, v10}, Lcom/lua/b/b/a/b/o$b;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lua/b/b/a/b/o;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/lua/b/b/a/b/o;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    new-instance v2, Lcom/lua/b/b/a/b/q;

    iget v7, v6, Lcom/lua/c/a/a/b;->d:I

    iget v6, v6, Lcom/lua/c/a/a/b;->e:I

    invoke-direct {v2, v7, v6}, Lcom/lua/b/b/a/b/q;-><init>(II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_4
    invoke-static {v7, v6}, Lcom/lua/b/b/a/b/o;->a(Ljava/lang/String;Lcom/lua/c/a/a/b;)Ljava/lang/String;

    sget-object v0, Lcom/lua/b/b/a/b/o;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/lua/b/b/a/b/o$b;

    const-string v8, " :local"

    iget v9, v6, Lcom/lua/c/a/a/b;->d:I

    iget v10, v6, Lcom/lua/c/a/a/b;->e:I

    invoke-direct {v2, v7, v8, v9, v10}, Lcom/lua/b/b/a/b/o$b;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/lua/c/a/a/l;->e:[Lcom/lua/c/a/a/l;

    array-length v2, v0

    :goto_3
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-static {v3}, Lcom/lua/b/b/a/b/o;->a(Lcom/lua/c/a/a/l;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/lua/b/b/a/b/o;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    sget-object v0, Lcom/lua/b/b/a/b/o;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_3

    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_3
    sget-object v0, Lcom/lua/b/b/a/b/o;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_1
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_4
    if-ge v0, v4, :cond_5

    aget-object v1, v3, v0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-eqz v5, :cond_4

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3
    :try_start_2
    sget-object v0, Lcom/lua/b/b/a/b/o;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :cond_4
    :try_start_3
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/lua/b/b/a/b/o;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public static a(Ljava/lang/CharSequence;Lcom/lua/b/b/a/b/h;)Z
    .locals 2

    :try_start_0
    const-string v0, "luaj"

    invoke-static {p0, v0, p1}, Lcom/lua/c/a/a/a/g;->a(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/lua/b/b/a/b/h;)Lcom/lua/c/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/lua/b/b/a/b/o;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    sget-object v1, Lcom/lua/b/b/a/b/o;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    sget-object v1, Lcom/lua/b/b/a/b/o;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-static {v0}, Lcom/lua/b/b/a/b/o;->a(Lcom/lua/c/a/a/l;)V

    sget v0, Lcom/lua/c/a/a/a/f;->j:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/lua/c/a/a/a/f;->k:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/lua/b/b/a/b/o;->f:Ljava/util/ArrayList;

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/lua/c/a/a/a/f;->l:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/lua/b/b/a/b/o;->g:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-nez v1, :cond_0

    const/16 v4, 0x80

    if-ge v3, v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    shr-int/lit8 v4, v3, 0x7

    if-nez v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lcom/lua/b/b/a/b/o;->a(C)C

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method public static b()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lua/b/b/a/b/q;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/lua/b/b/a/b/o;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)I
    .locals 5

    const/4 v4, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_2

    if-eq v1, v4, :cond_1

    :goto_1
    return v0

    :sswitch_0
    const-string v1, " :upval"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :sswitch_1
    const-string v1, " :local"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :sswitch_2
    const-string v1, " :arg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :sswitch_3
    const-string v1, " :global"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    goto :goto_1

    :cond_2
    const/4 v0, 0x7

    goto :goto_1

    :cond_3
    const/4 v0, 0x6

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x51c7f3c3 -> :sswitch_3
        0x1dec7fc -> :sswitch_2
        0x5e65b91 -> :sswitch_1
        0x665eacc -> :sswitch_0
    .end sparse-switch
.end method

.method public static c()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/lua/b/b/a/b/o;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static d()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lua/b/b/a/b/q;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/lua/b/b/a/b/o;->g:Ljava/util/HashMap;

    return-object v0
.end method

.method public static e()V
    .locals 1

    sget-object v0, Lcom/lua/b/b/a/b/o;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/lua/b/b/a/b/o;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/lua/b/b/a/b/o;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/lua/b/b/a/b/o;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lua/b/b/a/b/o;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lua/b/b/a/b/o;->g:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-object v0, Lcom/lua/c/a/a/a/f;->h:Ljava/lang/String;

    sget-object v0, Lcom/lua/c/a/a/a/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/lua/c/a/a/a/f;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/lua/c/a/a/a/f;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method
