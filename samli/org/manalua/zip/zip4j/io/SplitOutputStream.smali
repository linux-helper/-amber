.class public Lorg/manalua/zip/zip4j/io/SplitOutputStream;
.super Ljava/io/OutputStream;


# instance fields
.field private bytesWrittenForThisPart:J

.field private currSplitFileCounter:I

.field private outFile:Ljava/io/File;

.field private raf:Ljava/io/RandomAccessFile;

.field private splitLength:J

.field private zipFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/manalua/zip/zip4j/io/SplitOutputStream;-><init>(Ljava/io/File;J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    cmp-long v0, p2, v2

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x10000

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "split length less than minimum allowed split length of 65536 Bytes"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    iput-wide p2, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->splitLength:J

    iput-object p1, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->outFile:Ljava/io/File;

    iput-object p1, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->zipFile:Ljava/io/File;

    const/4 v0, 0x0

    iput v0, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->currSplitFileCounter:I

    iput-wide v2, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-static {p1}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, v0}, Lorg/manalua/zip/zip4j/io/SplitOutputStream;-><init>(Ljava/io/File;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-static {p1}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, v0, p2, p3}, Lorg/manalua/zip/zip4j/io/SplitOutputStream;-><init>(Ljava/io/File;J)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHeaderData([B)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1, v0}, Lorg/manalua/zip/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v2

    invoke-static {}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->getAllHeaderSignatures()[J

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v1, v3

    if-lez v1, :cond_0

    move v1, v0

    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_0

    aget-wide v4, v3, v1

    const-wide/32 v6, 0x8074b50

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    aget-wide v4, v3, v1

    int-to-long v6, v2

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private startNextSplitFile()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->outFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->getZipFileNameWithoutExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->zipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->outFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;
    :try_end_0
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    move-object v1, v0

    :goto_0
    :try_start_1
    iget v0, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->currSplitFileCounter:I

    const/16 v4, 0x9

    if-ge v0, v4, :cond_1

    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".z0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->currSplitFileCounter:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "split file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " already exists in the current directory, cannot rename this file"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/exception/ZipException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_2
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->outFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "file.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".z"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->currSplitFileCounter:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->zipFile:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string v1, "cannot rename newly created split file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->zipFile:Ljava/io/File;

    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->zipFile:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    iget v0, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->currSplitFileCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->currSplitFileCounter:I
    :try_end_2
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_2 .. :try_end_2} :catch_0

    return-void
.end method


# virtual methods
.method public checkBuffSizeAndStartNextSplitFile(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-gez p1, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "negative buffersize for checkBuffSizeAndStartNextSplitFile"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->isBuffSizeFitForCurrSplitFile(I)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-direct {p0}, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->startNextSplitFile()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public getCurrSplitFileCounter()I
    .locals 1

    iget v0, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->currSplitFileCounter:I

    return v0
.end method

.method public getFilePointer()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSplitLength()J
    .locals 2

    iget-wide v0, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->splitLength:J

    return-wide v0
.end method

.method public isBuffSizeFitForCurrSplitFile(I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x1

    if-gez p1, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "negative buffersize for isBuffSizeFitForCurrSplitFile"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v2, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->splitLength:J

    const-wide/32 v4, 0x10000

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    iget-wide v2, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J

    int-to-long v4, p1

    add-long/2addr v2, v4

    iget-wide v4, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->splitLength:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSplitZipFile()Z
    .locals 4

    iget-wide v0, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->splitLength:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public seek(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

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

    invoke-virtual {p0, v0, v2, v3}, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->write([BII)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gtz p3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->splitLength:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-wide v0, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->splitLength:J

    const-wide/32 v2, 0x10000

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "split length less than minimum allowed split length of 65536 Bytes"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v0, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J

    iget-wide v2, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->splitLength:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    invoke-direct {p0}, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->startNextSplitFile()V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long v0, p3

    iput-wide v0, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iget-wide v2, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->splitLength:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    invoke-direct {p0, p1}, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->isHeaderData([B)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->startNextSplitFile()V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long v0, p3

    iput-wide v0, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    iget-wide v2, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->splitLength:J

    iget-wide v4, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, p1, p2, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    invoke-direct {p0}, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->startNextSplitFile()V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    iget-wide v2, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->splitLength:J

    iget-wide v4, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v1, p2

    int-to-long v2, p3

    iget-wide v4, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->splitLength:J

    iget-wide v6, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long v0, p3

    iget-wide v2, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->splitLength:J

    iget-wide v4, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-wide v0, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-wide v0, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J

    goto/16 :goto_0
.end method
