.class public Lorg/manalua/zip/zip4j/crypto/AESDecrypter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/manalua/zip/zip4j/crypto/IDecrypter;


# instance fields
.field private KEY_LENGTH:I

.field private MAC_LENGTH:I

.field private final PASSWORD_VERIFIER_LENGTH:I

.field private SALT_LENGTH:I

.field private aesEngine:Lorg/manalua/zip/zip4j/crypto/engine/AESEngine;

.field private aesKey:[B

.field private counterBlock:[B

.field private derivedPasswordVerifier:[B

.field private iv:[B

.field private localFileHeader:Lorg/manalua/zip/zip4j/model/LocalFileHeader;

.field private loopCount:I

.field private mac:Lorg/manalua/zip/zip4j/crypto/PBKDF2/MacBasedPRF;

.field private macKey:[B

.field private nonce:I

.field private storedMac:[B


# direct methods
.method public constructor <init>(Lorg/manalua/zip/zip4j/model/LocalFileHeader;[B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/16 v1, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->PASSWORD_VERIFIER_LENGTH:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->nonce:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->loopCount:I

    if-nez p1, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "one of the input parameters is null in AESDecryptor Constructor"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->localFileHeader:Lorg/manalua/zip/zip4j/model/LocalFileHeader;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->storedMac:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->iv:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->counterBlock:[B

    invoke-direct {p0, p2, p3}, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->init([B[B)V

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

    iget v0, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->KEY_LENGTH:I

    iget v2, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->MAC_LENGTH:I

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

.method private init([B[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/16 v3, 0x20

    const/16 v2, 0x18

    const/4 v5, 0x2

    const/16 v1, 0x10

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->localFileHeader:Lorg/manalua/zip/zip4j/model/LocalFileHeader;

    if-nez v0, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "invalid file header in init method of AESDecryptor"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->localFileHeader:Lorg/manalua/zip/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->getAesExtraDataRecord()Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "invalid aes extra data record - in init method of AESDecryptor"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;->getAesStrength()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "invalid aes key strength for file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->localFileHeader:Lorg/manalua/zip/zip4j/model/LocalFileHeader;

    invoke-virtual {v2}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput v1, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->KEY_LENGTH:I

    iput v1, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->MAC_LENGTH:I

    const/16 v0, 0x8

    iput v0, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->SALT_LENGTH:I

    :goto_0
    iget-object v0, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->localFileHeader:Lorg/manalua/zip/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->getPassword()[C

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->localFileHeader:Lorg/manalua/zip/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->getPassword()[C

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_3

    :cond_2
    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "empty or null password provided for AES Decryptor"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iput v2, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->KEY_LENGTH:I

    iput v2, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->MAC_LENGTH:I

    const/16 v0, 0xc

    iput v0, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->SALT_LENGTH:I

    goto :goto_0

    :pswitch_2
    iput v3, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->KEY_LENGTH:I

    iput v3, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->MAC_LENGTH:I

    iput v1, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->SALT_LENGTH:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->localFileHeader:Lorg/manalua/zip/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->getPassword()[C

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->deriveKey([B[C)[B

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v1, v0

    iget v2, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->KEY_LENGTH:I

    iget v3, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->MAC_LENGTH:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    if-eq v1, v2, :cond_5

    :cond_4
    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "invalid derived key"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget v1, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->KEY_LENGTH:I

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->aesKey:[B

    iget v1, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->MAC_LENGTH:I

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->macKey:[B

    new-array v1, v5, [B

    iput-object v1, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->derivedPasswordVerifier:[B

    iget-object v1, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->aesKey:[B

    iget v2, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->KEY_LENGTH:I

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->KEY_LENGTH:I

    iget-object v2, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->macKey:[B

    iget v3, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->MAC_LENGTH:I

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->KEY_LENGTH:I

    iget v2, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->MAC_LENGTH:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->derivedPasswordVerifier:[B

    invoke-static {v0, v1, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->derivedPasswordVerifier:[B

    if-nez v0, :cond_6

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "invalid derived password verifier for AES"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v0, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->derivedPasswordVerifier:[B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Wrong Password for file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->localFileHeader:Lorg/manalua/zip/zip4j/model/LocalFileHeader;

    invoke-virtual {v2}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_7
    new-instance v0, Lorg/manalua/zip/zip4j/crypto/engine/AESEngine;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->aesKey:[B

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/crypto/engine/AESEngine;-><init>([B)V

    iput-object v0, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->aesEngine:Lorg/manalua/zip/zip4j/crypto/engine/AESEngine;

    new-instance v0, Lorg/manalua/zip/zip4j/crypto/PBKDF2/MacBasedPRF;

    const-string v1, "HmacSHA1"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/crypto/PBKDF2/MacBasedPRF;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->mac:Lorg/manalua/zip/zip4j/crypto/PBKDF2/MacBasedPRF;

    iget-object v0, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->mac:Lorg/manalua/zip/zip4j/crypto/PBKDF2/MacBasedPRF;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->macKey:[B

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/crypto/PBKDF2/MacBasedPRF;->init([B)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public decryptData([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->decryptData([BII)I

    move-result v0

    return v0
.end method

.method public decryptData([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/16 v1, 0x10

    iget-object v0, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->aesEngine:Lorg/manalua/zip/zip4j/crypto/engine/AESEngine;

    if-nez v0, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "AES not initialized properly"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v2, p2

    :goto_0
    add-int v0, p2, p3

    if-lt v2, v0, :cond_1

    return p3

    :cond_1
    add-int/lit8 v0, v2, 0x10

    add-int v3, p2, p3

    if-gt v0, v3, :cond_2

    move v0, v1

    :goto_1
    :try_start_0
    iput v0, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->loopCount:I

    iget-object v0, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->mac:Lorg/manalua/zip/zip4j/crypto/PBKDF2/MacBasedPRF;

    iget v3, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->loopCount:I

    invoke-virtual {v0, p1, v2, v3}, Lorg/manalua/zip/zip4j/crypto/PBKDF2/MacBasedPRF;->update([BII)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->iv:[B

    iget v3, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->nonce:I

    const/16 v4, 0x10

    invoke-static {v0, v3, v4}, Lorg/manalua/zip/zip4j/util/Raw;->prepareBuffAESIVBytes([BII)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->aesEngine:Lorg/manalua/zip/zip4j/crypto/engine/AESEngine;

    iget-object v3, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->iv:[B

    iget-object v4, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->counterBlock:[B

    invoke-virtual {v0, v3, v4}, Lorg/manalua/zip/zip4j/crypto/engine/AESEngine;->processBlock([B[B)I

    const/4 v0, 0x0

    :goto_2
    iget v3, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->loopCount:I

    if-lt v0, v3, :cond_3

    iget v0, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->nonce:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->nonce:I

    add-int/lit8 v0, v2, 0x10

    move v2, v0

    goto :goto_0

    :cond_2
    add-int v0, p2, p3

    sub-int/2addr v0, v2

    goto :goto_1

    :cond_3
    add-int v3, v2, v0

    add-int v4, v2, v0

    aget-byte v4, p1, v4

    iget-object v5, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->counterBlock:[B

    aget-byte v5, v5, v0

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, p1, v3
    :try_end_0
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCalculatedAuthenticationBytes()[B
    .locals 1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->mac:Lorg/manalua/zip/zip4j/crypto/PBKDF2/MacBasedPRF;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/crypto/PBKDF2/MacBasedPRF;->doFinal()[B

    move-result-object v0

    return-object v0
.end method

.method public getPasswordVerifierLength()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getSaltLength()I
    .locals 1

    iget v0, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->SALT_LENGTH:I

    return v0
.end method

.method public getStoredMac()[B
    .locals 1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->storedMac:[B

    return-object v0
.end method

.method public setStoredMac([B)V
    .locals 0

    iput-object p1, p0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->storedMac:[B

    return-void
.end method
