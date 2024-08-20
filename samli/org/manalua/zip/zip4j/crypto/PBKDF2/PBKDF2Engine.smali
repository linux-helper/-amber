.class public Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Engine;
.super Ljava/lang/Object;


# instance fields
.field protected parameters:Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Parameters;

.field protected prf:Lorg/manalua/zip/zip4j/crypto/PBKDF2/PRF;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Engine;->parameters:Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    iput-object v0, p0, Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Engine;->prf:Lorg/manalua/zip/zip4j/crypto/PBKDF2/PRF;

    return-void
.end method

.method public constructor <init>(Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Parameters;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Engine;->parameters:Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Engine;->prf:Lorg/manalua/zip/zip4j/crypto/PBKDF2/PRF;

    return-void
.end method

.method public constructor <init>(Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Parameters;Lorg/manalua/zip/zip4j/crypto/PBKDF2/PRF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Engine;->parameters:Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    iput-object p2, p0, Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Engine;->prf:Lorg/manalua/zip/zip4j/crypto/PBKDF2/PRF;

    return-void
.end method


# virtual methods
.method protected INT([BII)V
    .locals 2

    add-int/lit8 v0, p2, 0x0

    const/high16 v1, 0x1000000

    div-int v1, p3, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    const/high16 v1, 0x10000

    div-int v1, p3, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    div-int/lit16 v1, p3, 0x100

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x3

    int-to-byte v1, p3

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-void
.end method

.method protected PBKDF2(Lorg/manalua/zip/zip4j/crypto/PBKDF2/PRF;[BII)[B
    .locals 10

    const/4 v7, 0x0

    if-nez p2, :cond_2

    new-array v4, v7, [B

    :goto_0
    invoke-interface {p1}, Lorg/manalua/zip/zip4j/crypto/PBKDF2/PRF;->getHLen()I

    move-result v8

    invoke-virtual {p0, p4, v8}, Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Engine;->ceil(II)I

    move-result v9

    mul-int v0, v9, v8

    new-array v1, v0, [B

    const/4 v6, 0x1

    move v2, v7

    :goto_1
    if-le v6, v9, :cond_1

    add-int/lit8 v0, v9, -0x1

    mul-int/2addr v0, v8

    sub-int v0, p4, v0

    if-ge v0, v8, :cond_0

    new-array v0, p4, [B

    invoke-static {v1, v7, v0, v7, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    :cond_0
    return-object v1

    :cond_1
    move-object v0, p0

    move-object v3, p1

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Engine;->_F([BILorg/manalua/zip/zip4j/crypto/PBKDF2/PRF;[BII)V

    add-int/2addr v2, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    move-object v4, p2

    goto :goto_0
.end method

.method protected _F([BILorg/manalua/zip/zip4j/crypto/PBKDF2/PRF;[BII)V
    .locals 5

    const/4 v1, 0x0

    invoke-interface {p3}, Lorg/manalua/zip/zip4j/crypto/PBKDF2/PRF;->getHLen()I

    move-result v3

    new-array v4, v3, [B

    array-length v0, p4

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    array-length v2, p4

    invoke-static {p4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p4

    invoke-virtual {p0, v0, v2, p6}, Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Engine;->INT([BII)V

    move-object v2, v0

    move v0, v1

    :goto_0
    if-lt v0, p5, :cond_0

    invoke-static {v4, v1, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    invoke-interface {p3, v2}, Lorg/manalua/zip/zip4j/crypto/PBKDF2/PRF;->doFinal([B)[B

    move-result-object v2

    invoke-virtual {p0, v4, v2}, Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Engine;->xor([B[B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected assertPRF([B)V
    .locals 2

    iget-object v0, p0, Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Engine;->prf:Lorg/manalua/zip/zip4j/crypto/PBKDF2/PRF;

    if-nez v0, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/crypto/PBKDF2/MacBasedPRF;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Engine;->parameters:Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Parameters;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/crypto/PBKDF2/MacBasedPRF;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Engine;->prf:Lorg/manalua/zip/zip4j/crypto/PBKDF2/PRF;

    :cond_0
    iget-object v0, p0, Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Engine;->prf:Lorg/manalua/zip/zip4j/crypto/PBKDF2/PRF;

    invoke-interface {v0, p1}, Lorg/manalua/zip/zip4j/crypto/PBKDF2/PRF;->init([B)V

    return-void
.end method

.method protected ceil(II)I
    .locals 2

    const/4 v0, 0x0

    rem-int v1, p1, p2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    div-int v1, p1, p2

    add-int/2addr v0, v1

    return v0
.end method

.method public deriveKey([C)[B
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Engine;->deriveKey([CI)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveKey([CI)[B
    .locals 3

    const/4 v1, 0x0

    move-object v0, v1

    check-cast v0, [B

    check-cast v1, [B

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-static {p1}, Lorg/manalua/zip/zip4j/util/Raw;->convertCharArrayToByteArray([C)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Engine;->assertPRF([B)V

    if-nez p2, :cond_1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Engine;->prf:Lorg/manalua/zip/zip4j/crypto/PBKDF2/PRF;

    invoke-interface {v0}, Lorg/manalua/zip/zip4j/crypto/PBKDF2/PRF;->getHLen()I

    move-result p2

    :cond_1
    iget-object v0, p0, Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Engine;->prf:Lorg/manalua/zip/zip4j/crypto/PBKDF2/PRF;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Engine;->parameters:Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Parameters;->getSalt()[B

    move-result-object v1

    iget-object v2, p0, Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Engine;->parameters:Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    invoke-virtual {v2}, Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Parameters;->getIterationCount()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Engine;->PBKDF2(Lorg/manalua/zip/zip4j/crypto/PBKDF2/PRF;[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Parameters;
    .locals 1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Engine;->parameters:Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    return-object v0
.end method

.method public getPseudoRandomFunction()Lorg/manalua/zip/zip4j/crypto/PBKDF2/PRF;
    .locals 1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Engine;->prf:Lorg/manalua/zip/zip4j/crypto/PBKDF2/PRF;

    return-object v0
.end method

.method public setParameters(Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Parameters;)V
    .locals 0

    iput-object p1, p0, Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Engine;->parameters:Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    return-void
.end method

.method public setPseudoRandomFunction(Lorg/manalua/zip/zip4j/crypto/PBKDF2/PRF;)V
    .locals 0

    iput-object p1, p0, Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Engine;->prf:Lorg/manalua/zip/zip4j/crypto/PBKDF2/PRF;

    return-void
.end method

.method public verifyKey([C)Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Engine;->getParameters()Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Parameters;->getDerivedKey()[B

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v1, v2

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v1, v2

    invoke-virtual {p0, p1, v1}, Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Engine;->deriveKey([CI)[B

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v1, v3

    array-length v4, v2

    if-ne v1, v4, :cond_0

    move v1, v0

    :goto_1
    array-length v4, v3

    if-lt v1, v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    aget-byte v4, v3, v1

    aget-byte v5, v2, v1

    if-ne v4, v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected xor([B[B)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
