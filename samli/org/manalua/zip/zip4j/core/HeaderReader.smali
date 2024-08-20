.class public Lorg/manalua/zip/zip4j/core/HeaderReader;
.super Ljava/lang/Object;


# instance fields
.field private zip4jRaf:Ljava/io/RandomAccessFile;

.field private zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    iput-object p1, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    return-void
.end method

.method private getLongByteFromIntByte([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "input parameter is null, cannot expand to 8 bytes"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "invalid byte length, cannot expand to 8 bytes"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v0, 0x8

    new-array v0, v0, [B

    aget-byte v1, p1, v2

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    aget-byte v1, p1, v3

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    aget-byte v1, p1, v4

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    aget-byte v1, p1, v5

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    return-object v0
.end method

.method private readAESExtraDataRecord(Ljava/util/ArrayList;)Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const-wide/32 v8, 0x9901

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    move v1, v2

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/manalua/zip/zip4j/model/ExtraDataRecord;

    if-nez v0, :cond_3

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ExtraDataRecord;->getHeader()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ExtraDataRecord;->getData()[B

    move-result-object v1

    if-nez v1, :cond_4

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "corrput AES extra data records"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v1, Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;

    invoke-direct {v1}, Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;-><init>()V

    invoke-virtual {v1, v8, v9}, Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;->setSignature(J)V

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;->setDataSize(I)V

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ExtraDataRecord;->getData()[B

    move-result-object v0

    invoke-static {v0, v2}, Lorg/manalua/zip/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;->setVersionNumber(I)V

    new-array v3, v6, [B

    invoke-static {v0, v6, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;->setVendorID(Ljava/lang/String;)V

    const/4 v2, 0x4

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;->setAesStrength(I)V

    const/4 v2, 0x5

    invoke-static {v0, v2}, Lorg/manalua/zip/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;->setCompressionMethod(I)V

    move-object v0, v1

    goto :goto_0
.end method

.method private readAndSaveAESExtraDataRecord(Lorg/manalua/zip/zip4j/model/FileHeader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "file header is null in reading Zip64 Extended Info"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/FileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/FileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/FileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readAESExtraDataRecord(Ljava/util/ArrayList;)Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lorg/manalua/zip/zip4j/model/FileHeader;->setAesExtraDataRecord(Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;)V

    const/16 v0, 0x63

    invoke-virtual {p1, v0}, Lorg/manalua/zip/zip4j/model/FileHeader;->setEncryptionMethod(I)V

    goto :goto_0
.end method

.method private readAndSaveAESExtraDataRecord(Lorg/manalua/zip/zip4j/model/LocalFileHeader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "file header is null in reading Zip64 Extended Info"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readAESExtraDataRecord(Ljava/util/ArrayList;)Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setAesExtraDataRecord(Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;)V

    const/16 v0, 0x63

    invoke-virtual {p1, v0}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setEncryptionMethod(I)V

    goto :goto_0
.end method

.method private readAndSaveExtraDataRecord(Lorg/manalua/zip/zip4j/model/FileHeader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "invalid file handler when trying to read extra data record"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "file header is null"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/FileHeader;->getExtraFieldLength()I

    move-result v0

    if-gtz v0, :cond_2

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, v0}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readExtraDataRecords(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/manalua/zip/zip4j/model/FileHeader;->setExtraDataRecords(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private readAndSaveExtraDataRecord(Lorg/manalua/zip/zip4j/model/LocalFileHeader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "invalid file handler when trying to read extra data record"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "file header is null"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->getExtraFieldLength()I

    move-result v0

    if-gtz v0, :cond_2

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, v0}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readExtraDataRecords(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setExtraDataRecords(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private readAndSaveZip64ExtendedInfo(Lorg/manalua/zip/zip4j/model/FileHeader;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const-wide/16 v10, -0x1

    if-nez p1, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "file header is null in reading Zip64 Extended Info"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/FileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/FileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/FileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v4

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v6

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readZip64ExtendedInfo(Ljava/util/ArrayList;JJJI)Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lorg/manalua/zip/zip4j/model/FileHeader;->setZip64ExtendedInfo(Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;)V

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;->getUnCompressedSize()J

    move-result-wide v2

    cmp-long v1, v2, v10

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;->getUnCompressedSize()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/manalua/zip/zip4j/model/FileHeader;->setUncompressedSize(J)V

    :cond_3
    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;->getCompressedSize()J

    move-result-wide v2

    cmp-long v1, v2, v10

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;->getCompressedSize()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/manalua/zip/zip4j/model/FileHeader;->setCompressedSize(J)V

    :cond_4
    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v2

    cmp-long v1, v2, v10

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/manalua/zip/zip4j/model/FileHeader;->setOffsetLocalHeader(J)V

    :cond_5
    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;->getDiskNumberStart()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;->getDiskNumberStart()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/manalua/zip/zip4j/model/FileHeader;->setDiskNumberStart(I)V

    goto :goto_0
.end method

.method private readAndSaveZip64ExtendedInfo(Lorg/manalua/zip/zip4j/model/LocalFileHeader;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const-wide/16 v6, -0x1

    if-nez p1, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "file header is null in reading Zip64 Extended Info"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->getUncompressedSize()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->getCompressedSize()J

    move-result-wide v4

    const/4 v8, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readZip64ExtendedInfo(Ljava/util/ArrayList;JJJI)Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setZip64ExtendedInfo(Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;)V

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;->getUnCompressedSize()J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;->getUnCompressedSize()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setUncompressedSize(J)V

    :cond_3
    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;->getCompressedSize()J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;->getCompressedSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setCompressedSize(J)V

    goto :goto_0
.end method

.method private readCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "random access file was null"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "EndCentralRecord was null, maybe a corrupt zip file"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    new-instance v4, Lorg/manalua/zip/zip4j/model/CentralDirectory;

    invoke-direct {v4}, Lorg/manalua/zip/zip4j/model/CentralDirectory;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->getOffsetOfStartOfCentralDir()J

    move-result-wide v2

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->getTotNoOfEntriesInCentralDir()I

    move-result v0

    iget-object v1, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;->getOffsetStartCenDirWRTStartDiskNo()J

    move-result-wide v2

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;->getTotNoOfEntriesInCentralDir()J

    move-result-wide v0

    long-to-int v0, v0

    move v14, v0

    move-wide v0, v2

    move v2, v14

    :goto_0
    iget-object v3, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v0, 0x4

    new-array v3, v0, [B

    const/4 v0, 0x2

    new-array v6, v0, [B

    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-lt v1, v2, :cond_3

    invoke-virtual {v4, v5}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->setFileHeaders(Ljava/util/ArrayList;)V

    new-instance v0, Lorg/manalua/zip/zip4j/model/DigitalSignature;

    invoke-direct {v0}, Lorg/manalua/zip/zip4j/model/DigitalSignature;-><init>()V

    iget-object v1, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v1, v3}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v1, 0x0

    invoke-static {v3, v1}, Lorg/manalua/zip/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v1

    int-to-long v2, v1

    const-wide/32 v8, 0x5054b50

    cmp-long v2, v2, v8

    if-eqz v2, :cond_e

    :cond_2
    :goto_2
    return-object v4

    :cond_3
    new-instance v7, Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-direct {v7}, Lorg/manalua/zip/zip4j/model/FileHeader;-><init>()V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v0, v3}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v0, 0x0

    invoke-static {v3, v0}, Lorg/manalua/zip/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v0

    int-to-long v8, v0

    const-wide/32 v10, 0x2014b50    # 1.6619997E-316

    cmp-long v8, v8, v10

    if-eqz v8, :cond_4

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Expected central directory entry not found (#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    :try_start_1
    invoke-virtual {v7, v0}, Lorg/manalua/zip/zip4j/model/FileHeader;->setSignature(I)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v0, v6}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v0, 0x0

    invoke-static {v6, v0}, Lorg/manalua/zip/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v0

    invoke-virtual {v7, v0}, Lorg/manalua/zip/zip4j/model/FileHeader;->setVersionMadeBy(I)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v0, v6}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v0, 0x0

    invoke-static {v6, v0}, Lorg/manalua/zip/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v0

    invoke-virtual {v7, v0}, Lorg/manalua/zip/zip4j/model/FileHeader;->setVersionNeededToExtract(I)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v0, v6}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v0, 0x0

    invoke-static {v6, v0}, Lorg/manalua/zip/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v7, v0}, Lorg/manalua/zip/zip4j/model/FileHeader;->setFileNameUTF8Encoded(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x0

    aget-byte v8, v6, v0

    and-int/lit8 v0, v8, 0x1

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {v7, v0}, Lorg/manalua/zip/zip4j/model/FileHeader;->setEncrypted(Z)V

    :cond_5
    invoke-virtual {v6}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v7, v0}, Lorg/manalua/zip/zip4j/model/FileHeader;->setGeneralPurposeFlag([B)V

    shr-int/lit8 v0, v8, 0x3

    const/4 v8, 0x1

    if-ne v0, v8, :cond_7

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {v7, v0}, Lorg/manalua/zip/zip4j/model/FileHeader;->setDataDescriptorExists(Z)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v0, v6}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v0, 0x0

    invoke-static {v6, v0}, Lorg/manalua/zip/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v0

    invoke-virtual {v7, v0}, Lorg/manalua/zip/zip4j/model/FileHeader;->setCompressionMethod(I)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v0, v3}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v0, 0x0

    invoke-static {v3, v0}, Lorg/manalua/zip/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v0

    invoke-virtual {v7, v0}, Lorg/manalua/zip/zip4j/model/FileHeader;->setLastModFileTime(I)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v0, v3}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v0, 0x0

    invoke-static {v3, v0}, Lorg/manalua/zip/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v0

    int-to-long v8, v0

    invoke-virtual {v7, v8, v9}, Lorg/manalua/zip/zip4j/model/FileHeader;->setCrc32(J)V

    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v7, v0}, Lorg/manalua/zip/zip4j/model/FileHeader;->setCrcBuff([B)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v0, v3}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    invoke-direct {p0, v3}, Lorg/manalua/zip/zip4j/core/HeaderReader;->getLongByteFromIntByte([B)[B

    move-result-object v0

    const/4 v8, 0x0

    invoke-static {v0, v8}, Lorg/manalua/zip/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lorg/manalua/zip/zip4j/model/FileHeader;->setCompressedSize(J)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v0, v3}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    invoke-direct {p0, v3}, Lorg/manalua/zip/zip4j/core/HeaderReader;->getLongByteFromIntByte([B)[B

    move-result-object v0

    const/4 v8, 0x0

    invoke-static {v0, v8}, Lorg/manalua/zip/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lorg/manalua/zip/zip4j/model/FileHeader;->setUncompressedSize(J)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v0, v6}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v0, 0x0

    invoke-static {v6, v0}, Lorg/manalua/zip/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/manalua/zip/zip4j/model/FileHeader;->setFileNameLength(I)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v0, v6}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v0, 0x0

    invoke-static {v6, v0}, Lorg/manalua/zip/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v0

    invoke-virtual {v7, v0}, Lorg/manalua/zip/zip4j/model/FileHeader;->setExtraFieldLength(I)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v0, v6}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v0, 0x0

    invoke-static {v6, v0}, Lorg/manalua/zip/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v9

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v0}, Lorg/manalua/zip/zip4j/model/FileHeader;->setFileComment(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v0, v6}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v0, 0x0

    invoke-static {v6, v0}, Lorg/manalua/zip/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v0

    invoke-virtual {v7, v0}, Lorg/manalua/zip/zip4j/model/FileHeader;->setDiskNumberStart(I)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v0, v6}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    invoke-virtual {v6}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v7, v0}, Lorg/manalua/zip/zip4j/model/FileHeader;->setInternalFileAttr([B)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v0, v3}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v7, v0}, Lorg/manalua/zip/zip4j/model/FileHeader;->setExternalFileAttr([B)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v0, v3}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    invoke-direct {p0, v3}, Lorg/manalua/zip/zip4j/core/HeaderReader;->getLongByteFromIntByte([B)[B

    move-result-object v0

    const/4 v10, 0x0

    invoke-static {v0, v10}, Lorg/manalua/zip/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    invoke-virtual {v7, v10, v11}, Lorg/manalua/zip/zip4j/model/FileHeader;->setOffsetLocalHeader(J)V

    if-lez v8, :cond_d

    new-array v8, v8, [B

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v0, v8}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getFileNameCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/String;

    iget-object v10, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v10}, Lorg/manalua/zip/zip4j/model/ZipModel;->getFileNameCharset()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v8, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_5
    if-nez v0, :cond_9

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "fileName is null when reading central directory"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_4

    :cond_8
    invoke-virtual {v7}, Lorg/manalua/zip/zip4j/model/FileHeader;->isFileNameUTF8Encoded()Z

    move-result v0

    invoke-static {v8, v0}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->decodeFileName([BZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_9
    new-instance v8, Ljava/lang/StringBuffer;

    const-string v10, ":"

    invoke-direct {v8, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v10, "file.separator"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_a

    new-instance v8, Ljava/lang/StringBuffer;

    const-string v10, ":"

    invoke-direct {v8, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v10, "file.separator"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_a
    invoke-virtual {v7, v0}, Lorg/manalua/zip/zip4j/model/FileHeader;->setFileName(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c

    const-string v8, "\\"

    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {v7, v0}, Lorg/manalua/zip/zip4j/model/FileHeader;->setDirectory(Z)V

    :goto_7
    invoke-direct {p0, v7}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readAndSaveExtraDataRecord(Lorg/manalua/zip/zip4j/model/FileHeader;)V

    invoke-direct {p0, v7}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readAndSaveZip64ExtendedInfo(Lorg/manalua/zip/zip4j/model/FileHeader;)V

    invoke-direct {p0, v7}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readAndSaveAESExtraDataRecord(Lorg/manalua/zip/zip4j/model/FileHeader;)V

    if-lez v9, :cond_b

    new-array v0, v9, [B

    iget-object v8, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v8, v0}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v8}, Lorg/manalua/zip/zip4j/model/FileHeader;->setFileComment(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_c
    const/4 v0, 0x1

    goto :goto_6

    :cond_d
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lorg/manalua/zip/zip4j/model/FileHeader;->setFileName(Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/DigitalSignature;->setHeaderSignature(I)V

    iget-object v1, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v1, v6}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v1, 0x0

    invoke-static {v6, v1}, Lorg/manalua/zip/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/DigitalSignature;->setSizeOfData(I)V

    if-lez v1, :cond_2

    new-array v1, v1, [B

    iget-object v2, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v2, v1}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Lorg/manalua/zip/zip4j/model/DigitalSignature;->setSignatureData(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :cond_f
    move v14, v0

    move-wide v0, v2

    move v2, v14

    goto/16 :goto_0
.end method

.method private readEndOfCentralDirectoryRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const-wide/32 v10, 0x6054b50

    const/4 v8, 0x4

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "random access file was null"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    const/4 v0, 0x4

    :try_start_0
    new-array v3, v0, [B

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v4, 0x16

    sub-long/2addr v0, v4

    new-instance v4, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    invoke-direct {v4}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;-><init>()V

    :goto_0
    iget-object v5, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v5, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    add-int/lit8 v2, v2, 0x1

    iget-object v5, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-static {v5, v3}, Lorg/manalua/zip/zip4j/util/Raw;->readLeInt(Ljava/io/DataInput;[B)I

    move-result v5

    int-to-long v6, v5

    cmp-long v5, v6, v10

    if-eqz v5, :cond_1

    const/16 v5, 0xbb8

    if-le v2, v5, :cond_5

    :cond_1
    const/4 v0, 0x0

    invoke-static {v3, v0}, Lorg/manalua/zip/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v0, v10

    if-eqz v0, :cond_2

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "zip headers not found. probably not a zip file"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v2, "Probably not a zip file or a corrupted zip file"

    invoke-direct {v1, v2, v0, v8}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    :cond_2
    const/4 v0, 0x4

    :try_start_1
    new-array v0, v0, [B

    const/4 v1, 0x2

    new-array v1, v1, [B

    const-wide/32 v2, 0x6054b50

    invoke-virtual {v4, v2, v3}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->setSignature(J)V

    iget-object v2, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v2, v1}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/manalua/zip/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v2

    invoke-virtual {v4, v2}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->setNoOfThisDisk(I)V

    iget-object v2, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v2, v1}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/manalua/zip/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v2

    invoke-virtual {v4, v2}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->setNoOfThisDiskStartOfCentralDir(I)V

    iget-object v2, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v2, v1}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/manalua/zip/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v2

    invoke-virtual {v4, v2}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->setTotNoOfEntriesInCentralDirOnThisDisk(I)V

    iget-object v2, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v2, v1}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/manalua/zip/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v2

    invoke-virtual {v4, v2}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->setTotNoOfEntriesInCentralDir(I)V

    iget-object v2, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v2, v0}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/manalua/zip/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v2

    invoke-virtual {v4, v2}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->setSizeOfCentralDir(I)V

    iget-object v2, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v2, v0}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    invoke-direct {p0, v0}, Lorg/manalua/zip/zip4j/core/HeaderReader;->getLongByteFromIntByte([B)[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/manalua/zip/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->setOffsetOfStartOfCentralDir(J)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v0, v1}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lorg/manalua/zip/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v0

    invoke-virtual {v4, v0}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->setCommentLength(I)V

    if-lez v0, :cond_3

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v1, v0}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v1}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->setComment(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->setCommentBytes([B)V

    :goto_1
    invoke-virtual {v4}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->getNoOfThisDisk()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/ZipModel;->setSplitArchive(Z)V

    :goto_2
    return-object v4

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->setComment(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/ZipModel;->setSplitArchive(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_5
    const-wide/16 v6, 0x1

    sub-long/2addr v0, v6

    goto/16 :goto_0
.end method

.method private readExtraDataRecords(I)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v1, 0x0

    if-gtz p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-array v2, p1, [B

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-lt v1, p1, :cond_3

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_3
    new-instance v3, Lorg/manalua/zip/zip4j/model/ExtraDataRecord;

    invoke-direct {v3}, Lorg/manalua/zip/zip4j/model/ExtraDataRecord;-><init>()V

    invoke-static {v2, v1}, Lorg/manalua/zip/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lorg/manalua/zip/zip4j/model/ExtraDataRecord;->setHeader(J)V

    add-int/lit8 v4, v1, 0x2

    invoke-static {v2, v4}, Lorg/manalua/zip/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v1

    add-int/lit8 v5, v1, 0x2

    if-le v5, p1, :cond_4

    invoke-static {v2, v4}, Lorg/manalua/zip/zip4j/util/Raw;->readShortBigEndian([BI)S

    move-result v1

    add-int/lit8 v5, v1, 0x2

    if-gt v5, p1, :cond_2

    :cond_4
    invoke-virtual {v3, v1}, Lorg/manalua/zip/zip4j/model/ExtraDataRecord;->setSizeOfData(I)V

    add-int/lit8 v4, v4, 0x2

    if-lez v1, :cond_5

    new-array v5, v1, [B

    const/4 v6, 0x0

    invoke-static {v2, v4, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v3, v5}, Lorg/manalua/zip/zip4j/model/ExtraDataRecord;->setData([B)V

    :cond_5
    add-int/2addr v1, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readIntoBuff(Ljava/io/RandomAccessFile;[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    array-length v1, p2

    invoke-virtual {p1, p2, v0, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-object p2

    :cond_0
    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "unexpected end of file when reading short buff"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v2, "IOException when reading short buff"

    invoke-direct {v1, v2, v0}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readZip64EndCentralDirLocator()Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "invalid file handler when trying to read Zip64EndCentralDirLocator"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;

    invoke-direct {v0}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;-><init>()V

    invoke-direct {p0}, Lorg/manalua/zip/zip4j/core/HeaderReader;->setFilePointerToReadZip64EndCentralDirLoc()V

    const/4 v1, 0x4

    new-array v1, v1, [B

    const/16 v2, 0x8

    new-array v2, v2, [B

    iget-object v3, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v3, v1}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lorg/manalua/zip/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v3

    int-to-long v4, v3

    const-wide/32 v6, 0x7064b50

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    iget-object v4, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/manalua/zip/zip4j/model/ZipModel;->setZip64Format(Z)V

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;->setSignature(J)V

    iget-object v3, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v3, v1}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lorg/manalua/zip/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;->setNoOfDiskStartOfZip64EndOfCentralDirRec(I)V

    iget-object v3, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v3, v2}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/manalua/zip/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;->setOffsetZip64EndOfCentralDirRec(J)V

    iget-object v2, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v2, v1}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/manalua/zip/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;->setTotNumberOfDiscs(I)V

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/ZipModel;->setZip64Format(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readZip64EndCentralDirRec()Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const-wide/16 v10, 0x0

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "invalid zip64 end of central directory locator"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;->getOffsetZip64EndOfCentralDirRec()J

    move-result-wide v0

    cmp-long v2, v0, v10

    if-gez v2, :cond_1

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "invalid offset for start of end of central directory record"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v0, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;

    invoke-direct {v0}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x4

    new-array v2, v2, [B

    const/16 v3, 0x8

    new-array v3, v3, [B

    iget-object v4, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v4, v2}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lorg/manalua/zip/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v4

    int-to-long v6, v4

    const-wide/32 v8, 0x6064b50

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "invalid signature for zip64 end of central directory record"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    int-to-long v4, v4

    :try_start_1
    invoke-virtual {v0, v4, v5}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;->setSignature(J)V

    iget-object v4, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v4, v3}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/manalua/zip/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;->setSizeOfZip64EndCentralDirRec(J)V

    iget-object v4, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v4, v1}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lorg/manalua/zip/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;->setVersionMadeBy(I)V

    iget-object v4, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v4, v1}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lorg/manalua/zip/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;->setVersionNeededToExtract(I)V

    iget-object v1, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v1, v2}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lorg/manalua/zip/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;->setNoOfThisDisk(I)V

    iget-object v1, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v1, v2}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lorg/manalua/zip/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;->setNoOfThisDiskStartOfCentralDir(I)V

    iget-object v1, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v1, v3}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v1, 0x0

    invoke-static {v3, v1}, Lorg/manalua/zip/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;->setTotNoOfEntriesInCentralDirOnThisDisk(J)V

    iget-object v1, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v1, v3}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v1, 0x0

    invoke-static {v3, v1}, Lorg/manalua/zip/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;->setTotNoOfEntriesInCentralDir(J)V

    iget-object v1, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v1, v3}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v1, 0x0

    invoke-static {v3, v1}, Lorg/manalua/zip/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;->setSizeOfCentralDir(J)V

    iget-object v1, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v1, v3}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v1, 0x0

    invoke-static {v3, v1}, Lorg/manalua/zip/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;->setOffsetStartCenDirWRTStartDiskNo(J)V

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;->getSizeOfZip64EndCentralDirRec()J

    move-result-wide v2

    const-wide/16 v4, 0x2c

    sub-long/2addr v2, v4

    cmp-long v1, v2, v10

    if-lez v1, :cond_3

    long-to-int v1, v2

    new-array v1, v1, [B

    iget-object v2, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v2, v1}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;->setExtensibleDataSector([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    return-object v0
.end method

.method private readZip64ExtendedInfo(Ljava/util/ArrayList;JJJI)Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/manalua/zip/zip4j/model/ExtraDataRecord;

    if-nez v0, :cond_3

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ExtraDataRecord;->getHeader()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    new-instance v1, Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;

    invoke-direct {v1}, Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;-><init>()V

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ExtraDataRecord;->getData()[B

    move-result-object v4

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v2

    if-lez v2, :cond_0

    const/16 v2, 0x8

    new-array v5, v2, [B

    const/4 v2, 0x4

    new-array v6, v2, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/32 v8, 0xffff

    and-long v8, v8, p2

    const-wide/32 v10, 0xffff

    cmp-long v7, v8, v10

    if-nez v7, :cond_4

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v7

    if-gez v7, :cond_4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v7, 0x8

    invoke-static {v4, v2, v5, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x0

    invoke-static {v5, v2}, Lorg/manalua/zip/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;->setUnCompressedSize(J)V

    const/16 v2, 0x8

    const/4 v3, 0x1

    :cond_4
    const-wide/32 v8, 0xffff

    and-long v8, v8, p4

    const-wide/32 v10, 0xffff

    cmp-long v7, v8, v10

    if-nez v7, :cond_5

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v7

    if-ge v2, v7, :cond_5

    const/4 v3, 0x0

    const/16 v7, 0x8

    invoke-static {v4, v2, v5, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    invoke-static {v5, v3}, Lorg/manalua/zip/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;->setCompressedSize(J)V

    add-int/lit8 v2, v2, 0x8

    const/4 v3, 0x1

    :cond_5
    const-wide/32 v8, 0xffff

    and-long v8, v8, p6

    const-wide/32 v10, 0xffff

    cmp-long v7, v8, v10

    if-nez v7, :cond_7

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v7

    if-ge v2, v7, :cond_7

    const/4 v3, 0x0

    const/16 v7, 0x8

    invoke-static {v4, v2, v5, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    invoke-static {v5, v3}, Lorg/manalua/zip/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;->setOffsetLocalHeader(J)V

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x8

    move v12, v2

    move v2, v3

    move v3, v12

    :goto_2
    const v5, 0xffff

    and-int v5, v5, p8

    const v7, 0xffff

    if-ne v5, v7, :cond_6

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v0

    if-ge v3, v0, :cond_6

    const/4 v0, 0x0

    const/4 v2, 0x4

    invoke-static {v4, v3, v6, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    invoke-static {v6, v0}, Lorg/manalua/zip/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;->setDiskNumberStart(I)V

    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_0

    move-object v0, v1

    goto/16 :goto_1

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    move v12, v2

    move v2, v3

    move v3, v12

    goto :goto_2
.end method

.method private setFilePointerToReadZip64EndCentralDirLoc()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const-wide/16 v8, 0x4

    const/4 v0, 0x4

    :try_start_0
    new-array v2, v0, [B

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v4, 0x16

    sub-long/2addr v0, v4

    :goto_0
    iget-object v3, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v3, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-static {v3, v2}, Lorg/manalua/zip/zip4j/util/Raw;->readLeInt(Ljava/io/DataInput;[B)I

    move-result v3

    int-to-long v4, v3

    const-wide/32 v6, 0x6054b50

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    sub-long/2addr v2, v8

    sub-long/2addr v2, v8

    const-wide/16 v4, 0x8

    sub-long/2addr v2, v4

    sub-long/2addr v2, v8

    sub-long/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    goto :goto_0
.end method


# virtual methods
.method public readAllHeaders()Lorg/manalua/zip/zip4j/model/ZipModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readAllHeaders(Ljava/lang/String;)Lorg/manalua/zip/zip4j/model/ZipModel;

    move-result-object v0

    return-object v0
.end method

.method public readAllHeaders(Ljava/lang/String;)Lorg/manalua/zip/zip4j/model/ZipModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    new-instance v0, Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-direct {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;-><init>()V

    iput-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0, p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->setFileNameCharset(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-direct {p0}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readEndOfCentralDirectoryRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/ZipModel;->setEndCentralDirRecord(Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-direct {p0}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readZip64EndCentralDirLocator()Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/ZipModel;->setZip64EndCentralDirLocator(Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-direct {p0}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readZip64EndCentralDirRec()Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/ZipModel;->setZip64EndCentralDirRecord(Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;->getNoOfThisDisk()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/ZipModel;->setSplitArchive(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-direct {p0}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/ZipModel;->setCentralDirectory(Lorg/manalua/zip/zip4j/model/CentralDirectory;)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/ZipModel;->setSplitArchive(Z)V

    goto :goto_0
.end method

.method public readLocalFileHeader(Lorg/manalua/zip/zip4j/model/FileHeader;)Lorg/manalua/zip/zip4j/model/LocalFileHeader;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "invalid read parameters for local header"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_10

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v0

    move-wide v2, v0

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_2

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "invalid local header offset"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v1, Lorg/manalua/zip/zip4j/model/LocalFileHeader;

    invoke-direct {v1}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;-><init>()V

    const/4 v0, 0x2

    new-array v4, v0, [B

    const/4 v0, 0x4

    new-array v5, v0, [B

    const/16 v0, 0x8

    new-array v0, v0, [B

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v0, v5}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v0, 0x0

    invoke-static {v5, v0}, Lorg/manalua/zip/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v0

    int-to-long v6, v0

    const-wide/32 v8, 0x4034b50

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "invalid local header signature for file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    :try_start_1
    invoke-virtual {v1, v0}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setSignature(I)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v0, v4}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v0, 0x0

    invoke-static {v4, v0}, Lorg/manalua/zip/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setVersionNeededToExtract(I)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v0, v4}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v0, 0x0

    invoke-static {v4, v0}, Lorg/manalua/zip/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setFileNameUTF8Encoded(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x0

    aget-byte v6, v4, v0

    and-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {v1, v0}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setEncrypted(Z)V

    :cond_4
    invoke-virtual {v1, v4}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setGeneralPurposeFlag([B)V

    invoke-static {v6}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    if-lt v7, v8, :cond_5

    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v7, 0x31

    if-ne v0, v7, :cond_7

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, v0}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setDataDescriptorExists(Z)V

    :cond_5
    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v0, v4}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v0, 0x0

    invoke-static {v4, v0}, Lorg/manalua/zip/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setCompressionMethod(I)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v0, v5}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v0, 0x0

    invoke-static {v5, v0}, Lorg/manalua/zip/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setLastModFileTime(I)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v0, v5}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v0, 0x0

    invoke-static {v5, v0}, Lorg/manalua/zip/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v0

    int-to-long v8, v0

    invoke-virtual {v1, v8, v9}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setCrc32(J)V

    invoke-virtual {v5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v1, v0}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setCrcBuff([B)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v0, v5}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    invoke-direct {p0, v5}, Lorg/manalua/zip/zip4j/core/HeaderReader;->getLongByteFromIntByte([B)[B

    move-result-object v0

    const/4 v7, 0x0

    invoke-static {v0, v7}, Lorg/manalua/zip/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setCompressedSize(J)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v0, v5}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    invoke-direct {p0, v5}, Lorg/manalua/zip/zip4j/core/HeaderReader;->getLongByteFromIntByte([B)[B

    move-result-object v0

    const/4 v5, 0x0

    invoke-static {v0, v5}, Lorg/manalua/zip/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setUncompressedSize(J)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v0, v4}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v0, 0x0

    invoke-static {v4, v0}, Lorg/manalua/zip/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v5

    invoke-virtual {v1, v5}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setFileNameLength(I)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v0, v4}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v0, 0x0

    invoke-static {v4, v0}, Lorg/manalua/zip/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setExtraFieldLength(I)V

    const/16 v0, 0x1e

    if-lez v5, :cond_e

    new-array v0, v5, [B

    iget-object v7, p0, Lorg/manalua/zip/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v7, v0}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->isFileNameUTF8Encoded()Z

    move-result v7

    invoke-static {v0, v7}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->decodeFileName([BZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "file name is null, cannot assign file name to local file header"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_8
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, ":"

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v8, "file.separator"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_9

    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, ":"

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v8, "file.separator"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_9
    invoke-virtual {v1, v0}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setFileName(Ljava/lang/String;)V

    add-int/lit8 v0, v5, 0x1e

    :goto_3
    invoke-direct {p0, v1}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readAndSaveExtraDataRecord(Lorg/manalua/zip/zip4j/model/LocalFileHeader;)V

    add-int/2addr v0, v4

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setOffsetStartOfData(J)V

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/FileHeader;->getPassword()[C

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setPassword([C)V

    invoke-direct {p0, v1}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readAndSaveZip64ExtendedInfo(Lorg/manalua/zip/zip4j/model/LocalFileHeader;)V

    invoke-direct {p0, v1}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readAndSaveAESExtraDataRecord(Lorg/manalua/zip/zip4j/model/LocalFileHeader;)V

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->getEncryptionMethod()I

    move-result v0

    const/16 v2, 0x63

    if-eq v0, v2, :cond_a

    and-int/lit8 v0, v6, 0x40

    const/16 v2, 0x40

    if-ne v0, v2, :cond_f

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setEncryptionMethod(I)V

    :cond_a
    :goto_4
    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->getCrc32()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_b

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/FileHeader;->getCrc32()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setCrc32(J)V

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/FileHeader;->getCrcBuff()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setCrcBuff([B)V

    :cond_b
    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->getCompressedSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_c

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setCompressedSize(J)V

    :cond_c
    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->getUncompressedSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_d

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setUncompressedSize(J)V

    :cond_d
    return-object v1

    :cond_e
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setFileName(Ljava/lang/String;)V

    goto :goto_3

    :cond_f
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setEncryptionMethod(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :cond_10
    move-wide v2, v0

    goto/16 :goto_0
.end method
