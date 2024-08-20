.class public Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/manalua/zip/zip4j/crypto/IEncrypter;


# instance fields
.field private KEY_LENGTH:I

.field private MAC_LENGTH:I

.field private final PASSWORD_VERIFIER_LENGTH:I

.field private SALT_LENGTH:I

.field private aesEngine:Lorg/manalua/zip/zip4j/crypto/engine/AESEngine;

.field private aesKey:[B

.field private counterBlock:[B

.field private derivedPasswordVerifier:[B

.field private finished:Z

.field private iv:[B

.field private keyStrength:I

.field private loopCount:I

.field private mac:Lorg/manalua/zip/zip4j/crypto/PBKDF2/MacBasedPRF;

.field private macKey:[B

.field private nonce:I

.field private password:[C

.field private saltBytes:[B


# direct methods
.method public constructor <init>([CI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/16 v3, 0x10

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->PASSWORD_VERIFIER_LENGTH:I

    iput v2, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->nonce:I

    iput v1, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->loopCount:I

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "input password is empty or null in AES encrypter constructor"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eq p2, v2, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "Invalid key strength in AES encrypter constructor"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->password:[C

    iput p2, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->keyStrength:I

    iput-boolean v1, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->finished:Z

    new-array v0, v3, [B

    iput-object v0, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->counterBlock:[B

    new-array v0, v3, [B

    iput-object v0, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->iv:[B

    invoke-direct {p0}, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->init()V

    return-void
.end method

.method private deriveKey([B[C)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    const-string v1, "HmacSHA1"

    const-string v2, "ISO-8859-1"

    const/16 v3, 0x3e8

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Parameters;-><init>(Ljava/lang/String;Ljava/lang/String;[BI)V

    new-instance v1, Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Engine;

    invoke-direct {v1, v0}, Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Engine;-><init>(Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Parameters;)V

    iget v0, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->KEY_LENGTH:I

    iget v2, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->MAC_LENGTH:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, p2, v0}, Lorg/manalua/zip/zip4j/crypto/PBKDF2/PBKDF2Engine;->deriveKey([CI)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static generateSalt(I)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/16 v2, 0x10

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eq p0, v0, :cond_0

    if-eq p0, v2, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "invalid salt size, cannot generate salt"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ne p0, v0, :cond_3

    const/4 v0, 0x2

    :goto_0
    if-ne p0, v2, :cond_1

    const/4 v0, 0x4

    :cond_1
    new-array v2, p0, [B

    :goto_1
    if-lt v1, v0, :cond_2

    return-object v2

    :cond_2
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x0

    shr-int/lit8 v5, v3, 0x18

    int-to-byte v5, v5

    int-to-byte v5, v5

    int-to-byte v5, v5

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x1

    shr-int/lit8 v5, v3, 0x10

    int-to-byte v5, v5

    int-to-byte v5, v5

    int-to-byte v5, v5

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x2

    shr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    int-to-byte v5, v5

    int-to-byte v5, v5

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private init()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/16 v2, 0x20

    const/4 v5, 0x2

    const/16 v1, 0x10

    const/4 v4, 0x0

    iget v0, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->keyStrength:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "invalid aes key strength, cannot determine key sizes"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iput v1, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->KEY_LENGTH:I

    iput v1, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->MAC_LENGTH:I

    const/16 v0, 0x8

    iput v0, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->SALT_LENGTH:I

    :goto_0
    iget v0, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->SALT_LENGTH:I

    invoke-static {v0}, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->generateSalt(I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->saltBytes:[B

    iget-object v0, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->saltBytes:[B

    iget-object v1, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->password:[C

    invoke-direct {p0, v0, v1}, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->deriveKey([B[C)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    iget v2, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->KEY_LENGTH:I

    iget v3, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->MAC_LENGTH:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    if-eq v1, v2, :cond_1

    :cond_0
    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "invalid key generated, cannot decrypt file"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    iput v2, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->KEY_LENGTH:I

    iput v2, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->MAC_LENGTH:I

    iput v1, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->SALT_LENGTH:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->KEY_LENGTH:I

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->aesKey:[B

    iget v1, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->MAC_LENGTH:I

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->macKey:[B

    new-array v1, v5, [B

    iput-object v1, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->derivedPasswordVerifier:[B

    iget-object v1, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->aesKey:[B

    iget v2, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->KEY_LENGTH:I

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->KEY_LENGTH:I

    iget-object v2, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->macKey:[B

    iget v3, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->MAC_LENGTH:I

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->KEY_LENGTH:I

    iget v2, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->MAC_LENGTH:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->derivedPasswordVerifier:[B

    invoke-static {v0, v1, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lorg/manalua/zip/zip4j/crypto/engine/AESEngine;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->aesKey:[B

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/crypto/engine/AESEngine;-><init>([B)V

    iput-object v0, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->aesEngine:Lorg/manalua/zip/zip4j/crypto/engine/AESEngine;

    new-instance v0, Lorg/manalua/zip/zip4j/crypto/PBKDF2/MacBasedPRF;

    const-string v1, "HmacSHA1"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/crypto/PBKDF2/MacBasedPRF;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->mac:Lorg/manalua/zip/zip4j/crypto/PBKDF2/MacBasedPRF;

    iget-object v0, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->mac:Lorg/manalua/zip/zip4j/crypto/PBKDF2/MacBasedPRF;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->macKey:[B

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/crypto/PBKDF2/MacBasedPRF;->init([B)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public encryptData([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "input bytes are null, cannot perform AES encrpytion"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->encryptData([BII)I

    move-result v0

    return v0
.end method

.method public encryptData([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/16 v1, 0x10

    iget-boolean v0, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->finished:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "AES Encrypter is in finished state (A non 16 byte block has already been passed to encrypter)"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    rem-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->finished:Z

    :cond_1
    move v2, p2

    :goto_0
    add-int v0, p2, p3

    if-lt v2, v0, :cond_2

    return p3

    :cond_2
    add-int/lit8 v0, v2, 0x10

    add-int v3, p2, p3

    if-gt v0, v3, :cond_3

    move v0, v1

    :goto_1
    iput v0, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->loopCount:I

    iget-object v0, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->iv:[B

    iget v3, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->nonce:I

    invoke-static {v0, v3, v1}, Lorg/manalua/zip/zip4j/util/Raw;->prepareBuffAESIVBytes([BII)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->aesEngine:Lorg/manalua/zip/zip4j/crypto/engine/AESEngine;

    iget-object v3, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->iv:[B

    iget-object v4, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->counterBlock:[B

    invoke-virtual {v0, v3, v4}, Lorg/manalua/zip/zip4j/crypto/engine/AESEngine;->processBlock([B[B)I

    const/4 v0, 0x0

    :goto_2
    iget v3, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->loopCount:I

    if-lt v0, v3, :cond_4

    iget-object v0, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->mac:Lorg/manalua/zip/zip4j/crypto/PBKDF2/MacBasedPRF;

    iget v3, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->loopCount:I

    invoke-virtual {v0, p1, v2, v3}, Lorg/manalua/zip/zip4j/crypto/PBKDF2/MacBasedPRF;->update([BII)V

    iget v0, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->nonce:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->nonce:I

    add-int/lit8 v0, v2, 0x10

    move v2, v0

    goto :goto_0

    :cond_3
    add-int v0, p2, p3

    sub-int/2addr v0, v2

    goto :goto_1

    :cond_4
    add-int v3, v2, v0

    add-int v4, v2, v0

    aget-byte v4, p1, v4

    iget-object v5, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->counterBlock:[B

    aget-byte v5, v5, v0

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public getDerivedPasswordVerifier()[B
    .locals 1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->derivedPasswordVerifier:[B

    return-object v0
.end method

.method public getFinalMac()[B
    .locals 4

    const/16 v3, 0xa

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->mac:Lorg/manalua/zip/zip4j/crypto/PBKDF2/MacBasedPRF;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/crypto/PBKDF2/MacBasedPRF;->doFinal()[B

    move-result-object v0

    new-array v1, v3, [B

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public getPasswordVeriifierLength()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getSaltBytes()[B
    .locals 1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->saltBytes:[B

    return-object v0
.end method

.method public getSaltLength()I
    .locals 1

    iget v0, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->SALT_LENGTH:I

    return v0
.end method

.method public setDerivedPasswordVerifier([B)V
    .locals 0

    iput-object p1, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->derivedPasswordVerifier:[B

    return-void
.end method

.method public setSaltBytes([B)V
    .locals 0

    iput-object p1, p0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->saltBytes:[B

    return-void
.end method
