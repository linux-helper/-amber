.class public Lorg/manalua/zip/zip4j/io/CipherOutputStream;
.super Lorg/manalua/zip/zip4j/io/BaseOutputStream;


# instance fields
.field private bytesWrittenForThisFile:J

.field protected crc:Ljava/util/zip/CRC32;

.field private encrypter:Lorg/manalua/zip/zip4j/crypto/IEncrypter;

.field protected fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

.field protected localFileHeader:Lorg/manalua/zip/zip4j/model/LocalFileHeader;

.field protected outputStream:Ljava/io/OutputStream;

.field private pendingBuffer:[B

.field private pendingBufferLength:I

.field private sourceFile:Ljava/io/File;

.field private totalBytesRead:J

.field private totalBytesWritten:J

.field protected zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

.field protected zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lorg/manalua/zip/zip4j/model/ZipModel;)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Lorg/manalua/zip/zip4j/io/BaseOutputStream;-><init>()V

    iput-object p1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-direct {p0, p2}, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->initZipModel(Lorg/manalua/zip/zip4j/model/ZipModel;)V

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->crc:Ljava/util/zip/CRC32;

    iput-wide v2, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    iput-wide v2, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->pendingBuffer:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->pendingBufferLength:I

    iput-wide v2, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->totalBytesRead:J

    return-void
.end method

