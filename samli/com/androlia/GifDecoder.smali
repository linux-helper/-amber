.class public Lcom/androlua/GifDecoder;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androlua/GifDecoder$GifAction;,
        Lcom/androlua/GifDecoder$GifFrame;
    }
.end annotation


# static fields
.field public static final STATUS_FINISH:I = -0x1

.field public static final STATUS_FORMAT_ERROR:I = 0x1

.field public static final STATUS_OPEN_ERROR:I = 0x2

.field public static final STATUS_PARSING:I


# instance fields
.field private A:Z

.field private B:[B

.field private C:I

.field private D:I

.field private E:I

.field private F:Z

.field private G:I

.field private H:I

.field private I:[S

.field private J:[B

.field private K:[B

.field private L:[B

.field private M:Lcom/androlua/GifDecoder$GifFrame;

.field private N:I

.field private O:Lcom/androlua/GifDecoder$GifAction;

.field private P:[B

.field private a:Ljava/io/InputStream;

.field private b:I

.field private c:Z

.field private d:I

.field private e:I

.field private f:[I

.field private g:[I

.field private h:[I

.field public height:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field public width:I

.field private x:Landroid/graphics/Bitmap;

.field private y:Landroid/graphics/Bitmap;

.field private z:Lcom/androlua/GifDecoder$GifFrame;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/androlua/GifDecoder$GifAction;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/androlua/GifDecoder;->e:I

    iput-object v2, p0, Lcom/androlua/GifDecoder;->z:Lcom/androlua/GifDecoder$GifFrame;

    iput-boolean v1, p0, Lcom/androlua/GifDecoder;->A:Z

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/androlua/GifDecoder;->B:[B

    iput v1, p0, Lcom/androlua/GifDecoder;->C:I

    iput v1, p0, Lcom/androlua/GifDecoder;->D:I

    iput v1, p0, Lcom/androlua/GifDecoder;->E:I

    iput-boolean v1, p0, Lcom/androlua/GifDecoder;->F:Z

    iput v1, p0, Lcom/androlua/GifDecoder;->G:I

    iput-object v2, p0, Lcom/androlua/GifDecoder;->O:Lcom/androlua/GifDecoder$GifAction;

    iput-object v2, p0, Lcom/androlua/GifDecoder;->P:[B

    iput-object p1, p0, Lcom/androlua/GifDecoder;->a:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/androlua/GifDecoder;->O:Lcom/androlua/GifDecoder$GifAction;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/androlua/GifDecoder$GifAction;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/androlua/GifDecoder;->e:I

    iput-object v2, p0, Lcom/androlua/GifDecoder;->z:Lcom/androlua/GifDecoder$GifFrame;

    iput-boolean v1, p0, Lcom/androlua/GifDecoder;->A:Z

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/androlua/GifDecoder;->B:[B

    iput v1, p0, Lcom/androlua/GifDecoder;->C:I

    iput v1, p0, Lcom/androlua/GifDecoder;->D:I

    iput v1, p0, Lcom/androlua/GifDecoder;->E:I

    iput-boolean v1, p0, Lcom/androlua/GifDecoder;->F:Z

    iput v1, p0, Lcom/androlua/GifDecoder;->G:I

    iput-object v2, p0, Lcom/androlua/GifDecoder;->O:Lcom/androlua/GifDecoder$GifAction;

    iput-object v2, p0, Lcom/androlua/GifDecoder;->P:[B

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/androlua/GifDecoder;->a:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/androlua/GifDecoder;->O:Lcom/androlua/GifDecoder$GifAction;

    return-void
.end method

.method public constructor <init>([BLcom/androlua/GifDecoder$GifAction;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/androlua/GifDecoder;->e:I

    iput-object v2, p0, Lcom/androlua/GifDecoder;->z:Lcom/androlua/GifDecoder$GifFrame;

    iput-boolean v1, p0, Lcom/androlua/GifDecoder;->A:Z

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/androlua/GifDecoder;->B:[B

    iput v1, p0, Lcom/androlua/GifDecoder;->C:I

    iput v1, p0, Lcom/androlua/GifDecoder;->D:I

    iput v1, p0, Lcom/androlua/GifDecoder;->E:I

    iput-boolean v1, p0, Lcom/androlua/GifDecoder;->F:Z

    iput v1, p0, Lcom/androlua/GifDecoder;->G:I

    iput-object v2, p0, Lcom/androlua/GifDecoder;->O:Lcom/androlua/GifDecoder$GifAction;

    iput-object v2, p0, Lcom/androlua/GifDecoder;->P:[B

    iput-object p1, p0, Lcom/androlua/GifDecoder;->P:[B

    iput-object p2, p0, Lcom/androlua/GifDecoder;->O:Lcom/androlua/GifDecoder$GifAction;

    return-void
.end method

.method private a()V
    .locals 26

    move-object/from16 v0, p0

    iget v1, v0, Lcom/androlua/GifDecoder;->r:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/androlua/GifDecoder;->s:I

    mul-int v17, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/androlua/GifDecoder;->L:[B

    if-eqz v1, :cond_0

    array-length v1, v1

    move/from16 v0, v17

    if-ge v1, v0, :cond_1

    :cond_0
    move/from16 v0, v17

    new-array v1, v0, [B

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/androlua/GifDecoder;->L:[B

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/androlua/GifDecoder;->I:[S

    if-nez v1, :cond_2

    const/16 v1, 0x1000

    new-array v1, v1, [S

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/androlua/GifDecoder;->I:[S

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/androlua/GifDecoder;->J:[B

    if-nez v1, :cond_3

    const/16 v1, 0x1000

    new-array v1, v1, [B

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/androlua/GifDecoder;->J:[B

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/androlua/GifDecoder;->K:[B

    if-nez v1, :cond_4

    const/16 v1, 0x1001

    new-array v1, v1, [B

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/androlua/GifDecoder;->K:[B

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/androlua/GifDecoder;->d()I

    move-result v1

    const/4 v2, 0x1

    shl-int v18, v2, v1

    add-int/lit8 v16, v18, 0x2

    add-int/lit8 v13, v1, 0x1

    const/4 v1, 0x1

    shl-int/2addr v1, v13

    add-int/lit8 v14, v1, -0x1

    const/4 v1, 0x0

    :goto_0
    move/from16 v0, v18

    if-ge v1, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androlua/GifDecoder;->I:[S

    const/4 v3, 0x0

    int-to-short v3, v3

    int-to-short v3, v3

    int-to-short v3, v3

    int-to-short v3, v3

    int-to-short v3, v3

    aput-short v3, v2, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androlua/GifDecoder;->J:[B

    int-to-byte v3, v1

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v7, -0x1

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v4, v14

    move v15, v1

    move/from16 v8, v16

    move v1, v3

    move v3, v13

    :goto_1
    move/from16 v0, v17

    if-ge v15, v0, :cond_f

    if-nez v11, :cond_e

    if-ge v5, v3, :cond_8

    if-nez v1, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/androlua/GifDecoder;->e()I

    move-result v1

    if-gtz v1, :cond_6

    move v1, v12

    :goto_2
    move/from16 v0, v17

    if-ge v1, v0, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androlua/GifDecoder;->L:[B

    const/4 v3, 0x0

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/androlua/GifDecoder;->B:[B

    aget-byte v6, v6, v2

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v5

    add-int/2addr v10, v6

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_8
    and-int v6, v10, v4

    shr-int/2addr v10, v3

    sub-int/2addr v5, v3

    if-gt v6, v8, :cond_f

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    if-eq v6, v0, :cond_f

    move/from16 v0, v18

    if-ne v6, v0, :cond_9

    const/4 v7, -0x1

    move v3, v13

    move v4, v14

    move/from16 v8, v16

    goto :goto_1

    :cond_9
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v7, v0, :cond_a

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/androlua/GifDecoder;->K:[B

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/androlua/GifDecoder;->J:[B

    aget-byte v9, v9, v6

    int-to-byte v9, v9

    int-to-byte v9, v9

    int-to-byte v9, v9

    int-to-byte v9, v9

    int-to-byte v9, v9

    aput-byte v9, v7, v11

    add-int/lit8 v11, v11, 0x1

    move v9, v6

    move v7, v6

    goto :goto_1

    :cond_a
    if-ne v6, v8, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androlua/GifDecoder;->K:[B

    move-object/from16 v19, v0

    int-to-byte v9, v9

    int-to-byte v9, v9

    int-to-byte v9, v9

    int-to-byte v9, v9

    int-to-byte v9, v9

    int-to-byte v9, v9

    aput-byte v9, v19, v11

    add-int/lit8 v11, v11, 0x1

    move v9, v7

    :goto_3
    move/from16 v0, v18

    if-le v9, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androlua/GifDecoder;->K:[B

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androlua/GifDecoder;->J:[B

    move-object/from16 v20, v0

    aget-byte v20, v20, v9

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v19, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androlua/GifDecoder;->I:[S

    move-object/from16 v19, v0

    aget-short v9, v19, v9

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_b
    move v9, v6

    goto :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androlua/GifDecoder;->J:[B

    move-object/from16 v19, v0

    aget-byte v9, v19, v9

    and-int/lit16 v9, v9, 0xff

    const/16 v20, 0x1000

    move/from16 v0, v20

    if-ge v8, v0, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androlua/GifDecoder;->K:[B

    move-object/from16 v20, v0

    int-to-byte v0, v9

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v20, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androlua/GifDecoder;->I:[S

    move-object/from16 v20, v0

    int-to-short v7, v7

    int-to-short v7, v7

    int-to-short v7, v7

    int-to-short v7, v7

    int-to-short v7, v7

    int-to-short v7, v7

    aput-short v7, v20, v8

    move/from16 v0, v21

    int-to-byte v7, v0

    int-to-byte v7, v7

    int-to-byte v7, v7

    int-to-byte v7, v7

    int-to-byte v7, v7

    aput-byte v7, v19, v8

    add-int/lit8 v7, v8, 0x1

    and-int v8, v7, v4

    if-nez v8, :cond_d

    const/16 v8, 0x1000

    if-ge v7, v8, :cond_d

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v4, v7

    :cond_d
    add-int/lit8 v8, v11, 0x1

    move/from16 v23, v5

    move v5, v3

    move/from16 v3, v23

    move/from16 v24, v6

    move v6, v4

    move/from16 v4, v24

    move/from16 v25, v9

    move v9, v10

    move v10, v8

    move/from16 v8, v25

    :goto_4
    add-int/lit8 v11, v10, -0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/androlua/GifDecoder;->L:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androlua/GifDecoder;->K:[B

    move-object/from16 v19, v0

    aget-byte v19, v19, v11

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v10, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v10, v15, 0x1

    move v15, v10

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v4

    move v4, v6

    move/from16 v23, v3

    move v3, v5

    move/from16 v5, v23

    goto/16 :goto_1

    :cond_e
    move v6, v4

    move v4, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move/from16 v23, v3

    move v3, v5

    move/from16 v5, v23

    goto :goto_4

    :cond_f
    move v1, v12

    goto/16 :goto_2

    :cond_10
    return-void
.end method

.method private a(I)[I
    .locals 7

    const/4 v1, 0x0

    mul-int/lit8 v2, p1, 0x3

    new-array v3, v2, [B

    :try_start_0
    iget-object v0, p0, Lcom/androlua/GifDecoder;->a:Ljava/io/InputStream;

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-ge v0, v2, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/androlua/GifDecoder;->b:I

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v0, 0x100

    new-array v0, v0, [I

    move v2, v1

    :goto_1
    if-ge v1, p1, :cond_0

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, v3, v2

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    const/high16 v6, -0x1000000

    or-int/2addr v2, v6

    or-int/2addr v2, v4

    aget-byte v4, v3, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v2, v4

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v5, 0x1

    goto :goto_1
.end method

.method private b()Z
    .locals 1

    iget v0, p0, Lcom/androlua/GifDecoder;->b:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput v1, p0, Lcom/androlua/GifDecoder;->b:I

    iput v1, p0, Lcom/androlua/GifDecoder;->N:I

    iput-object v0, p0, Lcom/androlua/GifDecoder;->M:Lcom/androlua/GifDecoder$GifFrame;

    iput-object v0, p0, Lcom/androlua/GifDecoder;->f:[I

    iput-object v0, p0, Lcom/androlua/GifDecoder;->g:[I

    return-void
.end method

.method private d()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/androlua/GifDecoder;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    iput v0, p0, Lcom/androlua/GifDecoder;->b:I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()I
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->d()I

    move-result v1

    iput v1, p0, Lcom/androlua/GifDecoder;->C:I

    iget v1, p0, Lcom/androlua/GifDecoder;->C:I

    if-lez v1, :cond_1

    :goto_0
    :try_start_0
    iget v1, p0, Lcom/androlua/GifDecoder;->C:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/androlua/GifDecoder;->a:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/androlua/GifDecoder;->B:[B

    iget v3, p0, Lcom/androlua/GifDecoder;->C:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    :cond_0
    :goto_1
    iget v1, p0, Lcom/androlua/GifDecoder;->C:I

    if-ge v0, v1, :cond_1

    const/4 v1, 0x1

    iput v1, p0, Lcom/androlua/GifDecoder;->b:I

    :cond_1
    return v0

    :cond_2
    add-int/2addr v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private f()I
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/androlua/GifDecoder;->P:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/androlua/GifDecoder;->a:Ljava/io/InputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androlua/GifDecoder;->P:[B

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->n()I

    move-result v0

    return v0
.end method

.method private g()V
    .locals 6

    const/4 v4, 0x1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    if-nez v3, :cond_8

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->b()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->d()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_1

    iput v4, p0, Lcom/androlua/GifDecoder;->b:I

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/androlua/GifDecoder;->j()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/androlua/GifDecoder;->d()I

    move-result v0

    const/16 v1, 0xf9

    if-eq v0, v1, :cond_7

    const/16 v1, 0xff

    if-eq v0, v1, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/androlua/GifDecoder;->q()V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/androlua/GifDecoder;->e()I

    const-string v0, ""

    move v1, v2

    :goto_1
    const/16 v5, 0xb

    if-ge v1, v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/androlua/GifDecoder;->B:[B

    aget-byte v0, v0, v1

    int-to-char v0, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    const-string v1, "NETSCAPE2.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->l()V

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/androlua/GifDecoder;->h()V

    goto :goto_0

    :cond_8
    return-void
.end method

.method private h()V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->d()I

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->d()I

    move-result v1

    and-int/lit8 v2, v1, 0x1c

    shr-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/androlua/GifDecoder;->D:I

    iget v2, p0, Lcom/androlua/GifDecoder;->D:I

    if-nez v2, :cond_0

    iput v0, p0, Lcom/androlua/GifDecoder;->D:I

    :cond_0
    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/androlua/GifDecoder;->F:Z

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->m()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/androlua/GifDecoder;->G:I

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->d()I

    move-result v0

    iput v0, p0, Lcom/androlua/GifDecoder;->H:I

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->d()I

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()V
    .locals 3

    const-string v1, ""

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->d()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "GIF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lcom/androlua/GifDecoder;->b:I

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/androlua/GifDecoder;->k()V

    iget-boolean v0, p0, Lcom/androlua/GifDecoder;->c:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/androlua/GifDecoder;->d:I

    invoke-direct {p0, v0}, Lcom/androlua/GifDecoder;->a(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/GifDecoder;->f:[I

    iget-object v0, p0, Lcom/androlua/GifDecoder;->f:[I

    iget v1, p0, Lcom/androlua/GifDecoder;->i:I

    aget v0, v0, v1

    iput v0, p0, Lcom/androlua/GifDecoder;->j:I

    goto :goto_1
.end method

.method private j()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->m()I

    move-result v0

    iput v0, p0, Lcom/androlua/GifDecoder;->p:I

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->m()I

    move-result v0

    iput v0, p0, Lcom/androlua/GifDecoder;->q:I

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->m()I

    move-result v0

    iput v0, p0, Lcom/androlua/GifDecoder;->r:I

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->m()I

    move-result v0

    iput v0, p0, Lcom/androlua/GifDecoder;->s:I

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->d()I

    move-result v3

    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/androlua/GifDecoder;->m:Z

    and-int/lit8 v0, v3, 0x40

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/androlua/GifDecoder;->n:Z

    const/4 v0, 0x2

    and-int/lit8 v3, v3, 0x7

    shl-int/2addr v0, v3

    iput v0, p0, Lcom/androlua/GifDecoder;->o:I

    iget-boolean v0, p0, Lcom/androlua/GifDecoder;->m:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/androlua/GifDecoder;->o:I

    invoke-direct {p0, v0}, Lcom/androlua/GifDecoder;->a(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/GifDecoder;->g:[I

    iget-object v0, p0, Lcom/androlua/GifDecoder;->g:[I

    iput-object v0, p0, Lcom/androlua/GifDecoder;->h:[I

    :cond_0
    :goto_2
    iget-boolean v0, p0, Lcom/androlua/GifDecoder;->F:Z

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/androlua/GifDecoder;->h:[I

    iget v4, p0, Lcom/androlua/GifDecoder;->H:I

    aget v0, v3, v4

    aput v2, v3, v4

    move v2, v0

    :cond_1
    iget-object v0, p0, Lcom/androlua/GifDecoder;->h:[I

    if-nez v0, :cond_2

    iput v1, p0, Lcom/androlua/GifDecoder;->b:I

    :cond_2
    invoke-direct {p0}, Lcom/androlua/GifDecoder;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_3
    :goto_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/androlua/GifDecoder;->f:[I

    iput-object v0, p0, Lcom/androlua/GifDecoder;->h:[I

    iget v0, p0, Lcom/androlua/GifDecoder;->i:I

    iget v3, p0, Lcom/androlua/GifDecoder;->H:I

    if-ne v0, v3, :cond_0

    iput v2, p0, Lcom/androlua/GifDecoder;->j:I

    goto :goto_2

    :cond_7
    invoke-direct {p0}, Lcom/androlua/GifDecoder;->a()V

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->q()V

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->b()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/androlua/GifDecoder;->N:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/androlua/GifDecoder;->N:I

    iget v0, p0, Lcom/androlua/GifDecoder;->width:I

    iget v3, p0, Lcom/androlua/GifDecoder;->height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/GifDecoder;->x:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->p()V

    iget-object v0, p0, Lcom/androlua/GifDecoder;->M:Lcom/androlua/GifDecoder$GifFrame;

    if-nez v0, :cond_9

    new-instance v0, Lcom/androlua/GifDecoder$GifFrame;

    iget-object v3, p0, Lcom/androlua/GifDecoder;->x:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/androlua/GifDecoder;->G:I

    invoke-direct {v0, v3, v4}, Lcom/androlua/GifDecoder$GifFrame;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lcom/androlua/GifDecoder;->M:Lcom/androlua/GifDecoder$GifFrame;

    iget-object v0, p0, Lcom/androlua/GifDecoder;->M:Lcom/androlua/GifDecoder$GifFrame;

    iput-object v0, p0, Lcom/androlua/GifDecoder;->z:Lcom/androlua/GifDecoder$GifFrame;

    :goto_4
    iget-boolean v0, p0, Lcom/androlua/GifDecoder;->F:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/androlua/GifDecoder;->h:[I

    iget v3, p0, Lcom/androlua/GifDecoder;->H:I

    aput v2, v0, v3

    :cond_8
    invoke-direct {p0}, Lcom/androlua/GifDecoder;->o()V

    iget-object v0, p0, Lcom/androlua/GifDecoder;->O:Lcom/androlua/GifDecoder$GifAction;

    iget v2, p0, Lcom/androlua/GifDecoder;->N:I

    invoke-interface {v0, v1, v2}, Lcom/androlua/GifDecoder$GifAction;->parseOk(ZI)V

    goto :goto_3

    :cond_9
    :goto_5
    iget-object v3, v0, Lcom/androlua/GifDecoder$GifFrame;->nextFrame:Lcom/androlua/GifDecoder$GifFrame;

    if-eqz v3, :cond_a

    move-object v0, v3

    goto :goto_5

    :cond_a
    new-instance v3, Lcom/androlua/GifDecoder$GifFrame;

    iget-object v4, p0, Lcom/androlua/GifDecoder;->x:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/androlua/GifDecoder;->G:I

    invoke-direct {v3, v4, v5}, Lcom/androlua/GifDecoder$GifFrame;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v3, v0, Lcom/androlua/GifDecoder$GifFrame;->nextFrame:Lcom/androlua/GifDecoder$GifFrame;

    goto :goto_4
.end method

.method private k()V
    .locals 2

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->m()I

    move-result v0

    iput v0, p0, Lcom/androlua/GifDecoder;->width:I

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->m()I

    move-result v0

    iput v0, p0, Lcom/androlua/GifDecoder;->height:I

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->d()I

    move-result v1

    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/androlua/GifDecoder;->c:Z

    const/4 v0, 0x2

    and-int/lit8 v1, v1, 0x7

    shl-int/2addr v0, v1

    iput v0, p0, Lcom/androlua/GifDecoder;->d:I

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->d()I

    move-result v0

    iput v0, p0, Lcom/androlua/GifDecoder;->i:I

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->d()I

    move-result v0

    iput v0, p0, Lcom/androlua/GifDecoder;->l:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()V
    .locals 4

    const/4 v3, 0x1

    :cond_0
    invoke-direct {p0}, Lcom/androlua/GifDecoder;->e()I

    iget-object v0, p0, Lcom/androlua/GifDecoder;->B:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    if-ne v1, v3, :cond_1

    aget-byte v1, v0, v3

    const/4 v2, 0x2

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/androlua/GifDecoder;->e:I

    :cond_1
    iget v0, p0, Lcom/androlua/GifDecoder;->C:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    return-void
.end method

.method private m()I
    .locals 2

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->d()I

    move-result v0

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->d()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private n()I
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->c()V

    iget-object v0, p0, Lcom/androlua/GifDecoder;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->i()V

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->g()V

    iget v0, p0, Lcom/androlua/GifDecoder;->N:I

    if-gez v0, :cond_1

    iput v3, p0, Lcom/androlua/GifDecoder;->b:I

    :cond_0
    iget-object v0, p0, Lcom/androlua/GifDecoder;->O:Lcom/androlua/GifDecoder$GifAction;

    invoke-interface {v0, v2, v1}, Lcom/androlua/GifDecoder$GifAction;->parseOk(ZI)V

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/androlua/GifDecoder;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget v0, p0, Lcom/androlua/GifDecoder;->b:I

    return v0

    :cond_1
    iput v1, p0, Lcom/androlua/GifDecoder;->b:I

    iget-object v0, p0, Lcom/androlua/GifDecoder;->O:Lcom/androlua/GifDecoder$GifAction;

    invoke-interface {v0, v3, v1}, Lcom/androlua/GifDecoder$GifAction;->parseOk(ZI)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/androlua/GifDecoder;->b:I

    iget-object v0, p0, Lcom/androlua/GifDecoder;->O:Lcom/androlua/GifDecoder$GifAction;

    invoke-interface {v0, v2, v1}, Lcom/androlua/GifDecoder$GifAction;->parseOk(ZI)V

    goto :goto_1
.end method

.method private o()V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/androlua/GifDecoder;->D:I

    iput v0, p0, Lcom/androlua/GifDecoder;->E:I

    iget v0, p0, Lcom/androlua/GifDecoder;->p:I

    iput v0, p0, Lcom/androlua/GifDecoder;->t:I

    iget v0, p0, Lcom/androlua/GifDecoder;->q:I

    iput v0, p0, Lcom/androlua/GifDecoder;->u:I

    iget v0, p0, Lcom/androlua/GifDecoder;->r:I

    iput v0, p0, Lcom/androlua/GifDecoder;->v:I

    iget v0, p0, Lcom/androlua/GifDecoder;->s:I

    iput v0, p0, Lcom/androlua/GifDecoder;->w:I

    iget-object v0, p0, Lcom/androlua/GifDecoder;->x:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/androlua/GifDecoder;->y:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/androlua/GifDecoder;->j:I

    iput v0, p0, Lcom/androlua/GifDecoder;->k:I

    iput v1, p0, Lcom/androlua/GifDecoder;->D:I

    iput-boolean v1, p0, Lcom/androlua/GifDecoder;->F:Z

    iput v1, p0, Lcom/androlua/GifDecoder;->G:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androlua/GifDecoder;->g:[I

    return-void
.end method

.method private p()V
    .locals 15

    const/4 v13, 0x3

    const/4 v8, 0x1

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v2, 0x0

    iget v0, p0, Lcom/androlua/GifDecoder;->width:I

    iget v1, p0, Lcom/androlua/GifDecoder;->height:I

    mul-int/2addr v0, v1

    new-array v1, v0, [I

    iget v0, p0, Lcom/androlua/GifDecoder;->E:I

    if-lez v0, :cond_4

    if-ne v0, v13, :cond_0

    iget v0, p0, Lcom/androlua/GifDecoder;->N:I

    add-int/lit8 v0, v0, -0x2

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/androlua/GifDecoder;->getFrameImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/androlua/GifDecoder;->y:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/androlua/GifDecoder;->y:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget v3, p0, Lcom/androlua/GifDecoder;->width:I

    iget v7, p0, Lcom/androlua/GifDecoder;->height:I

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    iget v0, p0, Lcom/androlua/GifDecoder;->E:I

    if-ne v0, v9, :cond_4

    iget-boolean v0, p0, Lcom/androlua/GifDecoder;->F:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/androlua/GifDecoder;->k:I

    :goto_1
    move v3, v2

    :goto_2
    iget v4, p0, Lcom/androlua/GifDecoder;->w:I

    if-ge v3, v4, :cond_4

    iget v4, p0, Lcom/androlua/GifDecoder;->u:I

    iget v5, p0, Lcom/androlua/GifDecoder;->width:I

    iget v6, p0, Lcom/androlua/GifDecoder;->t:I

    add-int/2addr v4, v3

    mul-int/2addr v4, v5

    add-int v5, v6, v4

    iget v6, p0, Lcom/androlua/GifDecoder;->v:I

    move v4, v5

    :goto_3
    add-int v7, v6, v5

    if-ge v4, v7, :cond_3

    aput v0, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    const/16 v0, 0x8

    move v3, v0

    move v4, v2

    move v0, v8

    :goto_4
    iget v5, p0, Lcom/androlua/GifDecoder;->s:I

    if-ge v2, v5, :cond_d

    iget-boolean v6, p0, Lcom/androlua/GifDecoder;->n:Z

    if-eqz v6, :cond_b

    if-lt v4, v5, :cond_5

    add-int/lit8 v0, v0, 0x1

    if-eq v0, v9, :cond_a

    if-eq v0, v13, :cond_9

    if-eq v0, v10, :cond_8

    :cond_5
    :goto_5
    add-int v5, v4, v3

    move v14, v4

    move v4, v5

    move v5, v14

    :goto_6
    iget v6, p0, Lcom/androlua/GifDecoder;->q:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/androlua/GifDecoder;->height:I

    if-ge v5, v6, :cond_c

    iget v7, p0, Lcom/androlua/GifDecoder;->width:I

    mul-int v11, v5, v7

    iget v5, p0, Lcom/androlua/GifDecoder;->p:I

    add-int v6, v5, v11

    iget v5, p0, Lcom/androlua/GifDecoder;->r:I

    add-int/2addr v5, v6

    add-int v12, v11, v7

    if-ge v12, v5, :cond_6

    add-int v5, v11, v7

    :cond_6
    iget v7, p0, Lcom/androlua/GifDecoder;->r:I

    mul-int/2addr v7, v2

    :goto_7
    if-ge v6, v5, :cond_c

    iget-object v11, p0, Lcom/androlua/GifDecoder;->L:[B

    aget-byte v11, v11, v7

    iget-object v12, p0, Lcom/androlua/GifDecoder;->h:[I

    and-int/lit16 v11, v11, 0xff

    aget v11, v12, v11

    if-eqz v11, :cond_7

    aput v11, v1, v6

    :cond_7
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_8
    move v3, v9

    move v4, v8

    goto :goto_5

    :cond_9
    move v3, v10

    move v4, v9

    goto :goto_5

    :cond_a
    move v4, v10

    goto :goto_5

    :cond_b
    move v5, v2

    goto :goto_6

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_d
    iget v0, p0, Lcom/androlua/GifDecoder;->width:I

    iget v2, p0, Lcom/androlua/GifDecoder;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/GifDecoder;->x:Landroid/graphics/Bitmap;

    return-void
.end method

.method private q()V
    .locals 1

    :cond_0
    invoke-direct {p0}, Lcom/androlua/GifDecoder;->e()I

    iget v0, p0, Lcom/androlua/GifDecoder;->C:I

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method


# virtual methods
.method public free()V
    .locals 2

    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/androlua/GifDecoder;->M:Lcom/androlua/GifDecoder$GifFrame;

    if-eqz v0, :cond_0

    iput-object v1, v0, Lcom/androlua/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/androlua/GifDecoder;->M:Lcom/androlua/GifDecoder$GifFrame;

    iget-object v0, v0, Lcom/androlua/GifDecoder$GifFrame;->nextFrame:Lcom/androlua/GifDecoder$GifFrame;

    iput-object v0, p0, Lcom/androlua/GifDecoder;->M:Lcom/androlua/GifDecoder$GifFrame;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/androlua/GifDecoder;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iput-object v1, p0, Lcom/androlua/GifDecoder;->a:Ljava/io/InputStream;

    :cond_1
    iput-object v1, p0, Lcom/androlua/GifDecoder;->P:[B

    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public getCurrentFrame()Lcom/androlua/GifDecoder$GifFrame;
    .locals 1

    iget-object v0, p0, Lcom/androlua/GifDecoder;->z:Lcom/androlua/GifDecoder$GifFrame;

    return-object v0
.end method

.method public getDelay(I)I
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/androlua/GifDecoder;->G:I

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/androlua/GifDecoder;->N:I

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/androlua/GifDecoder;->getFrame(I)Lcom/androlua/GifDecoder$GifFrame;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/androlua/GifDecoder$GifFrame;->delay:I

    iput v0, p0, Lcom/androlua/GifDecoder;->G:I

    :cond_0
    iget v0, p0, Lcom/androlua/GifDecoder;->G:I

    return v0
.end method

.method public getDelays()[I
    .locals 4

    iget-object v1, p0, Lcom/androlua/GifDecoder;->M:Lcom/androlua/GifDecoder$GifFrame;

    iget v0, p0, Lcom/androlua/GifDecoder;->N:I

    new-array v2, v0, [I

    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_0

    iget v3, p0, Lcom/androlua/GifDecoder;->N:I

    if-ge v0, v3, :cond_0

    iget v3, v1, Lcom/androlua/GifDecoder$GifFrame;->delay:I

    aput v3, v2, v0

    iget-object v1, v1, Lcom/androlua/GifDecoder$GifFrame;->nextFrame:Lcom/androlua/GifDecoder$GifFrame;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public getFrame(I)Lcom/androlua/GifDecoder$GifFrame;
    .locals 4

    iget-object v1, p0, Lcom/androlua/GifDecoder;->M:Lcom/androlua/GifDecoder$GifFrame;

    const/4 v0, 0x0

    move v3, v0

    move-object v0, v1

    move v1, v3

    :goto_0
    if-eqz v0, :cond_1

    if-ne v1, p1, :cond_0

    :goto_1
    return-object v0

    :cond_0
    iget-object v2, v0, Lcom/androlua/GifDecoder$GifFrame;->nextFrame:Lcom/androlua/GifDecoder$GifFrame;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getFrameCount()I
    .locals 1

    iget v0, p0, Lcom/androlua/GifDecoder;->N:I

    return v0
.end method

.method public getFrameImage(I)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/androlua/GifDecoder;->getFrame(I)Lcom/androlua/GifDecoder$GifFrame;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/androlua/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/androlua/GifDecoder;->getFrameImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getLoopCount()I
    .locals 1

    iget v0, p0, Lcom/androlua/GifDecoder;->e:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/androlua/GifDecoder;->b:I

    return v0
.end method

.method public next()Lcom/androlua/GifDecoder$GifFrame;
    .locals 1

    iget-boolean v0, p0, Lcom/androlua/GifDecoder;->A:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androlua/GifDecoder;->A:Z

    iget-object v0, p0, Lcom/androlua/GifDecoder;->M:Lcom/androlua/GifDecoder$GifFrame;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/androlua/GifDecoder;->b:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/androlua/GifDecoder;->z:Lcom/androlua/GifDecoder$GifFrame;

    iget-object v0, v0, Lcom/androlua/GifDecoder$GifFrame;->nextFrame:Lcom/androlua/GifDecoder$GifFrame;

    if-eqz v0, :cond_1

    :goto_1
    iput-object v0, p0, Lcom/androlua/GifDecoder;->z:Lcom/androlua/GifDecoder$GifFrame;

    :cond_1
    iget-object v0, p0, Lcom/androlua/GifDecoder;->z:Lcom/androlua/GifDecoder$GifFrame;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/androlua/GifDecoder;->z:Lcom/androlua/GifDecoder$GifFrame;

    iget-object v0, v0, Lcom/androlua/GifDecoder$GifFrame;->nextFrame:Lcom/androlua/GifDecoder$GifFrame;

    iput-object v0, p0, Lcom/androlua/GifDecoder;->z:Lcom/androlua/GifDecoder$GifFrame;

    iget-object v0, p0, Lcom/androlua/GifDecoder;->z:Lcom/androlua/GifDecoder$GifFrame;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/androlua/GifDecoder;->M:Lcom/androlua/GifDecoder$GifFrame;

    goto :goto_1
.end method

.method public parseOk()Z
    .locals 2

    iget v0, p0, Lcom/androlua/GifDecoder;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/androlua/GifDecoder;->M:Lcom/androlua/GifDecoder$GifFrame;

    iput-object v0, p0, Lcom/androlua/GifDecoder;->z:Lcom/androlua/GifDecoder$GifFrame;

    return-void
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/androlua/GifDecoder;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->n()I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/androlua/GifDecoder;->P:[B

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->f()I

    goto :goto_0
.end method
