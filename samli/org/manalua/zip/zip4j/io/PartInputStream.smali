.class public Lorg/manalua/zip/zip4j/io/PartInputStream;
.super Lorg/manalua/zip/zip4j/io/BaseInputStream;


# instance fields
.field private aesBlockByte:[B

.field private aesBytesReturned:I

.field private bytesRead:J

.field private count:I

.field private decrypter:Lorg/manalua/zip/zip4j/crypto/IDecrypter;

.field private isAESEncryptedFile:Z

.field private length:J

.field private oneByteBuff:[B

.field private raf:Ljava/io/RandomAccessFile;

.field private unzipEngine:Lorg/manalua/zip/zip4j/unzip/UnzipEngine;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;JJLorg/manalua/zip/zip4j/unzip/UnzipEngine;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/manalua/zip/zip4j/io/BaseInputStream;-><init>()V

    new-array v2, v0, [B

    iput-object v2, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->oneByteBuff:[B

    const/16 v2, 0x10

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->aesBlockByte:[B

    iput v1, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->aesBytesReturned:I

    iput-boolean v1, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->isAESEncryptedFile:Z

    const/4 v2, -0x1

    iput v2, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->count:I

    iput-object p1, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    iput-object p6, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->unzipEngine:Lorg/manalua/zip/zip4j/unzip/UnzipEngine;

    invoke-virtual {p6}, Lorg/manalua/zip/zip4j/unzip/UnzipEngine;->getDecrypter()Lorg/manalua/zip/zip4j/crypto/IDecrypter;

    move-result-object v2

    iput-object v2, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->decrypter:Lorg/manalua/zip/zip4j/crypto/IDecrypter;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->bytesRead:J

    iput-wide p4, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->length:J

    invoke-virtual {p6}, Lorg/manalua/zip/zip4j/unzip/UnzipEngine;->getFileHeader()Lorg/manalua/zip/zip4j/model/FileHeader;

    move-result-object v2

    invoke-virtual {v2}, Lorg/manalua/zip/zip4j/model/FileHeader;->isEncrypted()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p6}, Lorg/manalua/zip/zip4j/unzip/UnzipEngine;->getFileHeader()Lorg/manalua/zip/zip4j/model/FileHeader;

    move-result-object v2

    invoke-virtual {v2}, Lorg/manalua/zip/zip4j/model/FileHeader;->getEncryptionMethod()I

    move-result v2

    const/16 v3, 0x63

    if-ne v2, v3, :cond_0

    :goto_0
    iput-boolean v0, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->isAESEncryptedFile:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 4

    iget-wide v0, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->length:J

    iget-wide v2, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->bytesRead:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const v0, 0x7fffffff

    :goto_0
    return v0

    :cond_0
    long-to-int v0, v0

    goto :goto_0
.end method

.method protected checkAndReadAESMacBytes()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0xa

    iget-boolean v0, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->isAESEncryptedFile:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->decrypter:Lorg/manalua/zip/zip4j/crypto/IDecrypter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->decrypter:Lorg/manalua/zip/zip4j/crypto/IDecrypter;

    instance-of v0, v0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->decrypter:Lorg/manalua/zip/zip4j/crypto/IDecrypter;

    check-cast v0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->getStoredMac()[B

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-array v1, v2, [B

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    if-eq v0, v2, :cond_2

    iget-object v2, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->unzipEngine:Lorg/manalua/zip/zip4j/unzip/UnzipEngine;

    invoke-virtual {v2}, Lorg/manalua/zip/zip4j/unzip/UnzipEngine;->getZipModel()Lorg/manalua/zip/zip4j/model/ZipModel;

    move-result-object v2

    invoke-virtual {v2}, Lorg/manalua/zip/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    iget-object v2, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->unzipEngine:Lorg/manalua/zip/zip4j/unzip/UnzipEngine;

    invoke-virtual {v2}, Lorg/manalua/zip/zip4j/unzip/UnzipEngine;->startNextSplitFile()Ljava/io/RandomAccessFile;

    move-result-object v2

    iput-object v2, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    rsub-int/lit8 v3, v0, 0xa

    invoke-virtual {v2, v1, v0, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    :cond_2
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->unzipEngine:Lorg/manalua/zip/zip4j/unzip/UnzipEngine;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/unzip/UnzipEngine;->getDecrypter()Lorg/manalua/zip/zip4j/crypto/IDecrypter;

    move-result-object v0

    check-cast v0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;->setStoredMac([B)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error occured while reading stored AES authentication bytes"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public getUnzipEngine()Lorg/manalua/zip/zip4j/unzip/UnzipEngine;
    .locals 1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->unzipEngine:Lorg/manalua/zip/zip4j/unzip/UnzipEngine;

    return-object v0
.end method

.method public read()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v0, -0x1

    iget-wide v2, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->bytesRead:J

    iget-wide v4, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->length:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->isAESEncryptedFile:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->aesBytesReturned:I

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->aesBytesReturned:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    :cond_2
    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->aesBlockByte:[B

    invoke-virtual {p0, v1}, Lorg/manalua/zip/zip4j/io/PartInputStream;->read([B)I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v6, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->aesBytesReturned:I

    :cond_3
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->aesBlockByte:[B

    iget v1, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->aesBytesReturned:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->aesBytesReturned:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->oneByteBuff:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v6, v2}, Lorg/manalua/zip/zip4j/io/PartInputStream;->read([BII)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->oneByteBuff:[B

    aget-byte v0, v0, v6

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/manalua/zip/zip4j/io/PartInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-long v0, p3

    iget-wide v2, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->length:J

    iget-wide v4, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->bytesRead:J

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->length:J

    iget-wide v2, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->bytesRead:J

    sub-long/2addr v0, v2

    long-to-int p3, v0

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lorg/manalua/zip/zip4j/io/PartInputStream;->checkAndReadAESMacBytes()V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->unzipEngine:Lorg/manalua/zip/zip4j/unzip/UnzipEngine;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/unzip/UnzipEngine;->getDecrypter()Lorg/manalua/zip/zip4j/crypto/IDecrypter;

    move-result-object v0

    instance-of v0, v0, Lorg/manalua/zip/zip4j/crypto/AESDecrypter;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->bytesRead:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iget-wide v2, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->length:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    rem-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_1

    rem-int/lit8 v0, p3, 0x10

    sub-int/2addr p3, v0

    :cond_1
    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    iput v0, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->count:I

    iget v0, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->count:I

    if-ge v0, p3, :cond_3

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->unzipEngine:Lorg/manalua/zip/zip4j/unzip/UnzipEngine;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/unzip/UnzipEngine;->getZipModel()Lorg/manalua/zip/zip4j/model/ZipModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->unzipEngine:Lorg/manalua/zip/zip4j/unzip/UnzipEngine;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/unzip/UnzipEngine;->startNextSplitFile()Ljava/io/RandomAccessFile;

    move-result-object v0

    iput-object v0, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    iget v0, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->count:I

    if-gez v0, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->count:I

    :cond_2
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    iget v2, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->count:I

    iget v3, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->count:I

    sub-int v3, p3, v3

    invoke-virtual {v0, p1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    if-lez v0, :cond_3

    iget v2, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->count:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->count:I

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->count:I

    if-lez v0, :cond_5

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->decrypter:Lorg/manalua/zip/zip4j/crypto/IDecrypter;

    if-eqz v0, :cond_4

    :try_start_1
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->decrypter:Lorg/manalua/zip/zip4j/crypto/IDecrypter;

    iget v1, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->count:I

    invoke-interface {v0, p1, p2, v1}, Lorg/manalua/zip/zip4j/crypto/IDecrypter;->decryptData([BII)I
    :try_end_1
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    iget-wide v0, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->bytesRead:J

    iget v2, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->count:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->bytesRead:J

    :cond_5
    iget-wide v0, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->bytesRead:J

    iget-wide v2, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->length:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_6

    invoke-virtual {p0}, Lorg/manalua/zip/zip4j/io/PartInputStream;->checkAndReadAESMacBytes()V

    :cond_6
    iget v0, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->count:I

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/exception/ZipException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public seek(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method

.method public skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iget-wide v0, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->length:J

    iget-wide v2, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->bytesRead:J

    sub-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    iget-wide v0, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->length:J

    iget-wide v2, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->bytesRead:J

    sub-long p1, v0, v2

    :cond_1
    iget-wide v0, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->bytesRead:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/manalua/zip/zip4j/io/PartInputStream;->bytesRead:J

    return-wide p1
.end method
