.class public Lcom/lua/bsh/org/objectweb/asm/ClassWriter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/lua/bsh/org/objectweb/asm/ClassVisitor;


# static fields
.field static a:[B


# instance fields
.field private b:S

.field private c:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

.field private d:[Lcom/lua/bsh/org/objectweb/asm/Item;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:[I

.field private k:Lcom/lua/bsh/org/objectweb/asm/Item;

.field private l:I

.field private m:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

.field private n:Z

.field o:Lcom/lua/bsh/org/objectweb/asm/CodeWriter;

.field p:Lcom/lua/bsh/org/objectweb/asm/CodeWriter;

.field private q:I

.field private r:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

.field s:Lcom/lua/bsh/org/objectweb/asm/Item;

.field t:Lcom/lua/bsh/org/objectweb/asm/Item;

.field u:Lcom/lua/bsh/org/objectweb/asm/Item;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xdc

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    sput-object v1, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->a:[B

    return-void

    :cond_0
    const-string v2, "AAAAAAAAAAAAAAAABCKLLDDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAADDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAIIIIIIIIIIIIIIIIDNOAAAAAAGGGGGGGHAFBFAAFFAAQPIIJJIIIIIIIIIIIIIIIIII"

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x41

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Z)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b:S

    new-instance v0, Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->c:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    const/16 v0, 0x40

    new-array v0, v0, [Lcom/lua/bsh/org/objectweb/asm/Item;

    iput-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->d:[Lcom/lua/bsh/org/objectweb/asm/Item;

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->d:[Lcom/lua/bsh/org/objectweb/asm/Item;

    array-length v0, v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->e:I

    new-instance v0, Lcom/lua/bsh/org/objectweb/asm/Item;

    invoke-direct {v0}, Lcom/lua/bsh/org/objectweb/asm/Item;-><init>()V

    iput-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->s:Lcom/lua/bsh/org/objectweb/asm/Item;

    new-instance v0, Lcom/lua/bsh/org/objectweb/asm/Item;

    invoke-direct {v0}, Lcom/lua/bsh/org/objectweb/asm/Item;-><init>()V

    iput-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->t:Lcom/lua/bsh/org/objectweb/asm/Item;

    new-instance v0, Lcom/lua/bsh/org/objectweb/asm/Item;

    invoke-direct {v0}, Lcom/lua/bsh/org/objectweb/asm/Item;-><init>()V

    iput-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->u:Lcom/lua/bsh/org/objectweb/asm/Item;

    iput-boolean p1, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->n:Z

    return-void
.end method

.method private a(D)Lcom/lua/bsh/org/objectweb/asm/Item;
    .locals 5

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->s:Lcom/lua/bsh/org/objectweb/asm/Item;

    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/org/objectweb/asm/Item;->a(D)V

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->s:Lcom/lua/bsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->a(Lcom/lua/bsh/org/objectweb/asm/Item;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->c:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put1(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put8(J)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    new-instance v0, Lcom/lua/bsh/org/objectweb/asm/Item;

    iget-short v1, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b:S

    iget-object v2, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->s:Lcom/lua/bsh/org/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lcom/lua/bsh/org/objectweb/asm/Item;-><init>(SLcom/lua/bsh/org/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Lcom/lua/bsh/org/objectweb/asm/Item;)V

    iget-short v1, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b:S

    add-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    int-to-short v1, v1

    int-to-short v1, v1

    int-to-short v1, v1

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b:S

    :cond_0
    return-object v0
.end method

.method private a(F)Lcom/lua/bsh/org/objectweb/asm/Item;
    .locals 3

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->s:Lcom/lua/bsh/org/objectweb/asm/Item;

    invoke-virtual {v0, p1}, Lcom/lua/bsh/org/objectweb/asm/Item;->a(F)V

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->s:Lcom/lua/bsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->a(Lcom/lua/bsh/org/objectweb/asm/Item;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->c:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put1(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put4(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-short v1, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b:S

    add-int/lit8 v0, v1, 0x1

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b:S

    new-instance v0, Lcom/lua/bsh/org/objectweb/asm/Item;

    iget-object v2, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->s:Lcom/lua/bsh/org/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lcom/lua/bsh/org/objectweb/asm/Item;-><init>(SLcom/lua/bsh/org/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Lcom/lua/bsh/org/objectweb/asm/Item;)V

    :cond_0
    return-object v0
.end method

.method private a(I)Lcom/lua/bsh/org/objectweb/asm/Item;
    .locals 3

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->s:Lcom/lua/bsh/org/objectweb/asm/Item;

    invoke-virtual {v0, p1}, Lcom/lua/bsh/org/objectweb/asm/Item;->a(I)V

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->s:Lcom/lua/bsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->a(Lcom/lua/bsh/org/objectweb/asm/Item;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->c:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put1(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put4(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-short v1, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b:S

    add-int/lit8 v0, v1, 0x1

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b:S

    new-instance v0, Lcom/lua/bsh/org/objectweb/asm/Item;

    iget-object v2, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->s:Lcom/lua/bsh/org/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lcom/lua/bsh/org/objectweb/asm/Item;-><init>(SLcom/lua/bsh/org/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Lcom/lua/bsh/org/objectweb/asm/Item;)V

    :cond_0
    return-object v0
.end method

.method private a(J)Lcom/lua/bsh/org/objectweb/asm/Item;
    .locals 3

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->s:Lcom/lua/bsh/org/objectweb/asm/Item;

    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/org/objectweb/asm/Item;->a(J)V

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->s:Lcom/lua/bsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->a(Lcom/lua/bsh/org/objectweb/asm/Item;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->c:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put1(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put8(J)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    new-instance v0, Lcom/lua/bsh/org/objectweb/asm/Item;

    iget-short v1, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b:S

    iget-object v2, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->s:Lcom/lua/bsh/org/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lcom/lua/bsh/org/objectweb/asm/Item;-><init>(SLcom/lua/bsh/org/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Lcom/lua/bsh/org/objectweb/asm/Item;)V

    iget-short v1, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b:S

    add-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    int-to-short v1, v1

    int-to-short v1, v1

    int-to-short v1, v1

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b:S

    :cond_0
    return-object v0
.end method

.method private a(Lcom/lua/bsh/org/objectweb/asm/Item;)Lcom/lua/bsh/org/objectweb/asm/Item;
    .locals 4

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->d:[Lcom/lua/bsh/org/objectweb/asm/Item;

    iget v1, p1, Lcom/lua/bsh/org/objectweb/asm/Item;->j:I

    const v2, 0x7fffffff

    and-int/2addr v2, v1

    array-length v3, v0

    rem-int/2addr v2, v3

    aget-object v0, v0, v2

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    iget v2, v0, Lcom/lua/bsh/org/objectweb/asm/Item;->j:I

    if-ne v2, v1, :cond_2

    invoke-virtual {p1, v0}, Lcom/lua/bsh/org/objectweb/asm/Item;->a(Lcom/lua/bsh/org/objectweb/asm/Item;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    iget-object v0, v0, Lcom/lua/bsh/org/objectweb/asm/Item;->k:Lcom/lua/bsh/org/objectweb/asm/Item;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;
    .locals 3

    const/16 v2, 0xc

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->t:Lcom/lua/bsh/org/objectweb/asm/Item;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p1, p2, v1}, Lcom/lua/bsh/org/objectweb/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->t:Lcom/lua/bsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->a(Lcom/lua/bsh/org/objectweb/asm/Item;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {p0, p2}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v1

    iget-short v1, v1, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    invoke-direct {p0, v2, v0, v1}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->a(III)V

    iget-short v1, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b:S

    add-int/lit8 v0, v1, 0x1

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b:S

    new-instance v0, Lcom/lua/bsh/org/objectweb/asm/Item;

    iget-object v2, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->t:Lcom/lua/bsh/org/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lcom/lua/bsh/org/objectweb/asm/Item;-><init>(SLcom/lua/bsh/org/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Lcom/lua/bsh/org/objectweb/asm/Item;)V

    :cond_0
    return-object v0
.end method

.method private a(III)V
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->c:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put12(II)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    return-void
.end method

.method private b(Lcom/lua/bsh/org/objectweb/asm/Item;)V
    .locals 11

    const v10, 0x7fffffff

    iget-short v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b:S

    iget v1, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->e:I

    if-le v0, v1, :cond_0

    iget-object v3, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->d:[Lcom/lua/bsh/org/objectweb/asm/Item;

    array-length v0, v3

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v4, v1, 0x1

    new-array v5, v4, [Lcom/lua/bsh/org/objectweb/asm/Item;

    int-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    const-wide/high16 v8, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v6, v8

    double-to-int v1, v6

    iput v1, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->e:I

    iput-object v5, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->d:[Lcom/lua/bsh/org/objectweb/asm/Item;

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-gtz v0, :cond_1

    :cond_0
    iget v0, p1, Lcom/lua/bsh/org/objectweb/asm/Item;->j:I

    iget-object v1, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->d:[Lcom/lua/bsh/org/objectweb/asm/Item;

    and-int/2addr v0, v10

    array-length v2, v1

    rem-int/2addr v0, v2

    aget-object v2, v1, v0

    iput-object v2, p1, Lcom/lua/bsh/org/objectweb/asm/Item;->k:Lcom/lua/bsh/org/objectweb/asm/Item;

    aput-object p1, v1, v0

    return-void

    :cond_1
    aget-object v0, v3, v2

    :goto_1
    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/lua/bsh/org/objectweb/asm/Item;->k:Lcom/lua/bsh/org/objectweb/asm/Item;

    iget v6, v0, Lcom/lua/bsh/org/objectweb/asm/Item;->j:I

    and-int/2addr v6, v10

    rem-int/2addr v6, v4

    aget-object v7, v5, v6

    iput-object v7, v0, Lcom/lua/bsh/org/objectweb/asm/Item;->k:Lcom/lua/bsh/org/objectweb/asm/Item;

    aput-object v0, v5, v6

    move-object v0, v1

    goto :goto_1
.end method

.method private c(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;
    .locals 3

    const/4 v1, 0x0

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->t:Lcom/lua/bsh/org/objectweb/asm/Item;

    invoke-virtual {v0, v2, p1, v1, v1}, Lcom/lua/bsh/org/objectweb/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->t:Lcom/lua/bsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->a(Lcom/lua/bsh/org/objectweb/asm/Item;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->c:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    invoke-virtual {p0, p1}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v1

    iget-short v1, v1, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {v0, v2, v1}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put12(II)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-short v1, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b:S

    add-int/lit8 v0, v1, 0x1

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b:S

    new-instance v0, Lcom/lua/bsh/org/objectweb/asm/Item;

    iget-object v2, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->t:Lcom/lua/bsh/org/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lcom/lua/bsh/org/objectweb/asm/Item;-><init>(SLcom/lua/bsh/org/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Lcom/lua/bsh/org/objectweb/asm/Item;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/Object;)Lcom/lua/bsh/org/objectweb/asm/Item;
    .locals 2

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->a(I)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->a(F)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->a(J)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->a(D)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v0

    goto :goto_0

    :cond_3
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->c(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method a(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->t:Lcom/lua/bsh/org/objectweb/asm/Item;

    invoke-virtual {v0, v2, p1, v1, v1}, Lcom/lua/bsh/org/objectweb/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->t:Lcom/lua/bsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->a(Lcom/lua/bsh/org/objectweb/asm/Item;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->c:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    invoke-virtual {p0, p1}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v1

    iget-short v1, v1, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {v0, v2, v1}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put12(II)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-short v1, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b:S

    add-int/lit8 v0, v1, 0x1

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b:S

    new-instance v0, Lcom/lua/bsh/org/objectweb/asm/Item;

    iget-object v2, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->t:Lcom/lua/bsh/org/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lcom/lua/bsh/org/objectweb/asm/Item;-><init>(SLcom/lua/bsh/org/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Lcom/lua/bsh/org/objectweb/asm/Item;)V

    :cond_0
    return-object v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;
    .locals 3

    const/16 v2, 0x9

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->u:Lcom/lua/bsh/org/objectweb/asm/Item;

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/lua/bsh/org/objectweb/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->u:Lcom/lua/bsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->a(Lcom/lua/bsh/org/objectweb/asm/Item;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    invoke-direct {p0, p2, p3}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v1

    iget-short v1, v1, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    invoke-direct {p0, v2, v0, v1}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->a(III)V

    iget-short v1, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b:S

    add-int/lit8 v0, v1, 0x1

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b:S

    new-instance v0, Lcom/lua/bsh/org/objectweb/asm/Item;

    iget-object v2, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->u:Lcom/lua/bsh/org/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lcom/lua/bsh/org/objectweb/asm/Item;-><init>(SLcom/lua/bsh/org/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Lcom/lua/bsh/org/objectweb/asm/Item;)V

    :cond_0
    return-object v0
.end method

.method b(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->s:Lcom/lua/bsh/org/objectweb/asm/Item;

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/lua/bsh/org/objectweb/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->s:Lcom/lua/bsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->a(Lcom/lua/bsh/org/objectweb/asm/Item;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->c:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, v1}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put1(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->putUTF(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-short v1, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b:S

    add-int/lit8 v0, v1, 0x1

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b:S

    new-instance v0, Lcom/lua/bsh/org/objectweb/asm/Item;

    iget-object v2, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->s:Lcom/lua/bsh/org/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lcom/lua/bsh/org/objectweb/asm/Item;-><init>(SLcom/lua/bsh/org/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Lcom/lua/bsh/org/objectweb/asm/Item;)V

    :cond_0
    return-object v0
.end method

.method b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;
    .locals 3

    const/16 v2, 0xb

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->u:Lcom/lua/bsh/org/objectweb/asm/Item;

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/lua/bsh/org/objectweb/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->u:Lcom/lua/bsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->a(Lcom/lua/bsh/org/objectweb/asm/Item;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    invoke-direct {p0, p2, p3}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v1

    iget-short v1, v1, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    invoke-direct {p0, v2, v0, v1}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->a(III)V

    iget-short v1, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b:S

    add-int/lit8 v0, v1, 0x1

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b:S

    new-instance v0, Lcom/lua/bsh/org/objectweb/asm/Item;

    iget-object v2, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->u:Lcom/lua/bsh/org/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lcom/lua/bsh/org/objectweb/asm/Item;-><init>(SLcom/lua/bsh/org/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Lcom/lua/bsh/org/objectweb/asm/Item;)V

    :cond_0
    return-object v0
.end method

.method c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;
    .locals 3

    const/16 v2, 0xa

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->u:Lcom/lua/bsh/org/objectweb/asm/Item;

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/lua/bsh/org/objectweb/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->u:Lcom/lua/bsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->a(Lcom/lua/bsh/org/objectweb/asm/Item;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    invoke-direct {p0, p2, p3}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v1

    iget-short v1, v1, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    invoke-direct {p0, v2, v0, v1}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->a(III)V

    iget-short v1, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b:S

    add-int/lit8 v0, v1, 0x1

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b:S

    new-instance v0, Lcom/lua/bsh/org/objectweb/asm/Item;

    iget-object v2, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->u:Lcom/lua/bsh/org/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lcom/lua/bsh/org/objectweb/asm/Item;-><init>(SLcom/lua/bsh/org/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Lcom/lua/bsh/org/objectweb/asm/Item;)V

    :cond_0
    return-object v0
.end method

.method public toByteArray()[B
    .locals 8

    const/high16 v7, 0x20000

    const/4 v1, 0x0

    iget v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->i:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x18

    iget-object v2, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->m:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    if-eqz v2, :cond_0

    iget v2, v2, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    add-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->o:Lcom/lua/bsh/org/objectweb/asm/CodeWriter;

    move v3, v1

    :goto_0
    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->c:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget v2, v2, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->k:Lcom/lua/bsh/org/objectweb/asm/Item;

    if-eqz v2, :cond_7

    add-int/lit8 v2, v0, 0x8

    const/4 v0, 0x1

    :goto_1
    iget v4, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->f:I

    and-int/2addr v4, v7

    if-eqz v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x6

    :cond_1
    iget-object v4, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->r:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    if-eqz v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    iget v4, v4, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v4, v4, 0x8

    add-int/2addr v2, v4

    :cond_2
    new-instance v4, Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    invoke-direct {v4, v2}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;-><init>(I)V

    const v2, -0x35014542    # -8346975.0f

    invoke-virtual {v4, v2}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put4(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    move-result-object v2

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    move-result-object v2

    const/16 v5, 0x2d

    invoke-virtual {v2, v5}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-short v2, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b:S

    invoke-virtual {v4, v2}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    move-result-object v2

    iget-object v5, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->c:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-object v6, v5, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->a:[B

    iget v5, v5, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    invoke-virtual {v2, v6, v1, v5}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget v2, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->f:I

    invoke-virtual {v4, v2}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    move-result-object v2

    iget v5, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->g:I

    invoke-virtual {v2, v5}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    move-result-object v2

    iget v5, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->h:I

    invoke-virtual {v2, v5}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget v2, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->i:I

    invoke-virtual {v4, v2}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    move v2, v1

    :goto_2
    iget v5, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->i:I

    if-lt v2, v5, :cond_9

    iget v2, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->l:I

    invoke-virtual {v4, v2}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-object v2, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->m:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    if-eqz v2, :cond_3

    iget-object v5, v2, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->a:[B

    iget v2, v2, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    invoke-virtual {v4, v5, v1, v2}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    :cond_3
    invoke-virtual {v4, v3}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-object v2, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->o:Lcom/lua/bsh/org/objectweb/asm/CodeWriter;

    :goto_3
    if-nez v2, :cond_8

    invoke-virtual {v4, v0}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->k:Lcom/lua/bsh/org/objectweb/asm/Item;

    if-eqz v0, :cond_4

    const-string v0, "SourceFile"

    invoke-virtual {p0, v0}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {v4, v0}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put4(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v2, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->k:Lcom/lua/bsh/org/objectweb/asm/Item;

    iget-short v2, v2, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {v0, v2}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    :cond_4
    iget v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->f:I

    and-int/2addr v0, v7

    if-eqz v0, :cond_5

    const-string v0, "Deprecated"

    invoke-virtual {p0, v0}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {v4, v0}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put4(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    :cond_5
    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->r:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    if-eqz v0, :cond_6

    const-string v0, "InnerClasses"

    invoke-virtual {p0, v0}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {v4, v0}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->r:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget v0, v0, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v4, v0}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put4(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v2, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->q:I

    invoke-virtual {v0, v2}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->r:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-object v2, v0, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->a:[B

    iget v0, v0, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    invoke-virtual {v4, v2, v1, v0}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    :cond_6
    iget-object v0, v4, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->a:[B

    return-object v0

    :cond_7
    move v2, v0

    move v0, v1

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v2, v4}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a(Lcom/lua/bsh/org/objectweb/asm/ByteVector;)V

    iget-object v2, v2, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->c:Lcom/lua/bsh/org/objectweb/asm/CodeWriter;

    goto :goto_3

    :cond_9
    iget-object v5, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->j:[I

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v2}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a()I

    move-result v5

    iget-object v4, v2, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->c:Lcom/lua/bsh/org/objectweb/asm/CodeWriter;

    add-int v2, v0, v5

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    move-object v2, v4

    goto/16 :goto_0
.end method

.method public visit(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    iput p1, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->f:I

    invoke-virtual {p0, p2}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    iput v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->g:I

    if-nez p3, :cond_3

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->h:I

    if-eqz p4, :cond_0

    array-length v0, p4

    if-lez v0, :cond_0

    array-length v0, p4

    iput v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->i:I

    iget v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->i:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->j:[I

    :goto_1
    iget v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->i:I

    if-lt v1, v0, :cond_4

    :cond_0
    if-eqz p5, :cond_1

    const-string v0, "SourceFile"

    invoke-virtual {p0, v0}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    invoke-virtual {p0, p5}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v0

    iput-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->k:Lcom/lua/bsh/org/objectweb/asm/Item;

    :cond_1
    const/high16 v0, 0x20000

    and-int/2addr v0, p1

    if-eqz v0, :cond_2

    const-string v0, "Deprecated"

    invoke-virtual {p0, v0}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0, p3}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->j:[I

    aget-object v2, p4, v1

    invoke-virtual {p0, v2}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v2

    iget-short v2, v2, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public visitEnd()V
    .locals 0

    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    const/4 v1, 0x0

    iget v2, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->l:I

    const/4 v0, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->l:I

    iget-object v2, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->m:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    if-nez v2, :cond_0

    new-instance v2, Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    invoke-direct {v2}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v2, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->m:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    :cond_0
    iget-object v2, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->m:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v2, p1}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    move-result-object v2

    invoke-virtual {p0, p2}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v3

    iget-short v3, v3, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {v2, v3}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    move-result-object v2

    invoke-virtual {p0, p3}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v3

    iget-short v3, v3, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {v2, v3}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    if-eqz p4, :cond_6

    :goto_0
    const/high16 v2, 0x10000

    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    const/high16 v3, 0x20000

    and-int/2addr v3, p1

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    iget-object v4, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->m:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v4, v0}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    if-eqz p4, :cond_3

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->m:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    const-string v4, "ConstantValue"

    invoke-virtual {p0, v4}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v4

    iget-short v4, v4, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {v0, v4}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->m:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put4(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {p0, p4}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/Object;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v4

    iget-short v4, v4, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {v0, v4}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    :cond_3
    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->m:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    const-string v2, "Synthetic"

    invoke-virtual {p0, v2}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v2

    iget-short v2, v2, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {v0, v2}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put4(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    :cond_4
    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->m:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    const-string v2, "Deprecated"

    invoke-virtual {p0, v2}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v2

    iget-short v2, v2, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {v0, v2}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put4(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    :cond_5
    return-void

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->r:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    if-nez v0, :cond_0

    const-string v0, "InnerClasses"

    invoke-virtual {p0, v0}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    new-instance v0, Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->r:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    :cond_0
    iget v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->q:I

    iget-object v2, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->r:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-object v2, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->r:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    if-nez p2, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->r:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    if-nez p3, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->r:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p4}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p3}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v1

    iget-short v1, v1, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    goto :goto_2
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;
    .locals 2

    new-instance v0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;

    iget-boolean v1, p0, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->n:Z

    invoke-direct {v0, p0, v1}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;-><init>(Lcom/lua/bsh/org/objectweb/asm/ClassWriter;Z)V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method
