.class public Lorg/manalua/zip/zip4j/crypto/StandardEncrypter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/manalua/zip/zip4j/crypto/IEncrypter;


# instance fields
.field private headerBytes:[B

.field private zipCryptoEngine:Lorg/manalua/zip/zip4j/crypto/engine/ZipCryptoEngine;


# direct methods
.method public constructor <init>([CI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "input password is null or empty in standard encrpyter constructor"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/manalua/zip/zip4j/crypto/engine/ZipCryptoEngine;

    invoke-direct {v0}, Lorg/manalua/zip/zip4j/crypto/engine/ZipCryptoEngine;-><init>()V

    iput-object v0, p0, Lorg/manalua/zip/zip4j/crypto/StandardEncrypter;->zipCryptoEngine:Lorg/manalua/zip/zip4j/crypto/engine/ZipCryptoEngine;

    const/16 v0, 0xc

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/manalua/zip/zip4j/crypto/StandardEncrypter;->headerBytes:[B

    invoke-direct {p0, p1, p2}, Lorg/manalua/zip/zip4j/crypto/StandardEncrypter;->init([CI)V

    return-void
.end method

.method private init([CI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/16 v3, 0xc

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "input password is null or empty, cannot initialize standard encrypter"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/manalua/zip/zip4j/crypto/StandardEncrypter;->zipCryptoEngine:Lorg/manalua/zip/zip4j/crypto/engine/ZipCryptoEngine;

    invoke-virtual {v0, p1}, Lorg/manalua/zip/zip4j/crypto/engine/ZipCryptoEngine;->initKeys([C)V

    invoke-virtual {p0, v3}, Lorg/manalua/zip/zip4j/crypto/StandardEncrypter;->generateRandomBytes(I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/manalua/zip/zip4j/crypto/StandardEncrypter;->headerBytes:[B

    iget-object v0, p0, Lorg/manalua/zip/zip4j/crypto/StandardEncrypter;->zipCryptoEngine:Lorg/manalua/zip/zip4j/crypto/engine/ZipCryptoEngine;

    invoke-virtual {v0, p1}, Lorg/manalua/zip/zip4j/crypto/engine/ZipCryptoEngine;->initKeys([C)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/crypto/StandardEncrypter;->headerBytes:[B

    const/16 v1, 0xb

    ushr-int/lit8 v2, p2, 0x18

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/crypto/StandardEncrypter;->headerBytes:[B

    const/16 v1, 0xa

    ushr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/crypto/StandardEncrypter;->headerBytes:[B

    array-length v0, v0

    if-ge v0, v3, :cond_2

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "invalid header bytes generated, cannot perform standard encryption"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/manalua/zip/zip4j/crypto/StandardEncrypter;->headerBytes:[B

    invoke-virtual {p0, v0}, Lorg/manalua/zip/zip4j/crypto/StandardEncrypter;->encryptData([B)I

    return-void
.end method


# virtual methods
.method protected encryptByte(B)B
    .locals 2

    iget-object v0, p0, Lorg/manalua/zip/zip4j/crypto/StandardEncrypter;->zipCryptoEngine:Lorg/manalua/zip/zip4j/crypto/engine/ZipCryptoEngine;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/crypto/engine/ZipCryptoEngine;->decryptByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iget-object v1, p0, Lorg/manalua/zip/zip4j/crypto/StandardEncrypter;->zipCryptoEngine:Lorg/manalua/zip/zip4j/crypto/engine/ZipCryptoEngine;

    invoke-virtual {v1, p1}, Lorg/manalua/zip/zip4j/crypto/engine/ZipCryptoEngine;->updateKeys(B)V

    return v0
.end method

.method public encryptData([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/manalua/zip/zip4j/crypto/StandardEncrypter;->encryptData([BII)I

    move-result v0

    return v0
.end method

.method public encryptData([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-gez p3, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "invalid length specified to decrpyt data"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-lt v0, v1, :cond_1

    return p3

    :cond_1
    :try_start_0
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/manalua/zip/zip4j/crypto/StandardEncrypter;->encryptByte(B)B

    move-result v1

    aput-byte v1, p1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected generateRandomBytes(I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-gtz p1, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "size is either 0 or less than 0, cannot generate header for standard encryptor"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v1, p1, [B

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_1

    return-object v1

    :cond_1
    const/16 v3, 0x100

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {p0, v3}, Lorg/manalua/zip/zip4j/crypto/StandardEncrypter;->encryptByte(B)B

    move-result v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getHeaderBytes()[B
    .locals 1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/crypto/StandardEncrypter;->headerBytes:[B

    return-object v0
.end method