.method private createFileHeader()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/16 v4, 0x8

    const/16 v10, 0x63

    const-wide/16 v8, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-direct {v0}, Lorg/manalua/zip/zip4j/model/FileHeader;-><init>()V

    iput-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    const v1, 0x2014b50

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/FileHeader;->setSignature(I)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/FileHeader;->setVersionMadeBy(I)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/FileHeader;->setVersionNeededToExtract(I)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v0

    if-ne v0, v10, :cond_1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {v0, v10}, Lorg/manalua/zip/zip4j/model/FileHeader;->setCompressionMethod(I)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-direct {p0, v1}, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->generateAESExtraDataRecord(Lorg/manalua/zip/zip4j/model/ZipParameters;)Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/FileHeader;->setAesExtraDataRecord(Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;)V

    :goto_0
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {v0, v3}, Lorg/manalua/zip/zip4j/model/FileHeader;->setEncrypted(Z)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/FileHeader;->setEncryptionMethod(I)V

    :cond_0
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipParameters;->isSourceExternalStream()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->javaToDosTime(J)J

    move-result-wide v6

    long-to-int v1, v6

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/FileHeader;->setLastModFileTime(I)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "fileNameInZip is null or empty"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getCompressionMethod()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/FileHeader;->setCompressionMethod(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    invoke-static {v1}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "fileName is null or empty. unable to create file header"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->sourceFile:Ljava/io/File;

    iget-object v5, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {v5}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    invoke-static {v1, v5}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->getLastModifiedFileTime(Ljava/io/File;Ljava/util/TimeZone;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->javaToDosTime(J)J

    move-result-wide v6

    long-to-int v1, v6

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/FileHeader;->setLastModFileTime(I)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->sourceFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lorg/manalua/zip/zip4j/model/FileHeader;->setUncompressedSize(J)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->sourceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getRootFolderInZip()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {v5}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getDefaultFolderPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->getRelativeFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/FileHeader;->setFileName(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getFileNameCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    iget-object v5, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v5}, Lorg/manalua/zip/zip4j/model/ZipModel;->getFileNameCharset()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->getEncodedStringLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lorg/manalua/zip/zip4j/model/FileHeader;->setFileNameLength(I)V

    :goto_2
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    instance-of v0, v0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;

    if-eqz v0, :cond_a

    iget-object v5, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    check-cast v0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->getCurrSplitFileCounter()I

    move-result v0

    invoke-virtual {v5, v0}, Lorg/manalua/zip/zip4j/model/FileHeader;->setDiskNumberStart(I)V

    :goto_3
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipParameters;->isSourceExternalStream()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->sourceFile:Ljava/io/File;

    invoke-direct {p0, v0}, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->getFileAttributes(Ljava/io/File;)I

    move-result v0

    :goto_4
    const/4 v5, 0x4

    new-array v5, v5, [B

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, v5, v2

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {v0, v5}, Lorg/manalua/zip/zip4j/model/FileHeader;->setExternalFileAttr([B)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipParameters;->isSourceExternalStream()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v5, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "\\"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v2

    :goto_5
    invoke-virtual {v5, v0}, Lorg/manalua/zip/zip4j/model/FileHeader;->setDirectory(Z)V

    :goto_6
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/FileHeader;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {v0, v8, v9}, Lorg/manalua/zip/zip4j/model/FileHeader;->setCompressedSize(J)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {v0, v8, v9}, Lorg/manalua/zip/zip4j/model/FileHeader;->setUncompressedSize(J)V

    :cond_5
    :goto_7
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getSourceFileCRC()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Lorg/manalua/zip/zip4j/model/FileHeader;->setCrc32(J)V

    :cond_6
    const/4 v0, 0x2

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/FileHeader;->isEncrypted()Z

    move-result v1

    iget-object v5, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {v5}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getCompressionMethod()I

    move-result v5

    invoke-direct {p0, v1, v5}, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->generateGeneralPurposeBitArray(ZI)[I

    move-result-object v1

    invoke-static {v1}, Lorg/manalua/zip/zip4j/util/Raw;->bitArrayToByte([I)B

    move-result v1

    aput-byte v1, v0, v2

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getFileNameCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v5, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v5}, Lorg/manalua/zip/zip4j/model/ZipModel;->getFileNameCharset()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    :cond_7
    if-nez v1, :cond_11

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->detectCharSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "UTF8"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_8
    int-to-byte v1, v4

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    :goto_8
    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {v1, v0}, Lorg/manalua/zip/zip4j/model/FileHeader;->setGeneralPurposeFlag([B)V

    return-void

    :cond_9
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-static {v1}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->getEncodedStringLength(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lorg/manalua/zip/zip4j/model/FileHeader;->setFileNameLength(I)V

    goto/16 :goto_2

    :cond_a
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {v0, v2}, Lorg/manalua/zip/zip4j/model/FileHeader;->setDiskNumberStart(I)V

    goto/16 :goto_3

    :cond_b
    move v0, v3

    goto/16 :goto_5

    :cond_c
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->sourceFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/FileHeader;->setDirectory(Z)V

    goto/16 :goto_6

    :cond_d
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipParameters;->isSourceExternalStream()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->sourceFile:Ljava/io/File;

    invoke-static {v0}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->getFileLengh(Ljava/io/File;)J

    move-result-wide v6

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getCompressionMethod()I

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    const-wide/16 v8, 0xc

    add-long/2addr v8, v6

    invoke-virtual {v0, v8, v9}, Lorg/manalua/zip/zip4j/model/FileHeader;->setCompressedSize(J)V

    :goto_9
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {v0, v6, v7}, Lorg/manalua/zip/zip4j/model/FileHeader;->setUncompressedSize(J)V

    goto/16 :goto_7

    :cond_e
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v0

    if-ne v0, v10, :cond_f

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getAesKeyStrength()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "invalid aes key strength, cannot determine key sizes"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    move v0, v4

    :goto_a
    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    int-to-long v8, v0

    add-long/2addr v8, v6

    const-wide/16 v10, 0xa

    add-long/2addr v8, v10

    const-wide/16 v10, 0x2

    add-long/2addr v8, v10

    invoke-virtual {v1, v8, v9}, Lorg/manalua/zip/zip4j/model/FileHeader;->setCompressedSize(J)V

    goto :goto_9

    :pswitch_2
    const/16 v0, 0x10

    goto :goto_a

    :cond_f
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {v0, v8, v9}, Lorg/manalua/zip/zip4j/model/FileHeader;->setCompressedSize(J)V

    goto :goto_9

    :cond_10
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {v0, v8, v9}, Lorg/manalua/zip/zip4j/model/FileHeader;->setCompressedSize(J)V

    goto :goto_9

    :cond_11
    int-to-byte v1, v2

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    goto/16 :goto_8

    :cond_12
    move v0, v2

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private createLocalFileHeader()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    if-nez v0, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "file header is null, cannot create local file header"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/manalua/zip/zip4j/model/LocalFileHeader;

    invoke-direct {v0}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;-><init>()V

    iput-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->localFileHeader:Lorg/manalua/zip/zip4j/model/LocalFileHeader;

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->localFileHeader:Lorg/manalua/zip/zip4j/model/LocalFileHeader;

    const v1, 0x4034b50

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setSignature(I)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->localFileHeader:Lorg/manalua/zip/zip4j/model/LocalFileHeader;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/FileHeader;->getVersionNeededToExtract()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setVersionNeededToExtract(I)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->localFileHeader:Lorg/manalua/zip/zip4j/model/LocalFileHeader;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/FileHeader;->getCompressionMethod()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setCompressionMethod(I)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->localFileHeader:Lorg/manalua/zip/zip4j/model/LocalFileHeader;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/FileHeader;->getLastModFileTime()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setLastModFileTime(I)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->localFileHeader:Lorg/manalua/zip/zip4j/model/LocalFileHeader;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setUncompressedSize(J)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->localFileHeader:Lorg/manalua/zip/zip4j/model/LocalFileHeader;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/FileHeader;->getFileNameLength()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setFileNameLength(I)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->localFileHeader:Lorg/manalua/zip/zip4j/model/LocalFileHeader;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setFileName(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->localFileHeader:Lorg/manalua/zip/zip4j/model/LocalFileHeader;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/FileHeader;->isEncrypted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setEncrypted(Z)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->localFileHeader:Lorg/manalua/zip/zip4j/model/LocalFileHeader;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/FileHeader;->getEncryptionMethod()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setEncryptionMethod(I)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->localFileHeader:Lorg/manalua/zip/zip4j/model/LocalFileHeader;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/FileHeader;->getAesExtraDataRecord()Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setAesExtraDataRecord(Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->localFileHeader:Lorg/manalua/zip/zip4j/model/LocalFileHeader;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/FileHeader;->getCrc32()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setCrc32(J)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->localFileHeader:Lorg/manalua/zip/zip4j/model/LocalFileHeader;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setCompressedSize(J)V

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->localFileHeader:Lorg/manalua/zip/zip4j/model/LocalFileHeader;

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/FileHeader;->getGeneralPurposeFlag()[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v1, v0}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setGeneralPurposeFlag([B)V

    return-void
.end method

.method private encryptAndWrite([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->encrypter:Lorg/manalua/zip/zip4j/crypto/IEncrypter;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->encrypter:Lorg/manalua/zip/zip4j/crypto/IEncrypter;

    invoke-interface {v0, p1, p2, p3}, Lorg/manalua/zip/zip4j/crypto/IEncrypter;->encryptData([BII)I
    :try_end_0
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-wide v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    iget-wide v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/exception/ZipException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private generateAESExtraDataRecord(Lorg/manalua/zip/zip4j/model/ZipParameters;)Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v5, 0x3

    const/4 v4, 0x1

    if-nez p1, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "zip parameters are null, cannot generate AES Extra Data record"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;

    invoke-direct {v0}, Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;-><init>()V

    const-wide/32 v2, 0x9901

    invoke-virtual {v0, v2, v3}, Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;->setSignature(J)V

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;->setDataSize(I)V

    const-string v1, "AE"

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;->setVendorID(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;->setVersionNumber(I)V

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getAesKeyStrength()I

    move-result v1

    if-ne v1, v4, :cond_1

    invoke-virtual {v0, v4}, Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;->setAesStrength(I)V

    :goto_0
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getCompressionMethod()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;->setCompressionMethod(I)V

    return-object v0

    :cond_1
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getAesKeyStrength()I

    move-result v1

    if-ne v1, v5, :cond_2

    invoke-virtual {v0, v5}, Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;->setAesStrength(I)V

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "invalid AES key strength, cannot generate AES Extra data record"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private generateGeneralPurposeBitArray(ZI)[I
    .locals 4

    const/16 v1, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v1, [I

    if-eqz p1, :cond_1

    aput v3, v0, v2

    :goto_0
    if-eq p2, v1, :cond_0

    aput v2, v0, v3

    const/4 v1, 0x2

    aput v2, v0, v1

    :cond_0
    const/4 v1, 0x3

    aput v3, v0, v1

    return-object v0

    :cond_1
    aput v2, v0, v2

    goto :goto_0
.end method

.method private getFileAttributes(Ljava/io/File;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "input file is null, cannot get file attributes"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x12

    goto :goto_0

    :cond_3
    const/16 v0, 0x10

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x3

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0
.end method

.method private initEncrypter()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->encrypter:Lorg/manalua/zip/zip4j/crypto/IEncrypter;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "invalid encprytion method"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    new-instance v0, Lorg/manalua/zip/zip4j/crypto/StandardEncrypter;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getPassword()[C

    move-result-object v1

    iget-object v2, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->localFileHeader:Lorg/manalua/zip/zip4j/model/LocalFileHeader;

    invoke-virtual {v2}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->getLastModFileTime()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/manalua/zip/zip4j/crypto/StandardEncrypter;-><init>([CI)V

    iput-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->encrypter:Lorg/manalua/zip/zip4j/crypto/IEncrypter;

    goto :goto_0

    :sswitch_1
    new-instance v0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getPassword()[C

    move-result-object v1

    iget-object v2, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {v2}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getAesKeyStrength()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;-><init>([CI)V

    iput-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->encrypter:Lorg/manalua/zip/zip4j/crypto/IEncrypter;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x63 -> :sswitch_1
    .end sparse-switch
.end method

.method private initZipModel(Lorg/manalua/zip/zip4j/model/ZipModel;)V
    .locals 4

    if-nez p1, :cond_5

    new-instance v0, Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-direct {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;-><init>()V

    iput-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    :goto_0
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    new-instance v1, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    invoke-direct {v1}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;-><init>()V

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/ZipModel;->setEndCentralDirRecord(Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;)V

    :cond_0
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    new-instance v1, Lorg/manalua/zip/zip4j/model/CentralDirectory;

    invoke-direct {v1}, Lorg/manalua/zip/zip4j/model/CentralDirectory;-><init>()V

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/ZipModel;->setCentralDirectory(Lorg/manalua/zip/zip4j/model/CentralDirectory;)V

    :cond_1
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->setFileHeaders(Ljava/util/ArrayList;)V

    :cond_2
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getLocalFileHeaderList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/ZipModel;->setLocalFileHeaderList(Ljava/util/List;)V

    :cond_3
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    instance-of v0, v0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    check-cast v0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->isSplitZipFile()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/ZipModel;->setSplitArchive(Z)V

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    check-cast v0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->getSplitLength()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/manalua/zip/zip4j/model/ZipModel;->setSplitLength(J)V

    :cond_4
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v0

    const-wide/32 v2, 0x6054b50

    invoke-virtual {v0, v2, v3}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->setSignature(J)V

    return-void

    :cond_5
    iput-object p1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    goto/16 :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_0
    return-void
.end method

.method public closeEntry()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const-wide/16 v8, 0xa

    const/4 v4, 0x0

    const/16 v6, 0x63

    const-wide/16 v2, 0x0

    iget v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->pendingBufferLength:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->pendingBuffer:[B

    iget v1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->pendingBufferLength:I

    invoke-direct {p0, v0, v4, v1}, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->encryptAndWrite([BII)V

    iput v4, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->pendingBufferLength:I

    :cond_0
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v0

    if-ne v0, v6, :cond_1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->encrypter:Lorg/manalua/zip/zip4j/crypto/IEncrypter;

    instance-of v0, v0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->encrypter:Lorg/manalua/zip/zip4j/crypto/IEncrypter;

    check-cast v0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->getFinalMac()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-wide v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J

    add-long/2addr v0, v8

    iput-wide v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J

    iget-wide v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    add-long/2addr v0, v8

    iput-wide v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    :cond_1
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    iget-wide v4, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J

    invoke-virtual {v0, v4, v5}, Lorg/manalua/zip/zip4j/model/FileHeader;->setCompressedSize(J)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->localFileHeader:Lorg/manalua/zip/zip4j/model/LocalFileHeader;

    iget-wide v4, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J

    invoke-virtual {v0, v4, v5}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setCompressedSize(J)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipParameters;->isSourceExternalStream()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    iget-wide v4, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->totalBytesRead:J

    invoke-virtual {v0, v4, v5}, Lorg/manalua/zip/zip4j/model/FileHeader;->setUncompressedSize(J)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->localFileHeader:Lorg/manalua/zip/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->getUncompressedSize()J

    move-result-wide v0

    iget-wide v4, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->totalBytesRead:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->localFileHeader:Lorg/manalua/zip/zip4j/model/LocalFileHeader;

    iget-wide v4, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->totalBytesRead:J

    invoke-virtual {v0, v4, v5}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setUncompressedSize(J)V

    :cond_2
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    iget-object v4, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {v4}, Lorg/manalua/zip/zip4j/model/FileHeader;->isEncrypted()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {v4}, Lorg/manalua/zip/zip4j/model/FileHeader;->getEncryptionMethod()I

    move-result v4

    if-ne v4, v6, :cond_3

    move-wide v0, v2

    :cond_3
    iget-object v4, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {v4}, Lorg/manalua/zip/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {v4}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v4

    if-ne v4, v6, :cond_5

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {v0, v2, v3}, Lorg/manalua/zip/zip4j/model/FileHeader;->setCrc32(J)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->localFileHeader:Lorg/manalua/zip/zip4j/model/LocalFileHeader;

    invoke-virtual {v0, v2, v3}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setCrc32(J)V

    :goto_0
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getLocalFileHeaderList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->localFileHeader:Lorg/manalua/zip/zip4j/model/LocalFileHeader;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/manalua/zip/zip4j/core/HeaderWriter;

    invoke-direct {v0}, Lorg/manalua/zip/zip4j/core/HeaderWriter;-><init>()V

    iget-wide v4, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->localFileHeader:Lorg/manalua/zip/zip4j/model/LocalFileHeader;

    iget-object v6, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, v1, v6}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->writeExtendedLocalHeader(Lorg/manalua/zip/zip4j/model/LocalFileHeader;Ljava/io/OutputStream;)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v4

    iput-wide v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    iput-wide v2, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->encrypter:Lorg/manalua/zip/zip4j/crypto/IEncrypter;

    iput-wide v2, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->totalBytesRead:J

    return-void

    :cond_4
    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "invalid encrypter for AES encrypted file"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v4, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {v4, v0, v1}, Lorg/manalua/zip/zip4j/model/FileHeader;->setCrc32(J)V

    iget-object v4, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->localFileHeader:Lorg/manalua/zip/zip4j/model/LocalFileHeader;

    invoke-virtual {v4, v0, v1}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setCrc32(J)V

    goto :goto_0
.end method

.method public decrementCompressedFileSize(I)V
    .locals 4

    if-gtz p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    int-to-long v0, p1

    iget-wide v2, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J

    int-to-long v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J

    goto :goto_0
.end method

.method public finish()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v0

    iget-wide v2, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    invoke-virtual {v0, v2, v3}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->setOffsetOfStartOfCentralDir(J)V

    new-instance v0, Lorg/manalua/zip/zip4j/core/HeaderWriter;

    invoke-direct {v0}, Lorg/manalua/zip/zip4j/core/HeaderWriter;-><init>()V

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    iget-object v2, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, v1, v2}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->finalizeZipFile(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/io/OutputStream;)V

    return-void
.end method

.method public getSourceFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->sourceFile:Ljava/io/File;

    return-object v0
.end method

.method public putNextEntry(Ljava/io/File;Lorg/manalua/zip/zip4j/model/ZipParameters;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const-wide/16 v4, 0x4

    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/ZipParameters;->isSourceExternalStream()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "input file is null"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/ZipParameters;->isSourceExternalStream()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "input file does not exist"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    iput-object p1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->sourceFile:Ljava/io/File;

    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/ZipParameters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/manalua/zip/zip4j/model/ZipParameters;

    iput-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/ZipParameters;->isSourceExternalStream()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->sourceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/ZipParameters;->setEncryptFiles(Z)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/ZipParameters;->setEncryptionMethod(I)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/ZipParameters;->setCompressionMethod(I)V

    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->createFileHeader()V

    invoke-direct {p0}, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->createLocalFileHeader()V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    const v2, 0x8074b50

    invoke-static {v0, v1, v2}, Lorg/manalua/zip/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-wide v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    :cond_4
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    instance-of v0, v0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    const-wide/16 v2, 0x4

    invoke-virtual {v0, v2, v3}, Lorg/manalua/zip/zip4j/model/FileHeader;->setOffsetLocalHeader(J)V

    :goto_1
    new-instance v0, Lorg/manalua/zip/zip4j/core/HeaderWriter;

    invoke-direct {v0}, Lorg/manalua/zip/zip4j/core/HeaderWriter;-><init>()V

    iget-wide v2, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    iget-object v4, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->localFileHeader:Lorg/manalua/zip/zip4j/model/LocalFileHeader;

    iget-object v5, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, v1, v4, v5}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->writeLocalFileHeader(Lorg/manalua/zip/zip4j/model/ZipModel;Lorg/manalua/zip/zip4j/model/LocalFileHeader;Ljava/io/OutputStream;)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->initEncrypter()V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->encrypter:Lorg/manalua/zip/zip4j/crypto/IEncrypter;

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->encrypter:Lorg/manalua/zip/zip4j/crypto/IEncrypter;

    check-cast v0, Lorg/manalua/zip/zip4j/crypto/StandardEncrypter;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/crypto/StandardEncrypter;->getHeaderBytes()[B

    move-result-object v0

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-wide v2, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    array-length v1, v0

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    iget-wide v2, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J

    array-length v0, v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J

    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    return-void

    :cond_6
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "file name is empty for external stream"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v0

    new-instance v1, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_7
    :try_start_1
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_8
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/ZipParameters;->setEncryptFiles(Z)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/ZipParameters;->setEncryptionMethod(I)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/ZipParameters;->setCompressionMethod(I)V
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    :catch_1
    move-exception v0

    throw v0

    :cond_9
    :try_start_2
    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    check-cast v0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->getFilePointer()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/manalua/zip/zip4j/model/FileHeader;->setOffsetLocalHeader(J)V
    :try_end_2
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    new-instance v1, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_a
    :try_start_3
    iget-wide v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    const-wide/16 v2, 0x4

    invoke-virtual {v0, v2, v3}, Lorg/manalua/zip/zip4j/model/FileHeader;->setOffsetLocalHeader(J)V

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    iget-wide v2, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    invoke-virtual {v0, v2, v3}, Lorg/manalua/zip/zip4j/model/FileHeader;->setOffsetLocalHeader(J)V

    goto/16 :goto_1

    :cond_c
    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->encrypter:Lorg/manalua/zip/zip4j/crypto/IEncrypter;

    check-cast v0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->getSaltBytes()[B

    move-result-object v1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->encrypter:Lorg/manalua/zip/zip4j/crypto/IEncrypter;

    check-cast v0, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/crypto/AESEncrpyter;->getDerivedPasswordVerifier()[B

    move-result-object v0

    iget-object v2, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v2, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    iget-wide v2, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    array-length v4, v1

    array-length v5, v0

    add-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    iget-wide v2, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J

    array-length v1, v1

    array-length v0, v0

    add-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2
.end method

.method public setSourceFile(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->sourceFile:Ljava/io/File;

    return-void
.end method

.method protected updateTotalBytesRead(I)V
    .locals 4

    if-lez p1, :cond_0

    iget-wide v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->totalBytesRead:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->totalBytesRead:J

    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    invoke-virtual {p0, v0, v2, v3}, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->write([BII)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public write([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_3

    iget v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->pendingBufferLength:I

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->pendingBufferLength:I

    rsub-int/lit8 v0, v0, 0x10

    if-lt p3, v0, :cond_4

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->pendingBuffer:[B

    iget v1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->pendingBufferLength:I

    iget v2, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->pendingBufferLength:I

    rsub-int/lit8 v2, v2, 0x10

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->pendingBuffer:[B

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->pendingBuffer:[B

    array-length v1, v1

    invoke-direct {p0, v0, v3, v1}, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->encryptAndWrite([BII)V

    iget v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->pendingBufferLength:I

    rsub-int/lit8 p2, v0, 0x10

    sub-int/2addr p3, p2

    iput v3, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->pendingBufferLength:I

    :cond_2
    if-eqz p3, :cond_3

    rem-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_3

    add-int v0, p3, p2

    rem-int/lit8 v1, p3, 0x10

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->pendingBuffer:[B

    rem-int/lit8 v2, p3, 0x10

    invoke-static {p1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    rem-int/lit8 v0, p3, 0x10

    iput v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->pendingBufferLength:I

    iget v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->pendingBufferLength:I

    sub-int/2addr p3, v0

    :cond_3
    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->encryptAndWrite([BII)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->pendingBuffer:[B

    iget v1, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->pendingBufferLength:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->pendingBufferLength:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->pendingBufferLength:I

    goto :goto_0
.end method
