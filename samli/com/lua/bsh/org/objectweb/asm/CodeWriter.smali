.class public Lcom/lua/bsh/org/objectweb/asm/CodeWriter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/lua/bsh/org/objectweb/asm/CodeVisitor;


# static fields
.field private static final a:[I

.field private static b:Lcom/lua/bsh/org/objectweb/asm/Edge;


# instance fields
.field c:Lcom/lua/bsh/org/objectweb/asm/CodeWriter;

.field private d:Lcom/lua/bsh/org/objectweb/asm/ClassWriter;

.field private e:Lcom/lua/bsh/org/objectweb/asm/Item;

.field private f:Lcom/lua/bsh/org/objectweb/asm/Item;

.field private g:I

.field private h:I

.field private i:I

.field private j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

.field private k:I

.field private l:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

.field private m:I

.field private n:[I

.field private o:I

.field private p:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

.field private q:I

.field private r:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

.field private s:Z

.field private final t:Z

.field private u:I

.field private v:I

.field private w:Lcom/lua/bsh/org/objectweb/asm/Label;

.field private x:Lcom/lua/bsh/org/objectweb/asm/Label;

.field private y:Lcom/lua/bsh/org/objectweb/asm/Edge;

.field private z:Lcom/lua/bsh/org/objectweb/asm/Edge;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xca

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    sput-object v1, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a:[I

    return-void

    :cond_0
    const-string v2, "EFFFFFFFFGGFFFGGFFFEEFGFGFEEEEEEEEEEEEEEEEEEEEDEDEDDDDDCDCDEEEEEEEEEEEEEEEEEEEEBABABBBBDCFFFGGGEDCDCDCDCDCDCDCDCDCDCEEEEDDDDDDDCDCDCEFEFDDEEFFDEDEEEBDDBBDDDDDDCCCCCCCCEFEDDDCDCDEEEEEEEEEEFEEEEEEDDEEDDEE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x45

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/lua/bsh/org/objectweb/asm/ClassWriter;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-object v0, p1, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->o:Lcom/lua/bsh/org/objectweb/asm/CodeWriter;

    if-nez v0, :cond_1

    iput-object p0, p1, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->o:Lcom/lua/bsh/org/objectweb/asm/CodeWriter;

    :goto_0
    iput-object p0, p1, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->p:Lcom/lua/bsh/org/objectweb/asm/CodeWriter;

    iput-object p1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->d:Lcom/lua/bsh/org/objectweb/asm/ClassWriter;

    iput-boolean p2, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->t:Z

    if-eqz p2, :cond_0

    new-instance v0, Lcom/lua/bsh/org/objectweb/asm/Label;

    invoke-direct {v0}, Lcom/lua/bsh/org/objectweb/asm/Label;-><init>()V

    iput-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->w:Lcom/lua/bsh/org/objectweb/asm/Label;

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->w:Lcom/lua/bsh/org/objectweb/asm/Label;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lua/bsh/org/objectweb/asm/Label;->i:Z

    iput-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->x:Lcom/lua/bsh/org/objectweb/asm/Label;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->p:Lcom/lua/bsh/org/objectweb/asm/CodeWriter;

    iput-object p0, v0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->c:Lcom/lua/bsh/org/objectweb/asm/CodeWriter;

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)I
    .locals 8

    const/16 v7, 0x5b

    const/16 v6, 0x4a

    const/16 v5, 0x44

    const/4 v1, 0x1

    move v0, v1

    move v2, v1

    :cond_0
    :goto_0
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x29

    if-ne v2, v4, :cond_4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x56

    if-ne v2, v3, :cond_2

    const/4 v1, 0x0

    :cond_1
    :goto_1
    shl-int/lit8 v0, v0, 0x2

    or-int/2addr v0, v1

    return v0

    :cond_2
    if-eq v2, v5, :cond_3

    if-ne v2, v6, :cond_1

    :cond_3
    const/4 v1, 0x2

    goto :goto_1

    :cond_4
    const/16 v4, 0x4c

    if-ne v2, v4, :cond_6

    :goto_2
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v3, v2

    goto :goto_2

    :cond_6
    if-ne v2, v7, :cond_9

    move v2, v3

    :goto_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v7, :cond_8

    if-eq v3, v5, :cond_7

    if-ne v3, v6, :cond_0

    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    if-eq v2, v5, :cond_a

    if-ne v2, v6, :cond_b

    :cond_a
    add-int/lit8 v0, v0, 0x2

    :goto_4
    move v2, v3

    goto :goto_0

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method static a([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static a([I[III)I
    .locals 3

    sub-int v1, p3, p2

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    aget v2, p0, v0

    if-ge p2, v2, :cond_2

    aget v2, p0, v0

    if-gt v2, p3, :cond_2

    aget v2, p1, v0

    add-int/2addr v1, v2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    aget v2, p0, v0

    if-ge p3, v2, :cond_1

    aget v2, p0, v0

    if-gt v2, p2, :cond_1

    aget v2, p1, v0

    sub-int/2addr v1, v2

    goto :goto_1
.end method

.method private a(ILcom/lua/bsh/org/objectweb/asm/Label;)V
    .locals 3

    sget-object v1, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a:[I

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->b:Lcom/lua/bsh/org/objectweb/asm/Edge;

    if-nez v0, :cond_1

    new-instance v0, Lcom/lua/bsh/org/objectweb/asm/Edge;

    invoke-direct {v0}, Lcom/lua/bsh/org/objectweb/asm/Edge;-><init>()V

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->z:Lcom/lua/bsh/org/objectweb/asm/Edge;

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->z:Lcom/lua/bsh/org/objectweb/asm/Edge;

    :cond_0
    iget-object v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->y:Lcom/lua/bsh/org/objectweb/asm/Edge;

    iput-object v1, v0, Lcom/lua/bsh/org/objectweb/asm/Edge;->d:Lcom/lua/bsh/org/objectweb/asm/Edge;

    iput-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->y:Lcom/lua/bsh/org/objectweb/asm/Edge;

    iput p1, v0, Lcom/lua/bsh/org/objectweb/asm/Edge;->a:I

    iput-object p2, v0, Lcom/lua/bsh/org/objectweb/asm/Edge;->b:Lcom/lua/bsh/org/objectweb/asm/Label;

    iget-object v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->w:Lcom/lua/bsh/org/objectweb/asm/Label;

    iget-object v2, v1, Lcom/lua/bsh/org/objectweb/asm/Label;->g:Lcom/lua/bsh/org/objectweb/asm/Edge;

    iput-object v2, v0, Lcom/lua/bsh/org/objectweb/asm/Edge;->c:Lcom/lua/bsh/org/objectweb/asm/Edge;

    iput-object v0, v1, Lcom/lua/bsh/org/objectweb/asm/Label;->g:Lcom/lua/bsh/org/objectweb/asm/Edge;

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->b:Lcom/lua/bsh/org/objectweb/asm/Edge;

    sget-object v2, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->b:Lcom/lua/bsh/org/objectweb/asm/Edge;

    iget-object v2, v2, Lcom/lua/bsh/org/objectweb/asm/Edge;->d:Lcom/lua/bsh/org/objectweb/asm/Edge;

    sput-object v2, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->b:Lcom/lua/bsh/org/objectweb/asm/Edge;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static a([BII)V
    .locals 2

    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    int-to-byte v1, p2

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    return-void
.end method

.method static b([BI)S
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method static c([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method final a()I
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->s:Z

    if-eqz v0, :cond_0

    new-array v0, v2, [I

    new-array v1, v2, [I

    invoke-virtual {p0, v0, v1, v2}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a([I[II)[I

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget v0, v0, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->d:Lcom/lua/bsh/org/objectweb/asm/ClassWriter;

    const-string v1, "Code"

    invoke-virtual {v0, v1}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget v0, v0, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v0, v0, 0x12

    iget v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->k:I

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->p:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    if-eqz v1, :cond_1

    iget v1, v1, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->r:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    if-eqz v1, :cond_2

    iget v1, v1, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_2
    :goto_0
    iget v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->m:I

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->d:Lcom/lua/bsh/org/objectweb/asm/ClassWriter;

    const-string v2, "Exceptions"

    invoke-virtual {v1, v2}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    iget v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->m:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->g:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->d:Lcom/lua/bsh/org/objectweb/asm/ClassWriter;

    const-string v2, "Synthetic"

    invoke-virtual {v1, v2}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    add-int/lit8 v0, v0, 0x6

    :cond_4
    iget v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->g:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->d:Lcom/lua/bsh/org/objectweb/asm/ClassWriter;

    const-string v2, "Deprecated"

    invoke-virtual {v1, v2}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    add-int/lit8 v0, v0, 0x6

    :cond_5
    return v0

    :cond_6
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    iput p1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->g:I

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->d:Lcom/lua/bsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p2}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v0

    iput-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->e:Lcom/lua/bsh/org/objectweb/asm/Item;

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->d:Lcom/lua/bsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p3}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v0

    iput-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->f:Lcom/lua/bsh/org/objectweb/asm/Item;

    if-eqz p4, :cond_0

    array-length v0, p4

    if-lez v0, :cond_0

    array-length v0, p4

    iput v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->m:I

    iget v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->m:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->n:[I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->m:I

    if-lt v0, v1, :cond_3

    :cond_0
    iget-boolean v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->t:Z

    if-eqz v0, :cond_2

    invoke-static {p3}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a(Ljava/lang/String;)I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    iget v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->i:I

    if-le v0, v1, :cond_2

    iput v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->i:I

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->n:[I

    iget-object v2, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->d:Lcom/lua/bsh/org/objectweb/asm/ClassWriter;

    aget-object v3, p4, v0

    invoke-virtual {v2, v3}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v2

    iget-short v2, v2, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method final a(Lcom/lua/bsh/org/objectweb/asm/ByteVector;)V
    .locals 7

    const/high16 v6, 0x20000

    const/high16 v5, 0x10000

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->g:I

    invoke-virtual {p1, v0}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v3, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->e:Lcom/lua/bsh/org/objectweb/asm/Item;

    iget-short v3, v3, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {v0, v3}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v3, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->f:Lcom/lua/bsh/org/objectweb/asm/Item;

    iget-short v3, v3, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {v0, v3}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget v0, v0, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    if-lez v0, :cond_c

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->m:I

    if-lez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    iget v3, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->g:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget v3, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->g:I

    and-int/2addr v3, v6

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    invoke-virtual {p1, v0}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget v0, v0, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    if-lez v0, :cond_8

    add-int/lit8 v0, v0, 0xc

    iget v3, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->k:I

    mul-int/lit8 v3, v3, 0x8

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->p:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    if-eqz v3, :cond_3

    iget v3, v3, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v0, v3

    :cond_3
    iget-object v3, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->r:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    if-eqz v3, :cond_4

    iget v3, v3, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v0, v3

    :cond_4
    iget-object v3, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->d:Lcom/lua/bsh/org/objectweb/asm/ClassWriter;

    const-string v4, "Code"

    invoke-virtual {v3, v4}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v3

    iget-short v3, v3, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {p1, v3}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put4(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->h:I

    invoke-virtual {p1, v0}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v3, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->i:I

    invoke-virtual {v0, v3}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget v0, v0, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    invoke-virtual {p1, v0}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put4(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v3, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-object v4, v3, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->a:[B

    iget v3, v3, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    invoke-virtual {v0, v4, v2, v3}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->k:I

    invoke-virtual {p1, v0}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->k:I

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->l:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-object v3, v0, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->a:[B

    iget v0, v0, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    invoke-virtual {p1, v3, v2, v0}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    :cond_5
    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->p:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    if-eqz v0, :cond_d

    :goto_1
    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->r:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    if-eqz v0, :cond_6

    add-int/lit8 v1, v1, 0x1

    :cond_6
    invoke-virtual {p1, v1}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->p:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->d:Lcom/lua/bsh/org/objectweb/asm/ClassWriter;

    const-string v1, "LocalVariableTable"

    invoke-virtual {v0, v1}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {p1, v0}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->p:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget v0, v0, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put4(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->o:I

    invoke-virtual {v0, v1}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->p:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-object v1, v0, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->a:[B

    iget v0, v0, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    invoke-virtual {p1, v1, v2, v0}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    :cond_7
    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->r:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->d:Lcom/lua/bsh/org/objectweb/asm/ClassWriter;

    const-string v1, "LineNumberTable"

    invoke-virtual {v0, v1}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {p1, v0}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->r:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget v0, v0, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put4(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->q:I

    invoke-virtual {v0, v1}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->r:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-object v1, v0, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->a:[B

    iget v0, v0, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    invoke-virtual {p1, v1, v2, v0}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    :cond_8
    iget v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->m:I

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->d:Lcom/lua/bsh/org/objectweb/asm/ClassWriter;

    const-string v1, "Exceptions"

    invoke-virtual {v0, v1}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {p1, v0}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->m:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put4(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->m:I

    invoke-virtual {p1, v0}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    move v0, v2

    :goto_2
    iget v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->m:I

    if-lt v0, v1, :cond_e

    :cond_9
    iget v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->g:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->d:Lcom/lua/bsh/org/objectweb/asm/ClassWriter;

    const-string v1, "Synthetic"

    invoke-virtual {v0, v1}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {p1, v0}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put4(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    :cond_a
    iget v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->g:I

    and-int/2addr v0, v6

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->d:Lcom/lua/bsh/org/objectweb/asm/ClassWriter;

    const-string v1, "Deprecated"

    invoke-virtual {v0, v1}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {p1, v0}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put4(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    :cond_b
    return-void

    :cond_c
    move v0, v2

    goto/16 :goto_0

    :cond_d
    move v1, v2

    goto/16 :goto_1

    :cond_e
    iget-object v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->n:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method protected a([I[II)[I
    .locals 15

    iget-object v2, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-object v10, v2, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->a:[B

    move/from16 v0, p3

    new-array v6, v0, [I

    move/from16 v0, p3

    new-array v5, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v0, v2, v6, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget v2, v2, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    new-array v9, v2, [Z

    const/4 v4, 0x3

    const/4 v2, 0x3

    :cond_0
    if-ne v2, v4, :cond_1

    const/4 v2, 0x2

    :cond_1
    const/4 v3, 0x0

    :goto_0
    array-length v7, v10

    if-lt v3, v7, :cond_19

    if-ge v2, v4, :cond_2

    add-int/lit8 v2, v2, -0x1

    :cond_2
    if-nez v2, :cond_0

    new-instance v11, Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-object v2, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget v2, v2, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    invoke-direct {v11, v2}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;-><init>(I)V

    const/4 v3, 0x0

    const/16 v2, 0x84

    :goto_1
    iget-object v7, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget v7, v7, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    if-lt v3, v7, :cond_9

    iget-object v2, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->l:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->a:[B

    const/4 v2, 0x0

    :goto_2
    iget-object v4, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->l:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget v4, v4, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    if-lt v2, v4, :cond_6

    :cond_3
    iget-object v2, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->p:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    if-eqz v2, :cond_4

    iget-object v3, v2, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->a:[B

    const/4 v2, 0x0

    :goto_3
    iget-object v4, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->p:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget v4, v4, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    if-lt v2, v4, :cond_7

    :cond_4
    iget-object v2, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->r:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    if-eqz v2, :cond_5

    iget-object v3, v2, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->a:[B

    const/4 v2, 0x0

    :goto_4
    iget-object v4, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->r:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget v4, v4, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    if-lt v2, v4, :cond_8

    :cond_5
    iput-object v11, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    return-object p1

    :cond_6
    const/4 v4, 0x0

    invoke-static {v3, v2}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->c([BI)I

    move-result v7

    invoke-static {v6, v5, v4, v7}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a([I[III)I

    move-result v4

    invoke-static {v3, v2, v4}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a([BII)V

    add-int/lit8 v4, v2, 0x2

    const/4 v7, 0x0

    invoke-static {v3, v4}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->c([BI)I

    move-result v8

    invoke-static {v6, v5, v7, v8}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a([I[III)I

    move-result v7

    invoke-static {v3, v4, v7}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a([BII)V

    add-int/lit8 v4, v2, 0x4

    const/4 v7, 0x0

    invoke-static {v3, v4}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->c([BI)I

    move-result v8

    invoke-static {v6, v5, v7, v8}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a([I[III)I

    move-result v7

    invoke-static {v3, v4, v7}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a([BII)V

    add-int/lit8 v2, v2, 0x8

    goto :goto_2

    :cond_7
    invoke-static {v3, v2}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->c([BI)I

    move-result v4

    const/4 v7, 0x0

    invoke-static {v6, v5, v7, v4}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a([I[III)I

    move-result v7

    invoke-static {v3, v2, v7}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a([BII)V

    const/4 v8, 0x0

    add-int/lit8 v9, v2, 0x2

    invoke-static {v3, v9}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->c([BI)I

    move-result v9

    add-int/2addr v4, v9

    invoke-static {v6, v5, v8, v4}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a([I[III)I

    move-result v4

    sub-int/2addr v4, v7

    invoke-static {v3, v2, v4}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a([BII)V

    add-int/lit8 v2, v2, 0xa

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    invoke-static {v3, v2}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->c([BI)I

    move-result v7

    invoke-static {v6, v5, v4, v7}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a([I[III)I

    move-result v4

    invoke-static {v3, v2, v4}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a([BII)V

    add-int/lit8 v2, v2, 0x4

    goto :goto_4

    :cond_9
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    :goto_5
    if-gez v7, :cond_16

    aget-byte v7, v10, v3

    and-int/lit16 v7, v7, 0xff

    sget-object v8, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->a:[B

    aget-byte v8, v8, v7

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    const/4 v2, 0x4

    invoke-virtual {v11, v10, v3, v2}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    add-int/lit8 v3, v3, 0x4

    :goto_6
    const/16 v2, 0x84

    goto/16 :goto_1

    :pswitch_1
    add-int/lit8 v7, v3, 0x1

    aget-byte v7, v10, v7

    and-int/lit16 v7, v7, 0xff

    if-ne v7, v2, :cond_a

    const/4 v7, 0x6

    invoke-virtual {v11, v10, v3, v7}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    add-int/lit8 v3, v3, 0x6

    goto/16 :goto_1

    :cond_a
    const/4 v7, 0x4

    invoke-virtual {v11, v10, v3, v7}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    add-int/lit8 v3, v3, 0x4

    goto/16 :goto_1

    :pswitch_2
    add-int/lit8 v7, v3, 0x4

    and-int/lit8 v8, v3, 0x3

    sub-int/2addr v7, v8

    iget v8, v11, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    const/16 v8, 0xab

    invoke-virtual {v11, v8}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put1(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    :goto_7
    iget v8, v11, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    rem-int/lit8 v8, v8, 0x4

    if-nez v8, :cond_c

    invoke-static {v10, v7}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a([BI)I

    move-result v8

    add-int/lit8 v9, v7, 0x4

    add-int v7, v8, v3

    invoke-static {v6, v5, v3, v7}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a([I[III)I

    move-result v7

    invoke-virtual {v11, v7}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put4(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    invoke-static {v10, v9}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a([BI)I

    move-result v7

    invoke-virtual {v11, v7}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put4(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    add-int/lit8 v8, v9, 0x4

    move v14, v7

    move v7, v8

    move v8, v14

    :goto_8
    if-gtz v8, :cond_b

    move v3, v7

    goto/16 :goto_1

    :cond_b
    invoke-static {v10, v7}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a([BI)I

    move-result v2

    invoke-virtual {v11, v2}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put4(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    add-int/lit8 v2, v7, 0x4

    invoke-static {v10, v2}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a([BI)I

    move-result v9

    add-int/lit8 v7, v2, 0x4

    add-int v2, v9, v3

    invoke-static {v6, v5, v3, v2}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a([I[III)I

    move-result v2

    invoke-virtual {v11, v2}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put4(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    const/16 v9, 0x84

    add-int/lit8 v2, v8, -0x1

    move v8, v2

    move v2, v9

    goto :goto_8

    :cond_c
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put1(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    const/16 v2, 0x84

    goto :goto_7

    :pswitch_3
    add-int/lit8 v2, v3, 0x4

    and-int/lit8 v7, v3, 0x3

    sub-int/2addr v2, v7

    iget v7, v11, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    const/16 v7, 0xaa

    invoke-virtual {v11, v7}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put1(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    :goto_9
    iget v7, v11, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    rem-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_e

    invoke-static {v10, v2}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a([BI)I

    move-result v7

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v7, v3

    invoke-static {v6, v5, v3, v7}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a([I[III)I

    move-result v7

    invoke-virtual {v11, v7}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put4(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    invoke-static {v10, v2}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a([BI)I

    move-result v8

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v11, v8}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put4(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    invoke-static {v10, v2}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a([BI)I

    move-result v9

    add-int/lit8 v7, v2, 0x4

    add-int/lit8 v2, v7, -0x4

    invoke-static {v10, v2}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a([BI)I

    move-result v2

    invoke-virtual {v11, v2}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put4(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    sub-int v2, v9, v8

    add-int/lit8 v2, v2, 0x1

    move v14, v2

    move v2, v7

    move v7, v14

    :goto_a
    if-gtz v7, :cond_d

    move v3, v2

    goto/16 :goto_6

    :cond_d
    invoke-static {v10, v2}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a([BI)I

    move-result v8

    add-int/2addr v8, v3

    invoke-static {v6, v5, v3, v8}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a([I[III)I

    move-result v8

    invoke-virtual {v11, v8}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put4(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v2, v2, 0x4

    goto :goto_a

    :cond_e
    const/4 v7, 0x0

    invoke-virtual {v11, v7}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put1(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    goto :goto_9

    :pswitch_4
    add-int/lit8 v2, v3, 0x1

    invoke-static {v10, v2}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a([BI)I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v6, v5, v3, v2}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a([I[III)I

    move-result v2

    invoke-virtual {v11, v7}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put1(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v11, v2}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put4(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    :goto_b
    add-int/lit8 v3, v3, 0x5

    goto/16 :goto_6

    :pswitch_5
    const/16 v2, 0xc9

    if-le v7, v2, :cond_11

    const/16 v2, 0xda

    if-ge v7, v2, :cond_10

    add-int/lit8 v2, v7, -0x31

    :goto_c
    add-int/lit8 v7, v3, 0x1

    invoke-static {v10, v7}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->c([BI)I

    move-result v7

    move v14, v7

    move v7, v2

    move v2, v14

    :goto_d
    add-int/2addr v2, v3

    invoke-static {v6, v5, v3, v2}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a([I[III)I

    move-result v2

    const/16 v8, -0x8000

    if-lt v2, v8, :cond_f

    const/16 v8, 0x7fff

    if-le v2, v8, :cond_12

    :cond_f
    const/16 v8, 0xa7

    if-ne v7, v8, :cond_13

    const/16 v7, 0xc8

    invoke-virtual {v11, v7}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put1(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    :goto_e
    invoke-virtual {v11, v2}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put4(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    :goto_f
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_6

    :cond_10
    add-int/lit8 v2, v7, -0x14

    goto :goto_c

    :cond_11
    add-int/lit8 v2, v3, 0x1

    invoke-static {v10, v2}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->b([BI)S

    move-result v2

    goto :goto_d

    :cond_12
    invoke-virtual {v11, v7}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put1(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v11, v2}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    goto :goto_f

    :cond_13
    const/16 v8, 0xa8

    if-ne v7, v8, :cond_14

    const/16 v7, 0xc9

    invoke-virtual {v11, v7}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put1(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    goto :goto_e

    :cond_14
    const/16 v8, 0xa6

    if-gt v7, v8, :cond_15

    add-int/lit8 v7, v7, 0x1

    xor-int/lit8 v7, v7, 0x1

    add-int/lit8 v7, v7, -0x1

    :goto_10
    invoke-virtual {v11, v7}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put1(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    const/16 v7, 0x8

    invoke-virtual {v11, v7}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    const/16 v7, 0xc8

    invoke-virtual {v11, v7}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put1(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    add-int/lit8 v2, v2, -0x3

    goto :goto_e

    :cond_15
    xor-int/lit8 v7, v7, 0x1

    goto :goto_10

    :pswitch_6
    const/4 v2, 0x5

    invoke-virtual {v11, v10, v3, v2}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    goto :goto_b

    :pswitch_7
    invoke-virtual {v11, v10, v3, v4}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    goto :goto_f

    :pswitch_8
    const/4 v2, 0x2

    invoke-virtual {v11, v10, v3, v2}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_6

    :pswitch_9
    invoke-virtual {v11, v7}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put1(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    :cond_16
    aget v2, v6, v7

    if-ne v2, v3, :cond_17

    move/from16 v0, p3

    if-ge v7, v0, :cond_17

    aget v2, p2, v7

    if-lez v2, :cond_18

    const/4 v2, 0x0

    const/4 v8, 0x0

    aget v9, p2, v7

    invoke-virtual {v11, v2, v8, v9}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    :goto_11
    iget v2, v11, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    aput v2, p1, v7

    :cond_17
    add-int/lit8 v2, v7, -0x1

    const/16 v7, 0x84

    move v14, v2

    move v2, v7

    move v7, v14

    goto/16 :goto_5

    :cond_18
    iget v2, v11, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    aget v8, p2, v7

    add-int/2addr v2, v8

    iput v2, v11, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    goto :goto_11

    :cond_19
    aget-byte v4, v10, v3

    and-int/lit16 v4, v4, 0xff

    sget-object v7, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->a:[B

    aget-byte v7, v7, v4

    packed-switch v7, :pswitch_data_1

    :cond_1a
    :pswitch_a
    add-int/lit8 v3, v3, 0x4

    :goto_12
    const/4 v4, 0x0

    move v8, v4

    :goto_13
    if-eqz v8, :cond_1b

    array-length v4, v6

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [I

    array-length v7, v5

    add-int/lit8 v7, v7, 0x1

    new-array v7, v7, [I

    const/4 v11, 0x0

    const/4 v12, 0x0

    array-length v13, v6

    invoke-static {v6, v11, v4, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    array-length v13, v5

    invoke-static {v5, v11, v7, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6

    aput v3, v4, v6

    array-length v5, v5

    aput v8, v7, v5

    if-lez v8, :cond_26

    const/4 v2, 0x3

    move-object v6, v4

    move-object v5, v7

    :cond_1b
    :goto_14
    const/4 v4, 0x3

    goto/16 :goto_0

    :pswitch_b
    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v10, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v7, 0x84

    if-ne v4, v7, :cond_1a

    add-int/lit8 v3, v3, 0x6

    goto :goto_12

    :pswitch_c
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1c

    const/4 v4, 0x0

    invoke-static {v6, v5, v4, v3}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a([I[III)I

    move-result v4

    and-int/lit8 v4, v4, 0x3

    neg-int v4, v4

    :goto_15
    add-int/lit8 v7, v3, 0x4

    and-int/lit8 v3, v3, 0x3

    sub-int v3, v7, v3

    add-int/lit8 v7, v3, 0x4

    invoke-static {v10, v7}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a([BI)I

    move-result v7

    mul-int/lit8 v7, v7, 0x8

    add-int/lit8 v7, v7, 0x8

    add-int/2addr v3, v7

    move v8, v4

    goto :goto_13

    :cond_1c
    aget-boolean v4, v9, v3

    if-nez v4, :cond_1d

    and-int/lit8 v4, v3, 0x3

    const/4 v7, 0x1

    aput-boolean v7, v9, v3

    goto :goto_15

    :cond_1d
    const/4 v4, 0x0

    goto :goto_15

    :pswitch_d
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1e

    const/4 v4, 0x0

    invoke-static {v6, v5, v4, v3}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a([I[III)I

    move-result v4

    and-int/lit8 v4, v4, 0x3

    neg-int v4, v4

    :goto_16
    add-int/lit8 v7, v3, 0x4

    and-int/lit8 v3, v3, 0x3

    sub-int v3, v7, v3

    add-int/lit8 v7, v3, 0x8

    invoke-static {v10, v7}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a([BI)I

    move-result v7

    add-int/lit8 v8, v3, 0x4

    invoke-static {v10, v8}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a([BI)I

    move-result v8

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    mul-int/lit8 v7, v7, 0x4

    add-int/lit8 v7, v7, 0xc

    add-int/2addr v3, v7

    move v8, v4

    goto/16 :goto_13

    :cond_1e
    aget-boolean v4, v9, v3

    if-nez v4, :cond_1f

    and-int/lit8 v4, v3, 0x3

    const/4 v7, 0x1

    aput-boolean v7, v9, v3

    goto :goto_16

    :cond_1f
    const/4 v4, 0x0

    goto :goto_16

    :pswitch_e
    const/16 v7, 0xc9

    if-le v4, v7, :cond_23

    const/16 v7, 0xda

    if-ge v4, v7, :cond_22

    add-int/lit8 v4, v4, -0x31

    :goto_17
    add-int/lit8 v7, v3, 0x1

    invoke-static {v10, v7}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->c([BI)I

    move-result v7

    :goto_18
    add-int/2addr v7, v3

    invoke-static {v6, v5, v3, v7}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a([I[III)I

    move-result v7

    const/16 v8, -0x8000

    if-lt v7, v8, :cond_20

    const/16 v8, 0x7fff

    if-le v7, v8, :cond_25

    :cond_20
    aget-boolean v7, v9, v3

    if-nez v7, :cond_25

    const/16 v7, 0xa7

    if-eq v4, v7, :cond_21

    const/16 v7, 0xa8

    if-ne v4, v7, :cond_24

    :cond_21
    const/4 v4, 0x2

    :goto_19
    const/4 v7, 0x1

    aput-boolean v7, v9, v3

    :goto_1a
    add-int/lit8 v3, v3, 0x3

    move v8, v4

    goto/16 :goto_13

    :cond_22
    add-int/lit8 v4, v4, -0x14

    goto :goto_17

    :cond_23
    add-int/lit8 v7, v3, 0x1

    invoke-static {v10, v7}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->b([BI)S

    move-result v7

    goto :goto_18

    :cond_24
    const/4 v4, 0x5

    goto :goto_19

    :cond_25
    const/4 v4, 0x0

    goto :goto_1a

    :pswitch_f
    add-int/lit8 v3, v3, 0x5

    goto/16 :goto_12

    :pswitch_10
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_12

    :pswitch_11
    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_12

    :pswitch_12
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_12

    :cond_26
    move-object v6, v4

    move-object v5, v7

    goto/16 :goto_14

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_f
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_d
        :pswitch_c
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/16 v5, 0x4a

    const/16 v4, 0x44

    const/4 v1, -0x2

    iget-boolean v3, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->t:Z

    if-eqz v3, :cond_3

    invoke-virtual {p4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    packed-switch p1, :pswitch_data_0

    iget v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->u:I

    if-eq v3, v4, :cond_0

    if-ne v3, v5, :cond_1

    :cond_0
    const/4 v1, -0x3

    :cond_1
    :goto_0
    add-int/2addr v0, v1

    :goto_1
    iget v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->v:I

    if-le v0, v1, :cond_2

    iput v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->v:I

    :cond_2
    iput v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->u:I

    :cond_3
    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->d:Lcom/lua/bsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {v1, p2, p3, p4}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v1

    iget-short v1, v1, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {v0, p1, v1}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put12(II)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    return-void

    :pswitch_0
    iget v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->u:I

    if-eq v3, v4, :cond_4

    if-ne v3, v5, :cond_5

    :cond_4
    move v0, v2

    :cond_5
    add-int/2addr v0, v1

    goto :goto_1

    :pswitch_1
    iget v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->u:I

    if-eq v3, v4, :cond_1

    if-eq v3, v5, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->u:I

    if-eq v3, v4, :cond_6

    if-ne v3, v5, :cond_7

    :cond_6
    const/4 v2, 0x2

    :cond_7
    add-int/2addr v0, v2

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0xb2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public visitIincInsn(II)V
    .locals 3

    const/16 v2, 0x84

    iget-boolean v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->t:Z

    if-eqz v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->i:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->i:I

    :cond_0
    const/16 v0, 0xff

    if-gt p1, v0, :cond_1

    const/16 v0, 0x7f

    if-gt p2, v0, :cond_1

    const/16 v0, -0x80

    if-ge p2, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    const/16 v1, 0xc4

    invoke-virtual {v0, v1}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put1(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put12(II)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, v2}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put1(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put11(II)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    goto :goto_0
.end method

.method public visitInsn(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->t:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->u:I

    sget-object v1, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->v:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->v:I

    :cond_0
    iput v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->u:I

    const/16 v0, 0xac

    if-lt p1, v0, :cond_1

    const/16 v0, 0xb1

    if-le p1, v0, :cond_2

    :cond_1
    const/16 v0, 0xbf

    if-ne p1, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->w:Lcom/lua/bsh/org/objectweb/asm/Label;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->v:I

    iput v1, v0, Lcom/lua/bsh/org/objectweb/asm/Label;->f:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->w:Lcom/lua/bsh/org/objectweb/asm/Label;

    :cond_3
    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put1(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    return-void
.end method

.method public visitIntInsn(II)V
    .locals 2

    iget-boolean v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->t:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xbc

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->u:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->v:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->v:I

    :cond_0
    iput v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->u:I

    :cond_1
    const/16 v0, 0x11

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put12(II)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put11(II)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    goto :goto_0
.end method

.method public visitJumpInsn(ILcom/lua/bsh/org/objectweb/asm/Label;)V
    .locals 6

    const/16 v5, 0xc8

    const/16 v4, 0xa8

    const/16 v3, 0xa7

    iget-boolean v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->t:Z

    if-eqz v0, :cond_0

    if-ne p1, v3, :cond_1

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->w:Lcom/lua/bsh/org/objectweb/asm/Label;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->v:I

    iput v1, v0, Lcom/lua/bsh/org/objectweb/asm/Label;->f:I

    iget v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->u:I

    invoke-direct {p0, v0, p2}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a(ILcom/lua/bsh/org/objectweb/asm/Label;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->w:Lcom/lua/bsh/org/objectweb/asm/Label;

    :cond_0
    :goto_0
    iget-boolean v0, p2, Lcom/lua/bsh/org/objectweb/asm/Label;->a:Z

    if-eqz v0, :cond_6

    iget v0, p2, Lcom/lua/bsh/org/objectweb/asm/Label;->b:I

    iget-object v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget v2, v1, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    sub-int/2addr v0, v2

    const/16 v2, -0x8000

    if-ge v0, v2, :cond_6

    if-ne p1, v3, :cond_3

    invoke-virtual {v1, v5}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put1(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    :goto_1
    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget v1, v0, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {p2, p0, v0, v1, v2}, Lcom/lua/bsh/org/objectweb/asm/Label;->a(Lcom/lua/bsh/org/objectweb/asm/CodeWriter;Lcom/lua/bsh/org/objectweb/asm/ByteVector;IZ)V

    :goto_2
    return-void

    :cond_1
    if-ne p1, v4, :cond_2

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->w:Lcom/lua/bsh/org/objectweb/asm/Label;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->u:I

    add-int/lit8 v0, v0, 0x1

    :goto_3
    invoke-direct {p0, v0, p2}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a(ILcom/lua/bsh/org/objectweb/asm/Label;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->u:I

    sget-object v1, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->u:I

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->w:Lcom/lua/bsh/org/objectweb/asm/Label;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->u:I

    goto :goto_3

    :cond_3
    if-ne p1, v4, :cond_4

    const/16 v0, 0xc9

    invoke-virtual {v1, v0}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put1(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    goto :goto_1

    :cond_4
    const/16 v0, 0xa6

    if-gt p1, v0, :cond_5

    add-int/lit8 v0, p1, 0x1

    xor-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x1

    :goto_4
    invoke-virtual {v1, v0}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put1(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, v5}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put1(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    goto :goto_1

    :cond_5
    xor-int/lit8 v0, p1, 0x1

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put1(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget v1, v0, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p2, p0, v0, v1, v2}, Lcom/lua/bsh/org/objectweb/asm/Label;->a(Lcom/lua/bsh/org/objectweb/asm/CodeWriter;Lcom/lua/bsh/org/objectweb/asm/ByteVector;IZ)V

    goto :goto_2
.end method

.method public visitLabel(Lcom/lua/bsh/org/objectweb/asm/Label;)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->w:Lcom/lua/bsh/org/objectweb/asm/Label;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->v:I

    iput v1, v0, Lcom/lua/bsh/org/objectweb/asm/Label;->f:I

    iget v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->u:I

    invoke-direct {p0, v0, p1}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a(ILcom/lua/bsh/org/objectweb/asm/Label;)V

    :cond_0
    iput-object p1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->w:Lcom/lua/bsh/org/objectweb/asm/Label;

    iput v2, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->u:I

    iput v2, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->v:I

    :cond_1
    iget-boolean v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->s:Z

    iget-object v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget v2, v1, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    iget-object v1, v1, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->a:[B

    invoke-virtual {p1, p0, v2, v1}, Lcom/lua/bsh/org/objectweb/asm/Label;->a(Lcom/lua/bsh/org/objectweb/asm/CodeWriter;I[B)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->s:Z

    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 5

    const/4 v4, 0x6

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->d:Lcom/lua/bsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p1}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/Object;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v1

    iget-boolean v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->t:Z

    if-eqz v0, :cond_2

    iget v0, v1, Lcom/lua/bsh/org/objectweb/asm/Item;->b:I

    if-eq v0, v3, :cond_0

    if-ne v0, v4, :cond_4

    :cond_0
    iget v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->u:I

    add-int/lit8 v0, v0, 0x2

    :goto_0
    iget v2, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->v:I

    if-le v0, v2, :cond_1

    iput v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->v:I

    :cond_1
    iput v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->u:I

    :cond_2
    iget-short v2, v1, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    iget v0, v1, Lcom/lua/bsh/org/objectweb/asm/Item;->b:I

    if-eq v0, v3, :cond_3

    if-ne v0, v4, :cond_5

    :cond_3
    iget-object v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    const/16 v0, 0x14

    :goto_1
    invoke-virtual {v1, v0, v2}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put12(II)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    :goto_2
    return-void

    :cond_4
    iget v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->u:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const/16 v0, 0x100

    if-lt v2, v0, :cond_6

    iget-object v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    const/16 v0, 0x13

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, v2}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put11(II)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    goto :goto_2
.end method

.method public visitLineNumber(ILcom/lua/bsh/org/objectweb/asm/Label;)V
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->r:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->d:Lcom/lua/bsh/org/objectweb/asm/ClassWriter;

    const-string v1, "LineNumberTable"

    invoke-virtual {v0, v1}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    new-instance v0, Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->r:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    :cond_0
    iget v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->q:I

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->r:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget v1, p2, Lcom/lua/bsh/org/objectweb/asm/Label;->b:I

    invoke-virtual {v0, v1}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->r:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Lcom/lua/bsh/org/objectweb/asm/Label;Lcom/lua/bsh/org/objectweb/asm/Label;I)V
    .locals 3

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->p:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->d:Lcom/lua/bsh/org/objectweb/asm/ClassWriter;

    const-string v1, "LocalVariableTable"

    invoke-virtual {v0, v1}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    new-instance v0, Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->p:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    :cond_0
    iget v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->o:I

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->p:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget v1, p3, Lcom/lua/bsh/org/objectweb/asm/Label;->b:I

    invoke-virtual {v0, v1}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->p:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget v1, p4, Lcom/lua/bsh/org/objectweb/asm/Label;->b:I

    iget v2, p3, Lcom/lua/bsh/org/objectweb/asm/Label;->b:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->p:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->d:Lcom/lua/bsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {v1, p1}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v1

    iget-short v1, v1, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {v0, v1}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->p:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->d:Lcom/lua/bsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {v1, p2}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v1

    iget-short v1, v1, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {v0, v1}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->p:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p5}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    return-void
.end method

.method public visitLookupSwitchInsn(Lcom/lua/bsh/org/objectweb/asm/Label;[I[Lcom/lua/bsh/org/objectweb/asm/Label;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->t:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->u:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->u:I

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->w:Lcom/lua/bsh/org/objectweb/asm/Label;

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->v:I

    iput v2, v0, Lcom/lua/bsh/org/objectweb/asm/Label;->f:I

    iget v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->u:I

    invoke-direct {p0, v0, p1}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a(ILcom/lua/bsh/org/objectweb/asm/Label;)V

    move v0, v1

    :goto_0
    array-length v2, p3

    if-lt v0, v2, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->w:Lcom/lua/bsh/org/objectweb/asm/Label;

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget v2, v0, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    const/16 v3, 0xab

    invoke-virtual {v0, v3}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put1(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    :goto_1
    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget v3, v0, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    rem-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_3

    invoke-virtual {p1, p0, v0, v2, v4}, Lcom/lua/bsh/org/objectweb/asm/Label;->a(Lcom/lua/bsh/org/objectweb/asm/CodeWriter;Lcom/lua/bsh/org/objectweb/asm/ByteVector;IZ)V

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    array-length v3, p3

    invoke-virtual {v0, v3}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put4(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    :goto_2
    array-length v0, p3

    if-lt v1, v0, :cond_2

    return-void

    :cond_1
    iget v2, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->u:I

    aget-object v3, p3, v0

    invoke-direct {p0, v2, v3}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a(ILcom/lua/bsh/org/objectweb/asm/Label;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    aget v3, p2, v1

    invoke-virtual {v0, v3}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put4(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    aget-object v0, p3, v1

    iget-object v3, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p0, v3, v2, v4}, Lcom/lua/bsh/org/objectweb/asm/Label;->a(Lcom/lua/bsh/org/objectweb/asm/CodeWriter;Lcom/lua/bsh/org/objectweb/asm/ByteVector;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v1}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put1(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    goto :goto_1
.end method

.method public visitMaxs(II)V
    .locals 6

    iget-boolean v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->t:Z

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->x:Lcom/lua/bsh/org/objectweb/asm/Label;

    move-object v3, v2

    :goto_0
    if-nez v3, :cond_1

    iput v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->h:I

    sget-object v1, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a:[I

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->z:Lcom/lua/bsh/org/objectweb/asm/Edge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->z:Lcom/lua/bsh/org/objectweb/asm/Edge;

    sget-object v2, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->b:Lcom/lua/bsh/org/objectweb/asm/Edge;

    iput-object v2, v0, Lcom/lua/bsh/org/objectweb/asm/Edge;->d:Lcom/lua/bsh/org/objectweb/asm/Edge;

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->y:Lcom/lua/bsh/org/objectweb/asm/Edge;

    sput-object v0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->b:Lcom/lua/bsh/org/objectweb/asm/Edge;

    :cond_0
    monitor-exit v1

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    iget-object v2, v3, Lcom/lua/bsh/org/objectweb/asm/Label;->h:Lcom/lua/bsh/org/objectweb/asm/Label;

    iget v4, v3, Lcom/lua/bsh/org/objectweb/asm/Label;->e:I

    iget v0, v3, Lcom/lua/bsh/org/objectweb/asm/Label;->f:I

    add-int/2addr v0, v4

    if-le v0, v1, :cond_5

    :goto_2
    iget-object v1, v3, Lcom/lua/bsh/org/objectweb/asm/Label;->g:Lcom/lua/bsh/org/objectweb/asm/Edge;

    move-object v3, v1

    :goto_3
    if-nez v3, :cond_2

    move-object v3, v2

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v1, v3, Lcom/lua/bsh/org/objectweb/asm/Edge;->b:Lcom/lua/bsh/org/objectweb/asm/Label;

    iget-boolean v5, v1, Lcom/lua/bsh/org/objectweb/asm/Label;->i:Z

    if-nez v5, :cond_4

    iget v5, v3, Lcom/lua/bsh/org/objectweb/asm/Edge;->a:I

    add-int/2addr v5, v4

    iput v5, v1, Lcom/lua/bsh/org/objectweb/asm/Label;->e:I

    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/lua/bsh/org/objectweb/asm/Label;->i:Z

    iput-object v2, v1, Lcom/lua/bsh/org/objectweb/asm/Label;->h:Lcom/lua/bsh/org/objectweb/asm/Label;

    :goto_4
    iget-object v2, v3, Lcom/lua/bsh/org/objectweb/asm/Edge;->c:Lcom/lua/bsh/org/objectweb/asm/Edge;

    move-object v3, v2

    move-object v2, v1

    goto :goto_3

    :cond_3
    iput p1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->h:I

    iput p2, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->i:I

    goto :goto_1

    :cond_4
    move-object v1, v2

    goto :goto_4

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0xb9

    if-ne p1, v4, :cond_3

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->d:Lcom/lua/bsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p2, p3, p4}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v0

    :goto_0
    iget v1, v0, Lcom/lua/bsh/org/objectweb/asm/Item;->c:I

    iget-boolean v2, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->t:Z

    if-eqz v2, :cond_1

    if-nez v1, :cond_6

    invoke-static {p4}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/lua/bsh/org/objectweb/asm/Item;->c:I

    :goto_1
    const/16 v1, 0xb8

    if-ne p1, v1, :cond_4

    iget v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->u:I

    shr-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    and-int/lit8 v3, v2, 0x3

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    :goto_2
    iget v3, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->v:I

    if-le v1, v3, :cond_0

    iput v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->v:I

    :cond_0
    iput v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->u:I

    move v1, v2

    :cond_1
    if-ne p1, v4, :cond_5

    iget-boolean v2, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->t:Z

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    invoke-static {p4}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/lua/bsh/org/objectweb/asm/Item;->c:I

    :cond_2
    iget-object v2, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-short v0, v0, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {v2, v4, v0}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put12(II)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    shr-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put11(II)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    :goto_3
    return-void

    :cond_3
    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->d:Lcom/lua/bsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p2, p3, p4}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->u:I

    shr-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    and-int/lit8 v3, v2, 0x3

    add-int/2addr v1, v3

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-short v0, v0, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {v1, p1, v0}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put12(II)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    goto :goto_3

    :cond_6
    move v2, v1

    goto :goto_1
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 3

    iget-boolean v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->t:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->u:I

    rsub-int/lit8 v1, p2, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->u:I

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->d:Lcom/lua/bsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p1}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-object v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    const/16 v2, 0xc5

    iget-short v0, v0, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {v1, v2, v0}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put12(II)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put1(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    return-void
.end method

.method public visitTableSwitchInsn(IILcom/lua/bsh/org/objectweb/asm/Label;[Lcom/lua/bsh/org/objectweb/asm/Label;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->t:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->u:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->u:I

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->w:Lcom/lua/bsh/org/objectweb/asm/Label;

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->v:I

    iput v2, v0, Lcom/lua/bsh/org/objectweb/asm/Label;->f:I

    iget v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->u:I

    invoke-direct {p0, v0, p3}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a(ILcom/lua/bsh/org/objectweb/asm/Label;)V

    move v0, v1

    :goto_0
    array-length v2, p4

    if-lt v0, v2, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->w:Lcom/lua/bsh/org/objectweb/asm/Label;

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget v2, v0, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    const/16 v3, 0xaa

    invoke-virtual {v0, v3}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put1(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    :goto_1
    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget v3, v0, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->b:I

    rem-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_3

    invoke-virtual {p3, p0, v0, v2, v4}, Lcom/lua/bsh/org/objectweb/asm/Label;->a(Lcom/lua/bsh/org/objectweb/asm/CodeWriter;Lcom/lua/bsh/org/objectweb/asm/ByteVector;IZ)V

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put4(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put4(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    :goto_2
    array-length v0, p4

    if-lt v1, v0, :cond_2

    return-void

    :cond_1
    iget v2, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->u:I

    aget-object v3, p4, v0

    invoke-direct {p0, v2, v3}, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a(ILcom/lua/bsh/org/objectweb/asm/Label;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    aget-object v0, p4, v1

    iget-object v3, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p0, v3, v2, v4}, Lcom/lua/bsh/org/objectweb/asm/Label;->a(Lcom/lua/bsh/org/objectweb/asm/CodeWriter;Lcom/lua/bsh/org/objectweb/asm/ByteVector;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v1}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put1(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    goto :goto_1
.end method

.method public visitTryCatchBlock(Lcom/lua/bsh/org/objectweb/asm/Label;Lcom/lua/bsh/org/objectweb/asm/Label;Lcom/lua/bsh/org/objectweb/asm/Label;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->t:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p3, Lcom/lua/bsh/org/objectweb/asm/Label;->i:Z

    if-nez v0, :cond_0

    iput v1, p3, Lcom/lua/bsh/org/objectweb/asm/Label;->e:I

    iput-boolean v1, p3, Lcom/lua/bsh/org/objectweb/asm/Label;->i:Z

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->x:Lcom/lua/bsh/org/objectweb/asm/Label;

    iput-object v0, p3, Lcom/lua/bsh/org/objectweb/asm/Label;->h:Lcom/lua/bsh/org/objectweb/asm/Label;

    iput-object p3, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->x:Lcom/lua/bsh/org/objectweb/asm/Label;

    :cond_0
    iget v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->k:I

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->l:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    if-nez v0, :cond_1

    new-instance v0, Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->l:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    :cond_1
    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->l:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget v1, p1, Lcom/lua/bsh/org/objectweb/asm/Label;->b:I

    invoke-virtual {v0, v1}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->l:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget v1, p2, Lcom/lua/bsh/org/objectweb/asm/Label;->b:I

    invoke-virtual {v0, v1}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->l:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget v1, p3, Lcom/lua/bsh/org/objectweb/asm/Label;->b:I

    invoke-virtual {v0, v1}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->l:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    if-eqz p4, :cond_2

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->d:Lcom/lua/bsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p4}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    :goto_0
    invoke-virtual {v1, v0}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put2(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->t:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xbb

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->u:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->v:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->v:I

    :cond_0
    iput v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->u:I

    :cond_1
    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->d:Lcom/lua/bsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {v1, p2}, Lcom/lua/bsh/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;)Lcom/lua/bsh/org/objectweb/asm/Item;

    move-result-object v1

    iget-short v1, v1, Lcom/lua/bsh/org/objectweb/asm/Item;->a:S

    invoke-virtual {v0, p1, v1}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put12(II)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    return-void
.end method

.method public visitVarInsn(II)V
    .locals 3

    const/16 v2, 0xa9

    iget-boolean v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->t:Z

    if-eqz v0, :cond_2

    if-ne p1, v2, :cond_3

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->w:Lcom/lua/bsh/org/objectweb/asm/Label;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->v:I

    iput v1, v0, Lcom/lua/bsh/org/objectweb/asm/Label;->f:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->w:Lcom/lua/bsh/org/objectweb/asm/Label;

    :cond_0
    :goto_0
    const/16 v0, 0x16

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    const/16 v0, 0x37

    if-eq p1, v0, :cond_1

    const/16 v0, 0x39

    if-ne p1, v0, :cond_5

    :cond_1
    add-int/lit8 v0, p2, 0x2

    :goto_1
    iget v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->i:I

    if-le v0, v1, :cond_2

    iput v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->i:I

    :cond_2
    const/4 v0, 0x4

    if-ge p2, v0, :cond_7

    if-eq p1, v2, :cond_7

    const/16 v0, 0x36

    if-ge p1, v0, :cond_6

    add-int/lit8 v0, p1, -0x15

    shl-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1a

    :goto_2
    iget-object v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    add-int/2addr v0, p2

    invoke-virtual {v1, v0}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put1(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    :goto_3
    return-void

    :cond_3
    iget v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->u:I

    sget-object v1, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->a:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->v:I

    if-le v0, v1, :cond_4

    iput v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->v:I

    :cond_4
    iput v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->u:I

    goto :goto_0

    :cond_5
    add-int/lit8 v0, p2, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v0, p1, -0x36

    shl-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x3b

    goto :goto_2

    :cond_7
    const/16 v0, 0x100

    if-lt p2, v0, :cond_8

    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    const/16 v1, 0xc4

    invoke-virtual {v0, v1}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put1(I)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put12(II)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/lua/bsh/org/objectweb/asm/CodeWriter;->j:Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lcom/lua/bsh/org/objectweb/asm/ByteVector;->put11(II)Lcom/lua/bsh/org/objectweb/asm/ByteVector;

    goto :goto_3
.end method
