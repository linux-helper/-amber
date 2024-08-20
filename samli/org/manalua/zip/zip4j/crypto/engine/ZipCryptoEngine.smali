.class public Lorg/manalua/zip/zip4j/crypto/engine/ZipCryptoEngine;
.super Ljava/lang/Object;


# static fields
.field private static final CRC_TABLE:[I


# instance fields
.field private final keys:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x100

    const/4 v2, 0x0

    new-array v0, v6, [I

    sput-object v0, Lorg/manalua/zip/zip4j/crypto/engine/ZipCryptoEngine;->CRC_TABLE:[I

    move v3, v2

    :goto_0
    if-lt v3, v6, :cond_0

    return-void

    :cond_0
    move v1, v2

    move v0, v3

    :goto_1
    const/16 v4, 0x8

    if-lt v1, v4, :cond_1

    sget-object v1, Lorg/manalua/zip/zip4j/crypto/engine/ZipCryptoEngine;->CRC_TABLE:[I

    aput v0, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    and-int/lit8 v4, v0, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    ushr-int/lit8 v0, v0, 0x1

    const v4, -0x12477ce0

    xor-int/2addr v0, v4

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    ushr-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/manalua/zip/zip4j/crypto/engine/ZipCryptoEngine;->keys:[I

    return-void
.end method

.method private crc32(IB)I
    .locals 3

    ushr-int/lit8 v0, p1, 0x8

    sget-object v1, Lorg/manalua/zip/zip4j/crypto/engine/ZipCryptoEngine;->CRC_TABLE:[I

    xor-int v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    aget v1, v1, v2

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public decryptByte()B
    .locals 2

    iget-object v0, p0, Lorg/manalua/zip/zip4j/crypto/engine/ZipCryptoEngine;->keys:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    or-int/lit8 v0, v0, 0x2

    xor-int/lit8 v1, v0, 0x1

    mul-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    return v0
.end method

.method public initKeys([C)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/manalua/zip/zip4j/crypto/engine/ZipCryptoEngine;->keys:[I

    const v2, 0x12345678

    aput v2, v1, v0

    iget-object v1, p0, Lorg/manalua/zip/zip4j/crypto/engine/ZipCryptoEngine;->keys:[I

    const/4 v2, 0x1

    const v3, 0x23456789

    aput v3, v1, v2

    iget-object v1, p0, Lorg/manalua/zip/zip4j/crypto/engine/ZipCryptoEngine;->keys:[I

    const/4 v2, 0x2

    const v3, 0x34567890

    aput v3, v1, v2

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    aget-char v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lorg/manalua/zip/zip4j/crypto/engine/ZipCryptoEngine;->updateKeys(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public updateKeys(B)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/crypto/engine/ZipCryptoEngine;->keys:[I

    iget-object v1, p0, Lorg/manalua/zip/zip4j/crypto/engine/ZipCryptoEngine;->keys:[I

    aget v1, v1, v4

    invoke-direct {p0, v1, p1}, Lorg/manalua/zip/zip4j/crypto/engine/ZipCryptoEngine;->crc32(IB)I

    move-result v1

    aput v1, v0, v4

    iget-object v0, p0, Lorg/manalua/zip/zip4j/crypto/engine/ZipCryptoEngine;->keys:[I

    aget v1, v0, v3

    iget-object v2, p0, Lorg/manalua/zip/zip4j/crypto/engine/ZipCryptoEngine;->keys:[I

    aget v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    aput v1, v0, v3

    iget-object v0, p0, Lorg/manalua/zip/zip4j/crypto/engine/ZipCryptoEngine;->keys:[I

    iget-object v1, p0, Lorg/manalua/zip/zip4j/crypto/engine/ZipCryptoEngine;->keys:[I

    aget v1, v1, v3

    const v2, 0x8088405

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    iget-object v0, p0, Lorg/manalua/zip/zip4j/crypto/engine/ZipCryptoEngine;->keys:[I

    iget-object v1, p0, Lorg/manalua/zip/zip4j/crypto/engine/ZipCryptoEngine;->keys:[I

    aget v1, v1, v5

    iget-object v2, p0, Lorg/manalua/zip/zip4j/crypto/engine/ZipCryptoEngine;->keys:[I

    aget v2, v2, v3

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    invoke-direct {p0, v1, v2}, Lorg/manalua/zip/zip4j/crypto/engine/ZipCryptoEngine;->crc32(IB)I

    move-result v1

    aput v1, v0, v5

    return-void
.end method
