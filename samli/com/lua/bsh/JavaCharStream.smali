.class public Lcom/lua/bsh/JavaCharStream;
.super Ljava/lang/Object;


# static fields
.field public static final staticFlag:Z


# instance fields
.field a:I

.field b:I

.field public bufpos:I

.field c:I

.field protected d:[I

.field protected e:[I

.field protected f:I

.field protected g:I

.field protected h:Z

.field protected i:Z

.field protected j:Ljava/io/Reader;

.field protected k:[C

.field protected l:[C

.field protected m:I

.field protected n:I

.field protected o:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const/4 v1, 0x1

    const/16 v0, 0x1000

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/lua/bsh/JavaCharStream;-><init>(Ljava/io/InputStream;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 1

    const/16 v0, 0x1000

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/lua/bsh/JavaCharStream;-><init>(Ljava/io/InputStream;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;III)V
    .locals 2

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x1000

    invoke-direct {p0, v0, p2, p3, v1}, Lcom/lua/bsh/JavaCharStream;-><init>(Ljava/io/Reader;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2

    const/4 v1, 0x1

    const/16 v0, 0x1000

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/lua/bsh/JavaCharStream;-><init>(Ljava/io/Reader;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;II)V
    .locals 1

    const/16 v0, 0x1000

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/lua/bsh/JavaCharStream;-><init>(Ljava/io/Reader;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;III)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I

    iput v1, p0, Lcom/lua/bsh/JavaCharStream;->f:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/lua/bsh/JavaCharStream;->g:I

    iput-boolean v1, p0, Lcom/lua/bsh/JavaCharStream;->h:Z

    iput-boolean v1, p0, Lcom/lua/bsh/JavaCharStream;->i:Z

    iput v1, p0, Lcom/lua/bsh/JavaCharStream;->m:I

    iput v2, p0, Lcom/lua/bsh/JavaCharStream;->n:I

    iput v1, p0, Lcom/lua/bsh/JavaCharStream;->o:I

    iput-object p1, p0, Lcom/lua/bsh/JavaCharStream;->j:Ljava/io/Reader;

    iput p2, p0, Lcom/lua/bsh/JavaCharStream;->g:I

    add-int/lit8 v0, p3, -0x1

    iput v0, p0, Lcom/lua/bsh/JavaCharStream;->f:I

    iput p4, p0, Lcom/lua/bsh/JavaCharStream;->a:I

    iput p4, p0, Lcom/lua/bsh/JavaCharStream;->b:I

    new-array v0, p4, [C

    iput-object v0, p0, Lcom/lua/bsh/JavaCharStream;->l:[C

    new-array v0, p4, [I

    iput-object v0, p0, Lcom/lua/bsh/JavaCharStream;->d:[I

    new-array v0, p4, [I

    iput-object v0, p0, Lcom/lua/bsh/JavaCharStream;->e:[I

    const/16 v0, 0x1000

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/lua/bsh/JavaCharStream;->k:[C

    return-void
.end method

.method static final b(C)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :pswitch_0
    const/16 v0, 0xf

    :goto_0
    return v0

    :pswitch_1
    const/16 v0, 0xe

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xd

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xc

    goto :goto_0

    :pswitch_4
    const/16 v0, 0xb

    goto :goto_0

    :pswitch_5
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x9

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_8
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_9
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_a
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_b
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_c
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_d
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_e
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_f
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x61
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public BeginToken()C
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/lua/bsh/JavaCharStream;->o:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lua/bsh/JavaCharStream;->o:I

    iget v0, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I

    iget v1, p0, Lcom/lua/bsh/JavaCharStream;->a:I

    if-ne v0, v1, :cond_0

    iput v2, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I

    :cond_0
    iget v0, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I

    iput v0, p0, Lcom/lua/bsh/JavaCharStream;->c:I

    iget-object v1, p0, Lcom/lua/bsh/JavaCharStream;->l:[C

    aget-char v0, v1, v0

    :goto_0
    return v0

    :cond_1
    iput v2, p0, Lcom/lua/bsh/JavaCharStream;->c:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I

    invoke-virtual {p0}, Lcom/lua/bsh/JavaCharStream;->readChar()C

    move-result v0

    goto :goto_0
.end method

.method public Done()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lua/bsh/JavaCharStream;->k:[C

    iput-object v0, p0, Lcom/lua/bsh/JavaCharStream;->l:[C

    iput-object v0, p0, Lcom/lua/bsh/JavaCharStream;->d:[I

    iput-object v0, p0, Lcom/lua/bsh/JavaCharStream;->e:[I

    return-void
.end method

.method public GetImage()Ljava/lang/String;
    .locals 5

    iget v1, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I

    iget v2, p0, Lcom/lua/bsh/JavaCharStream;->c:I

    if-lt v1, v2, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/lua/bsh/JavaCharStream;->l:[C

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v3, v2, v1}, Ljava/lang/String;-><init>([CII)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/lua/bsh/JavaCharStream;->l:[C

    iget v2, p0, Lcom/lua/bsh/JavaCharStream;->c:I

    new-instance v3, Ljava/lang/String;

    iget v4, p0, Lcom/lua/bsh/JavaCharStream;->a:I

    sub-int/2addr v4, v2

    invoke-direct {v3, v1, v2, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/lua/bsh/JavaCharStream;->l:[C

    const/4 v3, 0x0

    iget v4, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public GetSuffix(I)[C
    .locals 6

    const/4 v5, 0x0

    new-array v0, p1, [C

    iget v1, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I

    add-int/lit8 v2, v1, 0x1

    if-lt v2, p1, :cond_0

    iget-object v2, p0, Lcom/lua/bsh/JavaCharStream;->l:[C

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v2, v1, v0, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/lua/bsh/JavaCharStream;->l:[C

    iget v3, p0, Lcom/lua/bsh/JavaCharStream;->a:I

    sub-int v4, p1, v1

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v3, v4

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v2, v3, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/lua/bsh/JavaCharStream;->l:[C

    iget v2, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I

    sub-int v3, p1, v2

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v5, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public ReInit(Ljava/io/InputStream;)V
    .locals 2

    const/4 v1, 0x1

    const/16 v0, 0x1000

    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/lua/bsh/JavaCharStream;->ReInit(Ljava/io/InputStream;III)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;II)V
    .locals 1

    const/16 v0, 0x1000

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/lua/bsh/JavaCharStream;->ReInit(Ljava/io/InputStream;III)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;III)V
    .locals 2

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x1000

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/lua/bsh/JavaCharStream;->ReInit(Ljava/io/Reader;III)V

    return-void
.end method

.method public ReInit(Ljava/io/Reader;)V
    .locals 2

    const/4 v1, 0x1

    const/16 v0, 0x1000

    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/lua/bsh/JavaCharStream;->ReInit(Ljava/io/Reader;III)V

    return-void
.end method

.method public ReInit(Ljava/io/Reader;II)V
    .locals 1

    const/16 v0, 0x1000

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/lua/bsh/JavaCharStream;->ReInit(Ljava/io/Reader;III)V

    return-void
.end method

.method public ReInit(Ljava/io/Reader;III)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/lua/bsh/JavaCharStream;->j:Ljava/io/Reader;

    iput p2, p0, Lcom/lua/bsh/JavaCharStream;->g:I

    add-int/lit8 v0, p3, -0x1

    iput v0, p0, Lcom/lua/bsh/JavaCharStream;->f:I

    iget-object v0, p0, Lcom/lua/bsh/JavaCharStream;->l:[C

    if-eqz v0, :cond_0

    array-length v0, v0

    if-eq p4, v0, :cond_1

    :cond_0
    iput p4, p0, Lcom/lua/bsh/JavaCharStream;->a:I

    iput p4, p0, Lcom/lua/bsh/JavaCharStream;->b:I

    new-array v0, p4, [C

    iput-object v0, p0, Lcom/lua/bsh/JavaCharStream;->l:[C

    new-array v0, p4, [I

    iput-object v0, p0, Lcom/lua/bsh/JavaCharStream;->d:[I

    new-array v0, p4, [I

    iput-object v0, p0, Lcom/lua/bsh/JavaCharStream;->e:[I

    const/16 v0, 0x1000

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/lua/bsh/JavaCharStream;->k:[C

    :cond_1
    iput-boolean v1, p0, Lcom/lua/bsh/JavaCharStream;->h:Z

    iput-boolean v1, p0, Lcom/lua/bsh/JavaCharStream;->i:Z

    iput v1, p0, Lcom/lua/bsh/JavaCharStream;->m:I

    iput v1, p0, Lcom/lua/bsh/JavaCharStream;->o:I

    iput v1, p0, Lcom/lua/bsh/JavaCharStream;->c:I

    iput v2, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I

    iput v2, p0, Lcom/lua/bsh/JavaCharStream;->n:I

    return-void
.end method

.method protected a()V
    .locals 4

    const/16 v3, 0x800

    const/4 v2, 0x0

    iget v0, p0, Lcom/lua/bsh/JavaCharStream;->b:I

    iget v1, p0, Lcom/lua/bsh/JavaCharStream;->a:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/lua/bsh/JavaCharStream;->c:I

    if-le v0, v3, :cond_0

    iput v2, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I

    iput v0, p0, Lcom/lua/bsh/JavaCharStream;->b:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v2}, Lcom/lua/bsh/JavaCharStream;->a(Z)V

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/lua/bsh/JavaCharStream;->c:I

    if-le v0, v2, :cond_2

    iput v1, p0, Lcom/lua/bsh/JavaCharStream;->b:I

    goto :goto_0

    :cond_2
    sub-int v0, v2, v0

    if-ge v0, v3, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lua/bsh/JavaCharStream;->a(Z)V

    goto :goto_0

    :cond_3
    iput v2, p0, Lcom/lua/bsh/JavaCharStream;->b:I

    goto :goto_0
.end method

.method protected a(C)V
    .locals 4

    const/16 v3, 0xa

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcom/lua/bsh/JavaCharStream;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lua/bsh/JavaCharStream;->f:I

    iget-boolean v0, p0, Lcom/lua/bsh/JavaCharStream;->i:Z

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/lua/bsh/JavaCharStream;->i:Z

    :cond_0
    iget v0, p0, Lcom/lua/bsh/JavaCharStream;->g:I

    iput v1, p0, Lcom/lua/bsh/JavaCharStream;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lua/bsh/JavaCharStream;->g:I

    :cond_1
    :goto_0
    const/16 v0, 0x9

    if-eq p1, v0, :cond_5

    if-eq p1, v3, :cond_4

    const/16 v0, 0xd

    if-eq p1, v0, :cond_3

    :goto_1
    iget-object v0, p0, Lcom/lua/bsh/JavaCharStream;->d:[I

    iget v1, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I

    iget v2, p0, Lcom/lua/bsh/JavaCharStream;->g:I

    aput v2, v0, v1

    iget-object v0, p0, Lcom/lua/bsh/JavaCharStream;->e:[I

    iget v2, p0, Lcom/lua/bsh/JavaCharStream;->f:I

    aput v2, v0, v1

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/lua/bsh/JavaCharStream;->h:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/lua/bsh/JavaCharStream;->h:Z

    if-ne p1, v3, :cond_0

    iput-boolean v1, p0, Lcom/lua/bsh/JavaCharStream;->i:Z

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lcom/lua/bsh/JavaCharStream;->h:Z

    goto :goto_1

    :cond_4
    iput-boolean v1, p0, Lcom/lua/bsh/JavaCharStream;->i:Z

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/lua/bsh/JavaCharStream;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lua/bsh/JavaCharStream;->f:I

    iget v0, p0, Lcom/lua/bsh/JavaCharStream;->f:I

    and-int/lit8 v1, v0, 0x7

    rsub-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lua/bsh/JavaCharStream;->f:I

    goto :goto_1
.end method

.method protected a(Z)V
    .locals 9

    const/4 v8, 0x0

    iget v0, p0, Lcom/lua/bsh/JavaCharStream;->a:I

    add-int/lit16 v1, v0, 0x800

    new-array v1, v1, [C

    add-int/lit16 v2, v0, 0x800

    new-array v2, v2, [I

    add-int/lit16 v3, v0, 0x800

    new-array v3, v3, [I

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/lua/bsh/JavaCharStream;->l:[C

    iget v5, p0, Lcom/lua/bsh/JavaCharStream;->c:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/lua/bsh/JavaCharStream;->c:I

    sub-int/2addr v0, v7

    invoke-static {v4, v5, v1, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/lua/bsh/JavaCharStream;->l:[C

    const/4 v4, 0x0

    iget v5, p0, Lcom/lua/bsh/JavaCharStream;->a:I

    iget v6, p0, Lcom/lua/bsh/JavaCharStream;->c:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I

    invoke-static {v0, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/lua/bsh/JavaCharStream;->l:[C

    iget-object v0, p0, Lcom/lua/bsh/JavaCharStream;->d:[I

    iget v1, p0, Lcom/lua/bsh/JavaCharStream;->c:I

    const/4 v4, 0x0

    iget v5, p0, Lcom/lua/bsh/JavaCharStream;->a:I

    iget v6, p0, Lcom/lua/bsh/JavaCharStream;->c:I

    sub-int/2addr v5, v6

    invoke-static {v0, v1, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/lua/bsh/JavaCharStream;->d:[I

    const/4 v1, 0x0

    iget v4, p0, Lcom/lua/bsh/JavaCharStream;->a:I

    iget v5, p0, Lcom/lua/bsh/JavaCharStream;->c:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I

    invoke-static {v0, v1, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/lua/bsh/JavaCharStream;->d:[I

    iget-object v0, p0, Lcom/lua/bsh/JavaCharStream;->e:[I

    iget v1, p0, Lcom/lua/bsh/JavaCharStream;->c:I

    const/4 v2, 0x0

    iget v4, p0, Lcom/lua/bsh/JavaCharStream;->a:I

    iget v5, p0, Lcom/lua/bsh/JavaCharStream;->c:I

    sub-int/2addr v4, v5

    invoke-static {v0, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/lua/bsh/JavaCharStream;->e:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/lua/bsh/JavaCharStream;->a:I

    iget v4, p0, Lcom/lua/bsh/JavaCharStream;->c:I

    sub-int/2addr v2, v4

    iget v4, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I

    invoke-static {v0, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/lua/bsh/JavaCharStream;->e:[I

    iget v0, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I

    iget v1, p0, Lcom/lua/bsh/JavaCharStream;->a:I

    iget v2, p0, Lcom/lua/bsh/JavaCharStream;->c:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v0, p0, Lcom/lua/bsh/JavaCharStream;->a:I

    add-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/lua/bsh/JavaCharStream;->a:I

    iput v0, p0, Lcom/lua/bsh/JavaCharStream;->b:I

    iput v8, p0, Lcom/lua/bsh/JavaCharStream;->c:I

    return-void

    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/lua/bsh/JavaCharStream;->l:[C

    iget v5, p0, Lcom/lua/bsh/JavaCharStream;->c:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/lua/bsh/JavaCharStream;->c:I

    sub-int/2addr v0, v7

    invoke-static {v4, v5, v1, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/lua/bsh/JavaCharStream;->l:[C

    iget-object v0, p0, Lcom/lua/bsh/JavaCharStream;->d:[I

    iget v1, p0, Lcom/lua/bsh/JavaCharStream;->c:I

    const/4 v4, 0x0

    iget v5, p0, Lcom/lua/bsh/JavaCharStream;->a:I

    iget v6, p0, Lcom/lua/bsh/JavaCharStream;->c:I

    sub-int/2addr v5, v6

    invoke-static {v0, v1, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/lua/bsh/JavaCharStream;->d:[I

    iget-object v0, p0, Lcom/lua/bsh/JavaCharStream;->e:[I

    iget v1, p0, Lcom/lua/bsh/JavaCharStream;->c:I

    const/4 v2, 0x0

    iget v4, p0, Lcom/lua/bsh/JavaCharStream;->a:I

    iget v5, p0, Lcom/lua/bsh/JavaCharStream;->c:I

    sub-int/2addr v4, v5

    invoke-static {v0, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/lua/bsh/JavaCharStream;->e:[I

    iget v0, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I

    iget v1, p0, Lcom/lua/bsh/JavaCharStream;->c:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public adjustBeginLineColumn(II)V
    .locals 10

    const/4 v2, 0x0

    iget v4, p0, Lcom/lua/bsh/JavaCharStream;->c:I

    iget v0, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I

    if-lt v0, v4, :cond_1

    sub-int/2addr v0, v4

    iget v1, p0, Lcom/lua/bsh/JavaCharStream;->o:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    :goto_0
    move v3, v2

    move v1, v2

    :goto_1
    if-ge v2, v0, :cond_0

    iget-object v5, p0, Lcom/lua/bsh/JavaCharStream;->d:[I

    iget v6, p0, Lcom/lua/bsh/JavaCharStream;->a:I

    rem-int v1, v4, v6

    aget v7, v5, v1

    add-int/lit8 v4, v4, 0x1

    rem-int v6, v4, v6

    aget v8, v5, v6

    if-eq v7, v8, :cond_2

    :cond_0
    if-ge v2, v0, :cond_5

    iget-object v5, p0, Lcom/lua/bsh/JavaCharStream;->d:[I

    aput p1, v5, v1

    iget-object v5, p0, Lcom/lua/bsh/JavaCharStream;->e:[I

    add-int/2addr v3, p2

    aput v3, v5, v1

    add-int/lit8 v3, p1, 0x1

    move v5, v4

    move v9, v3

    move v3, v2

    move v2, v9

    :goto_2
    if-lt v3, v0, :cond_3

    move v0, v1

    :goto_3
    iget-object v1, p0, Lcom/lua/bsh/JavaCharStream;->d:[I

    aget v1, v1, v0

    iput v1, p0, Lcom/lua/bsh/JavaCharStream;->g:I

    iget-object v1, p0, Lcom/lua/bsh/JavaCharStream;->e:[I

    aget v0, v1, v0

    iput v0, p0, Lcom/lua/bsh/JavaCharStream;->f:I

    return-void

    :cond_1
    iget v1, p0, Lcom/lua/bsh/JavaCharStream;->a:I

    sub-int/2addr v1, v4

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/lua/bsh/JavaCharStream;->o:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    aput p1, v5, v1

    iget-object v5, p0, Lcom/lua/bsh/JavaCharStream;->e:[I

    aget v6, v5, v6

    aget v7, v5, v1

    add-int v8, v3, p2

    aput v8, v5, v1

    add-int/2addr v3, v6

    sub-int/2addr v3, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/lua/bsh/JavaCharStream;->d:[I

    iget v6, p0, Lcom/lua/bsh/JavaCharStream;->a:I

    rem-int v4, v5, v6

    aget v7, v1, v4

    add-int/lit8 v5, v5, 0x1

    rem-int v6, v5, v6

    aget v6, v1, v6

    if-eq v7, v6, :cond_4

    aput v2, v1, v4

    add-int/lit8 v1, v2, 0x1

    :goto_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    move v1, v4

    goto :goto_2

    :cond_4
    aput v2, v1, v4

    move v1, v2

    goto :goto_4

    :cond_5
    move v0, v1

    goto :goto_3
.end method

.method protected b()V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcom/lua/bsh/JavaCharStream;->m:I

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    iput v4, p0, Lcom/lua/bsh/JavaCharStream;->n:I

    iput v4, p0, Lcom/lua/bsh/JavaCharStream;->m:I

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/lua/bsh/JavaCharStream;->j:Ljava/io/Reader;

    iget-object v1, p0, Lcom/lua/bsh/JavaCharStream;->k:[C

    iget v2, p0, Lcom/lua/bsh/JavaCharStream;->m:I

    iget v3, p0, Lcom/lua/bsh/JavaCharStream;->m:I

    rsub-int v3, v3, 0x1000

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v1, p0, Lcom/lua/bsh/JavaCharStream;->m:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lua/bsh/JavaCharStream;->m:I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/lua/bsh/JavaCharStream;->j:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iget v1, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I

    if-eqz v1, :cond_2

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I

    invoke-virtual {p0, v4}, Lcom/lua/bsh/JavaCharStream;->backup(I)V

    :goto_0
    throw v0

    :cond_2
    iget-object v2, p0, Lcom/lua/bsh/JavaCharStream;->d:[I

    iget v3, p0, Lcom/lua/bsh/JavaCharStream;->g:I

    aput v3, v2, v1

    iget-object v2, p0, Lcom/lua/bsh/JavaCharStream;->e:[I

    iget v3, p0, Lcom/lua/bsh/JavaCharStream;->f:I

    aput v3, v2, v1

    goto :goto_0
.end method

.method public backup(I)V
    .locals 2

    iget v0, p0, Lcom/lua/bsh/JavaCharStream;->o:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/lua/bsh/JavaCharStream;->o:I

    iget v0, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I

    iget v1, p0, Lcom/lua/bsh/JavaCharStream;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I

    :cond_0
    return-void
.end method

.method protected c()C
    .locals 2

    iget v0, p0, Lcom/lua/bsh/JavaCharStream;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lua/bsh/JavaCharStream;->n:I

    iget v1, p0, Lcom/lua/bsh/JavaCharStream;->m:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/lua/bsh/JavaCharStream;->b()V

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/JavaCharStream;->k:[C

    iget v1, p0, Lcom/lua/bsh/JavaCharStream;->n:I

    aget-char v0, v0, v1

    return v0
.end method

.method public getBeginColumn()I
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/JavaCharStream;->e:[I

    iget v1, p0, Lcom/lua/bsh/JavaCharStream;->c:I

    aget v0, v0, v1

    return v0
.end method

.method public getBeginLine()I
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/JavaCharStream;->d:[I

    iget v1, p0, Lcom/lua/bsh/JavaCharStream;->c:I

    aget v0, v0, v1

    return v0
.end method

.method public getColumn()I
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/JavaCharStream;->e:[I

    iget v1, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getEndColumn()I
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/JavaCharStream;->e:[I

    iget v1, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getEndLine()I
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/JavaCharStream;->d:[I

    iget v1, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getLine()I
    .locals 2

    iget-object v0, p0, Lcom/lua/bsh/JavaCharStream;->d:[I

    iget v1, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public readChar()C
    .locals 9

    const/16 v6, 0x75

    const/16 v0, 0x5c

    const/4 v3, 0x1

    iget v1, p0, Lcom/lua/bsh/JavaCharStream;->o:I

    if-lez v1, :cond_2

    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Lcom/lua/bsh/JavaCharStream;->o:I

    iget v0, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I

    iget v1, p0, Lcom/lua/bsh/JavaCharStream;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I

    :cond_0
    iget-object v0, p0, Lcom/lua/bsh/JavaCharStream;->l:[C

    iget v1, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I

    aget-char v0, v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v1, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I

    iget v2, p0, Lcom/lua/bsh/JavaCharStream;->b:I

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/lua/bsh/JavaCharStream;->a()V

    :cond_3
    iget-object v2, p0, Lcom/lua/bsh/JavaCharStream;->l:[C

    iget v4, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I

    invoke-virtual {p0}, Lcom/lua/bsh/JavaCharStream;->c()C

    move-result v1

    aput-char v1, v2, v4

    if-ne v1, v0, :cond_9

    invoke-virtual {p0, v1}, Lcom/lua/bsh/JavaCharStream;->a(C)V

    move v2, v3

    :goto_1
    iget v1, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I

    iget v4, p0, Lcom/lua/bsh/JavaCharStream;->b:I

    if-ne v1, v4, :cond_4

    invoke-virtual {p0}, Lcom/lua/bsh/JavaCharStream;->a()V

    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/lua/bsh/JavaCharStream;->l:[C

    iget v4, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I

    invoke-virtual {p0}, Lcom/lua/bsh/JavaCharStream;->c()C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    aput-char v5, v1, v4

    if-eq v5, v0, :cond_8

    :try_start_1
    invoke-virtual {p0, v5}, Lcom/lua/bsh/JavaCharStream;->a(C)V

    if-ne v5, v6, :cond_7

    and-int/lit8 v1, v2, 0x1

    if-ne v1, v3, :cond_7

    iget v1, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I

    if-gez v1, :cond_5

    iget v1, p0, Lcom/lua/bsh/JavaCharStream;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Lcom/lua/bsh/JavaCharStream;->c()C

    move-result v1

    if-eq v1, v6, :cond_6

    iget-object v4, p0, Lcom/lua/bsh/JavaCharStream;->l:[C

    iget v5, p0, Lcom/lua/bsh/JavaCharStream;->bufpos:I

    invoke-static {v1}, Lcom/lua/bsh/JavaCharStream;->b(C)I

    move-result v1

    invoke-virtual {p0}, Lcom/lua/bsh/JavaCharStream;->c()C

    move-result v6

    invoke-static {v6}, Lcom/lua/bsh/JavaCharStream;->b(C)I

    move-result v6

    invoke-virtual {p0}, Lcom/lua/bsh/JavaCharStream;->c()C

    move-result v7

    invoke-static {v7}, Lcom/lua/bsh/JavaCharStream;->b(C)I

    move-result v7

    invoke-virtual {p0}, Lcom/lua/bsh/JavaCharStream;->c()C

    move-result v8

    invoke-static {v8}, Lcom/lua/bsh/JavaCharStream;->b(C)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v8

    shl-int/lit8 v1, v1, 0xc

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v1, v6

    shl-int/lit8 v6, v7, 0x4

    or-int/2addr v1, v6

    or-int/2addr v1, v8

    int-to-char v1, v1

    int-to-char v6, v1

    aput-char v6, v4, v5

    :try_start_3
    iget v4, p0, Lcom/lua/bsh/JavaCharStream;->f:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/lua/bsh/JavaCharStream;->f:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    if-eq v2, v3, :cond_a

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {p0, v1}, Lcom/lua/bsh/JavaCharStream;->backup(I)V

    goto/16 :goto_0

    :cond_6
    :try_start_4
    iget v1, p0, Lcom/lua/bsh/JavaCharStream;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lua/bsh/JavaCharStream;->f:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Invalid escape character at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/lua/bsh/JavaCharStream;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/lua/bsh/JavaCharStream;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/Error;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    :try_start_5
    invoke-virtual {p0, v2}, Lcom/lua/bsh/JavaCharStream;->backup(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    if-le v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/lua/bsh/JavaCharStream;->backup(I)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0, v5}, Lcom/lua/bsh/JavaCharStream;->a(C)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p0, v1}, Lcom/lua/bsh/JavaCharStream;->a(C)V

    move v0, v1

    goto/16 :goto_0

    :cond_a
    move v0, v1

    goto/16 :goto_0
.end method
