.class public Lorg/manalua/zip/zip4j/core/HeaderWriter;
.super Ljava/lang/Object;


# instance fields
.field private final ZIP64_EXTRA_BUF:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    iput v0, p0, Lorg/manalua/zip/zip4j/core/HeaderWriter;->ZIP64_EXTRA_BUF:I

    return-void
.end method

.method private byteArrayListToByteArray(Ljava/util/List;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "input byte array list is null, cannot conver to byte array"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [B

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private copyByteArrayToArrayList([BLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "one of the input parameters is null, cannot copy byte array to array list"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_2

    return-void

    :cond_2
    aget-byte v1, p1, v0

    invoke-static {v1}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private countNumberOfFileHeaderEntriesOnDisk(Ljava/util/ArrayList;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "file headers are null, cannot calculate number of entries on this disk"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v1, v0

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v0

    if-ne v0, p2, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private processHeaderData(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    instance-of v3, p2, Lorg/manalua/zip/zip4j/io/SplitOutputStream;

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v3

    move-object v0, p2

    check-cast v0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;

    move-object v2, v0

    invoke-virtual {v2}, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->getFilePointer()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->setOffsetOfStartOfCentralDir(J)V

    check-cast p2, Lorg/manalua/zip/zip4j/io/SplitOutputStream;

    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->getCurrSplitFileCounter()I

    move-result v2

    :cond_0
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;

    invoke-direct {v3}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;-><init>()V

    invoke-virtual {p1, v3}, Lorg/manalua/zip/zip4j/model/ZipModel;->setZip64EndCentralDirRecord(Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;)V

    :cond_1
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v3, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;

    invoke-direct {v3}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;-><init>()V

    invoke-virtual {p1, v3}, Lorg/manalua/zip/zip4j/model/ZipModel;->setZip64EndCentralDirLocator(Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;)V

    :cond_2
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;->setNoOfDiskStartOfZip64EndOfCentralDirRec(I)V

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;->setTotNumberOfDiscs(I)V

    :cond_3
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->setNoOfThisDisk(I)V

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->setNoOfThisDiskStartOfCentralDir(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    new-instance v3, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v3, v2}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private updateCompressedSizeInLocalFileHeader(Lorg/manalua/zip/zip4j/io/SplitOutputStream;Lorg/manalua/zip/zip4j/model/LocalFileHeader;JJ[BZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "invalid output stream, cannot update compressed size for local file header"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->isWriteComprSizeInZip64ExtraRecord()Z

    move-result v0

    if-eqz v0, :cond_3

    array-length v0, p7

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "attempting to write a non 8-byte compressed size block for a zip64 file"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    add-long v0, p3, p5

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    :try_start_1
    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->getFileNameLength()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    const-wide/16 v2, 0x16

    cmp-long v2, p5, v2

    if-nez v2, :cond_2

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    :cond_2
    invoke-virtual {p1, v0, v1}, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->seek(J)V

    invoke-virtual {p1, p7}, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->write([B)V

    :goto_0
    return-void

    :cond_3
    add-long v0, p3, p5

    invoke-virtual {p1, v0, v1}, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->seek(J)V

    invoke-virtual {p1, p7}, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private writeCentralDirectory(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "input parameters is null, cannot write central directory"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    move v1, v0

    move v2, v0

    :goto_1
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->writeFileHeader(Lorg/manalua/zip/zip4j/model/ZipModel;Lorg/manalua/zip/zip4j/model/FileHeader;Ljava/io/OutputStream;Ljava/util/List;)I

    move-result v0

    add-int/2addr v1, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method private writeEndOfCentralDirectoryRecord(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/io/OutputStream;IJLjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "zip model or output stream is null, cannot write end of central directory record"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [B

    const/4 v0, 0x4

    new-array v3, v0, [B

    const/16 v0, 0x8

    new-array v4, v0, [B

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v1

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->getSignature()J

    move-result-wide v6

    long-to-int v1, v6

    invoke-static {v3, v0, v1}, Lorg/manalua/zip/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    invoke-direct {p0, v3, p6}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v1

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->getNoOfThisDisk()I

    move-result v1

    int-to-short v1, v1

    invoke-static {v2, v0, v1}, Lorg/manalua/zip/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    invoke-direct {p0, v2, p6}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v1

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->getNoOfThisDiskStartOfCentralDir()I

    move-result v1

    int-to-short v1, v1

    invoke-static {v2, v0, v1}, Lorg/manalua/zip/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    invoke-direct {p0, v2, p6}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "invalid central directory/file headers, cannot write end of central directory record"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    :try_start_1
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v5

    invoke-virtual {v5}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->getNoOfThisDisk()I

    move-result v5

    invoke-direct {p0, v0, v5}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->countNumberOfFileHeaderEntriesOnDisk(Ljava/util/ArrayList;I)I

    move-result v0

    :goto_0
    const/4 v5, 0x0

    int-to-short v0, v0

    invoke-static {v2, v5, v0}, Lorg/manalua/zip/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    invoke-direct {p0, v2, p6}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const/4 v0, 0x0

    int-to-short v1, v1

    invoke-static {v2, v0, v1}, Lorg/manalua/zip/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    invoke-direct {p0, v2, p6}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const/4 v0, 0x0

    invoke-static {v3, v0, p3}, Lorg/manalua/zip/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    invoke-direct {p0, v3, p6}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const-wide v0, 0xffffffffL

    cmp-long v0, p4, v0

    if-lez v0, :cond_7

    const/4 v0, 0x0

    const-wide v6, 0xffffffffL

    invoke-static {v4, v0, v6, v7}, Lorg/manalua/zip/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x4

    invoke-static {v4, v0, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v3, p6}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v1

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->getComment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->getCommentLength()I

    move-result v0

    :cond_4
    const/4 v1, 0x0

    int-to-short v3, v0

    invoke-static {v2, v1, v3}, Lorg/manalua/zip/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    invoke-direct {p0, v2, p6}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    if-lez v0, :cond_5

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->getCommentBytes()[B

    move-result-object v0

    invoke-direct {p0, v0, p6}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    :cond_5
    return-void

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    invoke-static {v4, v0, p4, p5}, Lorg/manalua/zip/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x4

    invoke-static {v4, v0, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v3, p6}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private writeFileHeader(Lorg/manalua/zip/zip4j/model/ZipModel;Lorg/manalua/zip/zip4j/model/FileHeader;Ljava/io/OutputStream;Ljava/util/List;)I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v2, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v3, "input parameters is null, cannot write local file header"

    invoke-direct {v2, v3}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/4 v2, 0x2

    :try_start_0
    new-array v6, v2, [B

    const/4 v2, 0x4

    new-array v2, v2, [B

    const/16 v3, 0x8

    new-array v7, v3, [B

    const/4 v3, 0x2

    new-array v3, v3, [B

    const/4 v4, 0x4

    new-array v8, v4, [B

    const/4 v4, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/manalua/zip/zip4j/model/FileHeader;->getSignature()I

    move-result v5

    invoke-static {v2, v4, v5}, Lorg/manalua/zip/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    move-object/from16 v0, p4

    invoke-direct {p0, v2, v0}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const/4 v4, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/manalua/zip/zip4j/model/FileHeader;->getVersionMadeBy()I

    move-result v5

    int-to-short v5, v5

    invoke-static {v6, v4, v5}, Lorg/manalua/zip/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    move-object/from16 v0, p4

    invoke-direct {p0, v6, v0}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const/4 v4, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/manalua/zip/zip4j/model/FileHeader;->getVersionNeededToExtract()I

    move-result v5

    int-to-short v5, v5

    invoke-static {v6, v4, v5}, Lorg/manalua/zip/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    move-object/from16 v0, p4

    invoke-direct {p0, v6, v0}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    invoke-virtual/range {p2 .. p2}, Lorg/manalua/zip/zip4j/model/FileHeader;->getGeneralPurposeFlag()[B

    move-result-object v4

    move-object/from16 v0, p4

    invoke-direct {p0, v4, v0}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const/4 v4, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/manalua/zip/zip4j/model/FileHeader;->getCompressionMethod()I

    move-result v5

    int-to-short v5, v5

    invoke-static {v6, v4, v5}, Lorg/manalua/zip/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    move-object/from16 v0, p4

    invoke-direct {p0, v6, v0}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const/4 v4, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/manalua/zip/zip4j/model/FileHeader;->getLastModFileTime()I

    move-result v5

    invoke-static {v2, v4, v5}, Lorg/manalua/zip/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    move-object/from16 v0, p4

    invoke-direct {p0, v2, v0}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const/4 v4, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/manalua/zip/zip4j/model/FileHeader;->getCrc32()J

    move-result-wide v10

    long-to-int v5, v10

    invoke-static {v2, v4, v5}, Lorg/manalua/zip/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    move-object/from16 v0, p4

    invoke-direct {p0, v2, v0}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    invoke-virtual/range {p2 .. p2}, Lorg/manalua/zip/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v4

    const-wide v10, 0xffffffffL

    cmp-long v4, v4, v10

    if-gez v4, :cond_2

    invoke-virtual/range {p2 .. p2}, Lorg/manalua/zip/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v4

    const-wide/16 v10, 0x32

    add-long/2addr v4, v10

    const-wide v10, 0xffffffffL

    cmp-long v4, v4, v10

    if-ltz v4, :cond_d

    :cond_2
    const/4 v4, 0x0

    const-wide v10, 0xffffffffL

    invoke-static {v7, v4, v10, v11}, Lorg/manalua/zip/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x4

    invoke-static {v7, v4, v2, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p4

    invoke-direct {p0, v2, v0}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    move-object/from16 v0, p4

    invoke-direct {p0, v2, v0}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const/4 v2, 0x1

    move v5, v2

    :goto_0
    const/4 v2, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/manalua/zip/zip4j/model/FileHeader;->getFileNameLength()I

    move-result v4

    int-to-short v4, v4

    invoke-static {v6, v2, v4}, Lorg/manalua/zip/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    move-object/from16 v0, p4

    invoke-direct {p0, v6, v0}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const/4 v2, 0x4

    new-array v9, v2, [B

    invoke-virtual/range {p2 .. p2}, Lorg/manalua/zip/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v10

    const-wide v12, 0xffffffffL

    cmp-long v2, v10, v12

    if-lez v2, :cond_e

    const/4 v2, 0x0

    const-wide v10, 0xffffffffL

    invoke-static {v7, v2, v10, v11}, Lorg/manalua/zip/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x4

    invoke-static {v7, v2, v9, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x1

    move v4, v2

    :goto_1
    const/4 v2, 0x0

    if-nez v5, :cond_3

    if-eqz v4, :cond_5

    :cond_3
    const/4 v2, 0x4

    if-eqz v5, :cond_4

    const/16 v2, 0x14

    :cond_4
    if-eqz v4, :cond_5

    add-int/lit8 v2, v2, 0x8

    :cond_5
    invoke-virtual/range {p2 .. p2}, Lorg/manalua/zip/zip4j/model/FileHeader;->getAesExtraDataRecord()Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;

    move-result-object v10

    if-eqz v10, :cond_6

    add-int/lit8 v2, v2, 0xb

    :cond_6
    const/4 v10, 0x0

    int-to-short v2, v2

    invoke-static {v6, v10, v2}, Lorg/manalua/zip/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    move-object/from16 v0, p4

    invoke-direct {p0, v6, v0}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    move-object/from16 v0, p4

    invoke-direct {p0, v3, v0}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const/4 v2, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/manalua/zip/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v10

    int-to-short v10, v10

    invoke-static {v6, v2, v10}, Lorg/manalua/zip/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    move-object/from16 v0, p4

    invoke-direct {p0, v6, v0}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    move-object/from16 v0, p4

    invoke-direct {p0, v3, v0}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    invoke-virtual/range {p2 .. p2}, Lorg/manalua/zip/zip4j/model/FileHeader;->getExternalFileAttr()[B

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual/range {p2 .. p2}, Lorg/manalua/zip/zip4j/model/FileHeader;->getExternalFileAttr()[B

    move-result-object v2

    move-object/from16 v0, p4

    invoke-direct {p0, v2, v0}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    :goto_2
    move-object/from16 v0, p4

    invoke-direct {p0, v9, v0}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getFileNameCharset()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual/range {p2 .. p2}, Lorg/manalua/zip/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getFileNameCharset()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v0, p4

    invoke-direct {p0, v2, v0}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    array-length v2, v2

    add-int/lit8 v2, v2, 0x2e

    :goto_3
    if-nez v5, :cond_7

    if-eqz v4, :cond_b

    :cond_7
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lorg/manalua/zip/zip4j/model/ZipModel;->setZip64Format(Z)V

    const/4 v3, 0x0

    const/4 v8, 0x1

    invoke-static {v6, v3, v8}, Lorg/manalua/zip/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    move-object/from16 v0, p4

    invoke-direct {p0, v6, v0}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const/4 v3, 0x0

    if-eqz v5, :cond_8

    const/16 v3, 0x10

    :cond_8
    if-eqz v4, :cond_9

    add-int/lit8 v3, v3, 0x8

    :cond_9
    const/4 v8, 0x0

    int-to-short v3, v3

    invoke-static {v6, v8, v3}, Lorg/manalua/zip/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    move-object/from16 v0, p4

    invoke-direct {p0, v6, v0}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x2

    if-eqz v5, :cond_a

    const/4 v3, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/manalua/zip/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v8

    invoke-static {v7, v3, v8, v9}, Lorg/manalua/zip/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    move-object/from16 v0, p4

    invoke-direct {p0, v7, v0}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const/4 v3, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/manalua/zip/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v8

    invoke-static {v7, v3, v8, v9}, Lorg/manalua/zip/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    move-object/from16 v0, p4

    invoke-direct {p0, v7, v0}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    add-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x8

    :cond_a
    if-eqz v4, :cond_b

    const/4 v3, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/manalua/zip/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v4

    invoke-static {v7, v3, v4, v5}, Lorg/manalua/zip/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    move-object/from16 v0, p4

    invoke-direct {p0, v7, v0}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    add-int/lit8 v2, v2, 0x8

    :cond_b
    invoke-virtual/range {p2 .. p2}, Lorg/manalua/zip/zip4j/model/FileHeader;->getAesExtraDataRecord()Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual/range {p2 .. p2}, Lorg/manalua/zip/zip4j/model/FileHeader;->getAesExtraDataRecord()Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3}, Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;->getSignature()J

    move-result-wide v8

    long-to-int v5, v8

    int-to-short v5, v5

    invoke-static {v6, v4, v5}, Lorg/manalua/zip/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    move-object/from16 v0, p4

    invoke-direct {p0, v6, v0}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const/4 v4, 0x0

    invoke-virtual {v3}, Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;->getDataSize()I

    move-result v5

    int-to-short v5, v5

    invoke-static {v6, v4, v5}, Lorg/manalua/zip/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    move-object/from16 v0, p4

    invoke-direct {p0, v6, v0}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const/4 v4, 0x0

    invoke-virtual {v3}, Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;->getVersionNumber()I

    move-result v5

    int-to-short v5, v5

    invoke-static {v6, v4, v5}, Lorg/manalua/zip/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    move-object/from16 v0, p4

    invoke-direct {p0, v6, v0}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    invoke-virtual {v3}, Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;->getVendorID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object/from16 v0, p4

    invoke-direct {p0, v4, v0}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const/4 v4, 0x1

    new-array v4, v4, [B

    const/4 v5, 0x0

    invoke-virtual {v3}, Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;->getAesStrength()I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    move-object/from16 v0, p4

    invoke-direct {p0, v4, v0}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const/4 v4, 0x0

    invoke-virtual {v3}, Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;->getCompressionMethod()I

    move-result v3

    int-to-short v3, v3

    invoke-static {v6, v4, v3}, Lorg/manalua/zip/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    move-object/from16 v0, p4

    invoke-direct {p0, v6, v0}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    add-int/lit8 v2, v2, 0xb

    :cond_c
    return v2

    :cond_d
    const/4 v4, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/manalua/zip/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v10

    invoke-static {v7, v4, v10, v11}, Lorg/manalua/zip/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x4

    invoke-static {v7, v4, v2, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p4

    invoke-direct {p0, v2, v0}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const/4 v4, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/manalua/zip/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v10

    invoke-static {v7, v4, v10, v11}, Lorg/manalua/zip/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x4

    invoke-static {v7, v4, v2, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p4

    invoke-direct {p0, v2, v0}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_0

    :cond_e
    const/4 v2, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/manalua/zip/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v10

    invoke-static {v7, v2, v10, v11}, Lorg/manalua/zip/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x4

    invoke-static {v7, v2, v9, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v3, v2}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_f
    :try_start_1
    move-object/from16 v0, p4

    invoke-direct {p0, v8, v0}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    goto/16 :goto_2

    :cond_10
    invoke-virtual/range {p2 .. p2}, Lorg/manalua/zip/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->convertCharset(Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v0, p4

    invoke-direct {p0, v2, v0}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    invoke-virtual/range {p2 .. p2}, Lorg/manalua/zip/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->getEncodedStringLength(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    add-int/lit8 v2, v2, 0x2e

    goto/16 :goto_3
.end method

.method private writeZip64EndOfCentralDirectoryLocator(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "zip model or output stream is null, cannot write zip64 end of central directory locator"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [B

    const/16 v1, 0x8

    new-array v1, v1, [B

    const/4 v2, 0x0

    const v3, 0x7064b50

    invoke-static {v0, v2, v3}, Lorg/manalua/zip/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    invoke-direct {p0, v0, p3}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v3

    invoke-virtual {v3}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;->getNoOfDiskStartOfZip64EndOfCentralDirRec()I

    move-result v3

    invoke-static {v0, v2, v3}, Lorg/manalua/zip/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    invoke-direct {p0, v0, p3}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v3

    invoke-virtual {v3}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;->getOffsetZip64EndOfCentralDirRec()J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Lorg/manalua/zip/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    invoke-direct {p0, v1, p3}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v2

    invoke-virtual {v2}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;->getTotNumberOfDiscs()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/manalua/zip/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    invoke-direct {p0, v0, p3}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V
    :try_end_0
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private writeZip64EndOfCentralDirectoryRecord(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/io/OutputStream;IJLjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "zip model or output stream is null, cannot write zip64 end of central directory record"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [B

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v3, 0x4

    new-array v3, v3, [B

    const/16 v4, 0x8

    new-array v4, v4, [B

    const/4 v5, 0x0

    const v6, 0x6064b50

    invoke-static {v3, v5, v6}, Lorg/manalua/zip/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    invoke-direct {p0, v3, p6}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x2c

    invoke-static {v4, v5, v6, v7}, Lorg/manalua/zip/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    invoke-direct {p0, v4, p6}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v5

    invoke-virtual {v5}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v5

    invoke-virtual {v5}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    const/4 v5, 0x0

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/FileHeader;->getVersionMadeBy()I

    move-result v0

    int-to-short v0, v0

    invoke-static {v2, v5, v0}, Lorg/manalua/zip/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    invoke-direct {p0, v2, p6}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const/4 v5, 0x0

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/FileHeader;->getVersionNeededToExtract()I

    move-result v0

    int-to-short v0, v0

    invoke-static {v2, v5, v0}, Lorg/manalua/zip/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    invoke-direct {p0, v2, p6}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v2

    invoke-virtual {v2}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->getNoOfThisDisk()I

    move-result v2

    invoke-static {v3, v0, v2}, Lorg/manalua/zip/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    invoke-direct {p0, v3, p6}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v2

    invoke-virtual {v2}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->getNoOfThisDiskStartOfCentralDir()I

    move-result v2

    invoke-static {v3, v0, v2}, Lorg/manalua/zip/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    invoke-direct {p0, v3, p6}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_2
    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "invalid central directory/file headers, cannot write end of central directory record"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    throw v0

    :cond_3
    :try_start_1
    invoke-direct {p0, v0, p6}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    invoke-direct {p0, v0, p6}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V
    :try_end_1
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    :try_start_2
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v3

    invoke-virtual {v3}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->getNoOfThisDisk()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->countNumberOfFileHeaderEntriesOnDisk(Ljava/util/ArrayList;I)I

    move v0, v1

    :goto_1
    const/4 v1, 0x0

    int-to-long v6, v0

    invoke-static {v4, v1, v6, v7}, Lorg/manalua/zip/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    invoke-direct {p0, v4, p6}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const/4 v0, 0x0

    int-to-long v2, v2

    invoke-static {v4, v0, v2, v3}, Lorg/manalua/zip/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    invoke-direct {p0, v4, p6}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const/4 v0, 0x0

    int-to-long v2, p3

    invoke-static {v4, v0, v2, v3}, Lorg/manalua/zip/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    invoke-direct {p0, v4, p6}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const/4 v0, 0x0

    invoke-static {v4, v0, p4, p5}, Lorg/manalua/zip/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    invoke-direct {p0, v4, p6}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V
    :try_end_2
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method private writeZipHeaderBytes(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/io/OutputStream;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-nez p3, :cond_0

    new-instance v1, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v2, "invalid buff to write as zip headers"

    invoke-direct {v1, v2}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    instance-of v1, p2, Lorg/manalua/zip/zip4j/io/SplitOutputStream;

    if-eqz v1, :cond_1

    move-object v0, p2

    check-cast v0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;

    move-object v1, v0

    array-length v2, p3

    invoke-virtual {v1, v2}, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->checkBuffSizeAndStartNextSplitFile(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->finalizeZipFile(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/io/OutputStream;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v2, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public finalizeZipFile(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/io/OutputStream;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v2, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v3, "input parameters is null, cannot finalize zip file"

    invoke-direct {v2, v3}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->processHeaderData(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v2

    invoke-virtual {v2}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->getOffsetOfStartOfCentralDir()J

    move-result-wide v6

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v8}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->writeCentralDirectory(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/util/List;)I

    move-result v5

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;

    invoke-direct {v2}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;-><init>()V

    invoke-virtual {p1, v2}, Lorg/manalua/zip/zip4j/model/ZipModel;->setZip64EndCentralDirRecord(Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;)V

    :cond_2
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance v2, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;

    invoke-direct {v2}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;-><init>()V

    invoke-virtual {p1, v2}, Lorg/manalua/zip/zip4j/model/ZipModel;->setZip64EndCentralDirLocator(Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;)V

    :cond_3
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v2

    int-to-long v10, v5

    add-long/2addr v10, v6

    invoke-virtual {v2, v10, v11}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;->setOffsetZip64EndOfCentralDirRec(J)V

    instance-of v2, p2, Lorg/manalua/zip/zip4j/io/SplitOutputStream;

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v3

    move-object v0, p2

    check-cast v0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;

    move-object v2, v0

    invoke-virtual {v2}, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->getCurrSplitFileCounter()I

    move-result v2

    invoke-virtual {v3, v2}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;->setNoOfDiskStartOfZip64EndOfCentralDirRec(I)V

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v3

    move-object v0, p2

    check-cast v0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;

    move-object v2, v0

    invoke-virtual {v2}, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->getCurrSplitFileCounter()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;->setTotNumberOfDiscs(I)V

    :goto_0
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v8}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->writeZip64EndOfCentralDirectoryRecord(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/io/OutputStream;IJLjava/util/List;)V

    invoke-direct {p0, p1, p2, v8}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->writeZip64EndOfCentralDirectoryLocator(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/util/List;)V

    :cond_4
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v8}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->writeEndOfCentralDirectoryRecord(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/io/OutputStream;IJLjava/util/List;)V

    invoke-direct {p0, v8}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->byteArrayListToByteArray(Ljava/util/List;)[B

    move-result-object v2

    invoke-direct {p0, p1, p2, v2}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->writeZipHeaderBytes(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/io/OutputStream;[B)V

    return-void

    :cond_5
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;->setNoOfDiskStartOfZip64EndOfCentralDirRec(I)V

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;->setTotNumberOfDiscs(I)V
    :try_end_0
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    throw v2

    :catch_1
    move-exception v2

    new-instance v3, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v3, v2}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public finalizeZipFileWithoutValidations(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/io/OutputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "input parameters is null, cannot finalize zip file without validations"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->getOffsetOfStartOfCentralDir()J

    move-result-wide v4

    invoke-direct {p0, p1, p2, v6}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->writeCentralDirectory(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/util/List;)I

    move-result v3

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;

    invoke-direct {v0}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;-><init>()V

    invoke-virtual {p1, v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->setZip64EndCentralDirRecord(Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;)V

    :cond_2
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;

    invoke-direct {v0}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;-><init>()V

    invoke-virtual {p1, v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->setZip64EndCentralDirLocator(Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;)V

    :cond_3
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v0

    int-to-long v8, v3

    add-long/2addr v8, v4

    invoke-virtual {v0, v8, v9}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;->setOffsetZip64EndOfCentralDirRec(J)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->writeZip64EndOfCentralDirectoryRecord(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/io/OutputStream;IJLjava/util/List;)V

    invoke-direct {p0, p1, p2, v6}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->writeZip64EndOfCentralDirectoryLocator(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/util/List;)V

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->writeEndOfCentralDirectoryRecord(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/io/OutputStream;IJLjava/util/List;)V

    invoke-direct {p0, v6}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->byteArrayListToByteArray(Ljava/util/List;)[B

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->writeZipHeaderBytes(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/io/OutputStream;[B)V
    :try_end_0
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateLocalFileHeader(Lorg/manalua/zip/zip4j/model/LocalFileHeader;JILorg/manalua/zip/zip4j/model/ZipModel;[BILorg/manalua/zip/zip4j/io/SplitOutputStream;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-ltz v2, :cond_0

    if-nez p5, :cond_1

    :cond_0
    new-instance v2, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v3, "invalid input parameters, cannot update local file header"

    invoke-direct {v2, v3}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :try_start_0
    invoke-virtual/range {p8 .. p8}, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->getCurrSplitFileCounter()I

    move-result v2

    move/from16 v0, p7

    if-eq v0, v2, :cond_3

    new-instance v2, Ljava/io/File;

    invoke-virtual/range {p5 .. p5}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->getZipFileNameWithoutExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, "file.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x9

    move/from16 v0, p7

    if-ge v0, v4, :cond_2

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".z0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    add-int/lit8 v3, p7, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v4, Lorg/manalua/zip/zip4j/io/SplitOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v3}, Lorg/manalua/zip/zip4j/io/SplitOutputStream;-><init>(Ljava/io/File;)V

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v4}, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->getFilePointer()J

    move-result-wide v12

    sparse-switch p4, :sswitch_data_0

    :goto_2
    if-eqz v2, :cond_4

    invoke-virtual {v4}, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->close()V

    :goto_3
    return-void

    :cond_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".z"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    add-int/lit8 v3, p7, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    move-object/from16 v4, p8

    goto :goto_1

    :sswitch_0
    move/from16 v0, p4

    int-to-long v6, v0

    add-long v6, v6, p2

    invoke-virtual {v4, v6, v7}, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->seek(J)V

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    new-instance v3, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v3, v2}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :sswitch_1
    move/from16 v0, p4

    int-to-long v8, v0

    :try_start_1
    invoke-virtual/range {p5 .. p5}, Lorg/manalua/zip/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v11

    move-object v3, p0

    move-object v5, p1

    move-wide/from16 v6, p2

    move-object/from16 v10, p6

    invoke-direct/range {v3 .. v11}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->updateCompressedSizeInLocalFileHeader(Lorg/manalua/zip/zip4j/io/SplitOutputStream;Lorg/manalua/zip/zip4j/model/LocalFileHeader;JJ[BZ)V

    goto :goto_2

    :cond_4
    move-object/from16 v0, p8

    invoke-virtual {v0, v12, v13}, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->seek(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_0
        0x12 -> :sswitch_1
        0x16 -> :sswitch_1
    .end sparse-switch
.end method

.method public writeExtendedLocalHeader(Lorg/manalua/zip/zip4j/model/LocalFileHeader;Ljava/io/OutputStream;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/32 v2, 0x7fffffff

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "input parameters is null, cannot write extended local header"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x4

    new-array v5, v0, [B

    const v0, 0x8074b50

    invoke-static {v5, v7, v0}, Lorg/manalua/zip/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    invoke-direct {p0, v5, v4}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->getCrc32()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v5, v7, v0}, Lorg/manalua/zip/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    invoke-direct {p0, v5, v4}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->getCompressedSize()J

    move-result-wide v0

    cmp-long v6, v0, v2

    if-ltz v6, :cond_2

    move-wide v0, v2

    :cond_2
    long-to-int v0, v0

    invoke-static {v5, v7, v0}, Lorg/manalua/zip/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    invoke-direct {p0, v5, v4}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->getUncompressedSize()J

    move-result-wide v0

    cmp-long v6, v0, v2

    if-ltz v6, :cond_3

    :goto_0
    long-to-int v0, v2

    invoke-static {v5, v7, v0}, Lorg/manalua/zip/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    invoke-direct {p0, v5, v4}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    invoke-direct {p0, v4}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->byteArrayListToByteArray(Ljava/util/List;)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    array-length v0, v0

    return v0

    :cond_3
    move-wide v2, v0

    goto :goto_0
.end method

.method public writeLocalFileHeader(Lorg/manalua/zip/zip4j/model/ZipModel;Lorg/manalua/zip/zip4j/model/LocalFileHeader;Ljava/io/OutputStream;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "input parameters are null, cannot write local file header"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x2

    new-array v3, v0, [B

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/16 v1, 0x8

    new-array v4, v1, [B

    const/16 v1, 0x8

    new-array v5, v1, [B

    const/4 v1, 0x0

    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->getSignature()I

    move-result v6

    invoke-static {v0, v1, v6}, Lorg/manalua/zip/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    invoke-direct {p0, v0, v2}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const/4 v1, 0x0

    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->getVersionNeededToExtract()I

    move-result v6

    int-to-short v6, v6

    invoke-static {v3, v1, v6}, Lorg/manalua/zip/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    invoke-direct {p0, v3, v2}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->getGeneralPurposeFlag()[B

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const/4 v1, 0x0

    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->getCompressionMethod()I

    move-result v6

    int-to-short v6, v6

    invoke-static {v3, v1, v6}, Lorg/manalua/zip/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    invoke-direct {p0, v3, v2}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const/4 v1, 0x0

    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->getLastModFileTime()I

    move-result v6

    invoke-static {v0, v1, v6}, Lorg/manalua/zip/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    invoke-direct {p0, v0, v2}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const/4 v1, 0x0

    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->getCrc32()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-static {v0, v1, v6}, Lorg/manalua/zip/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    invoke-direct {p0, v0, v2}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->getUncompressedSize()J

    move-result-wide v6

    const-wide/16 v8, 0x32

    add-long/2addr v6, v8

    const-wide v8, 0xffffffffL

    cmp-long v1, v6, v8

    if-ltz v1, :cond_5

    const/4 v1, 0x0

    const-wide v6, 0xffffffffL

    invoke-static {v4, v1, v6, v7}, Lorg/manalua/zip/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-static {v4, v1, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v0, v2}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    invoke-direct {p0, v0, v2}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->setZip64Format(Z)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setWriteComprSizeInZip64ExtraRecord(Z)V

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->getFileNameLength()I

    move-result v6

    int-to-short v6, v6

    invoke-static {v3, v0, v6}, Lorg/manalua/zip/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    invoke-direct {p0, v3, v2}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    const/16 v0, 0x14

    :cond_1
    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->getAesExtraDataRecord()Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;

    move-result-object v6

    if-eqz v6, :cond_2

    add-int/lit8 v0, v0, 0xb

    :cond_2
    const/4 v6, 0x0

    int-to-short v0, v0

    invoke-static {v3, v6, v0}, Lorg/manalua/zip/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    invoke-direct {p0, v3, v2}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getFileNameCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getFileNameCharset()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    :goto_1
    if-eqz v1, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v3, v0, v1}, Lorg/manalua/zip/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    invoke-direct {p0, v3, v2}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-static {v3, v0, v1}, Lorg/manalua/zip/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    invoke-direct {p0, v3, v2}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const/4 v0, 0x0

    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->getUncompressedSize()J

    move-result-wide v6

    invoke-static {v4, v0, v6, v7}, Lorg/manalua/zip/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    invoke-direct {p0, v4, v2}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    invoke-direct {p0, v5, v2}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    :cond_3
    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->getAesExtraDataRecord()Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->getAesExtraDataRecord()Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;->getSignature()J

    move-result-wide v4

    long-to-int v4, v4

    int-to-short v4, v4

    invoke-static {v3, v1, v4}, Lorg/manalua/zip/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    invoke-direct {p0, v3, v2}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;->getDataSize()I

    move-result v4

    int-to-short v4, v4

    invoke-static {v3, v1, v4}, Lorg/manalua/zip/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    invoke-direct {p0, v3, v2}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;->getVersionNumber()I

    move-result v4

    int-to-short v4, v4

    invoke-static {v3, v1, v4}, Lorg/manalua/zip/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    invoke-direct {p0, v3, v2}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;->getVendorID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v4, 0x0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;->getAesStrength()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    invoke-direct {p0, v1, v2}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;->getCompressionMethod()I

    move-result v0

    int-to-short v0, v0

    invoke-static {v3, v1, v0}, Lorg/manalua/zip/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    invoke-direct {p0, v3, v2}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    :cond_4
    invoke-direct {p0, v2}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->byteArrayListToByteArray(Ljava/util/List;)[B

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/OutputStream;->write([B)V

    array-length v0, v0

    return v0

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->getCompressedSize()J

    move-result-wide v6

    invoke-static {v4, v1, v6, v7}, Lorg/manalua/zip/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-static {v4, v1, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v0, v2}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const/4 v1, 0x0

    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->getUncompressedSize()J

    move-result-wide v6

    invoke-static {v4, v1, v6, v7}, Lorg/manalua/zip/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-static {v4, v1, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v0, v2}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->setWriteComprSizeInZip64ExtraRecord(Z)V
    :try_end_0
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    throw v0

    :cond_6
    :try_start_1
    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/LocalFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->convertCharset(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V
    :try_end_1
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
