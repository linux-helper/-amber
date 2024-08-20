.class public Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static access$0(Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/io/File;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;->initMergeSplitZipFile(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/io/File;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;)V

    return-void
.end method

.method private calculateTotalWorkForMergeOp(Lorg/manalua/zip/zip4j/model/ZipModel;)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v4, 0x0

    const-wide/16 v0, 0x0

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v2

    invoke-virtual {v2}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->getNoOfThisDisk()I

    move-result v5

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v8

    move v3, v4

    :goto_0
    if-le v3, v5, :cond_1

    :cond_0
    return-wide v0

    :cond_1
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v2

    invoke-virtual {v2}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->getNoOfThisDisk()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v2

    :goto_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->getFileLengh(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v6, v0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move-wide v0, v6

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v6, "."

    invoke-virtual {v8, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v8, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v6, ".z"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private calculateTotalWorkForRemoveOp(Lorg/manalua/zip/zip4j/model/ZipModel;Lorg/manalua/zip/zip4j/model/FileHeader;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->getFileLengh(Ljava/io/File;)J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLorg/manalua/zip/zip4j/progress/ProgressMonitor;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v6, 0x3

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v2, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v3, "input or output stream is null, cannot copy file"

    invoke-direct {v2, v3}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    cmp-long v2, p3, v4

    if-gez v2, :cond_2

    new-instance v2, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v3, "starting offset is negative, cannot copy file"

    invoke-direct {v2, v3}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    cmp-long v2, p5, v4

    if-gez v2, :cond_3

    new-instance v2, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v3, "end offset is negative, cannot copy file"

    invoke-direct {v2, v3}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    cmp-long v2, p3, p5

    if-lez v2, :cond_4

    new-instance v2, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v3, "start offset is greater than end offset, cannot copy file"

    invoke-direct {v2, v3}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    cmp-long v2, p3, p5

    if-nez v2, :cond_6

    :cond_5
    :goto_0
    return-void

    :cond_6
    invoke-virtual/range {p7 .. p7}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setResult(I)V

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setState(I)V

    goto :goto_0

    :cond_7
    :try_start_0
    invoke-virtual {p1, p3, p4}, Ljava/io/RandomAccessFile;->seek(J)V

    sub-long v6, p5, p3

    sub-long v2, p5, p3

    const-wide/16 v8, 0x1000

    cmp-long v2, v2, v8

    if-gez v2, :cond_9

    sub-long v2, p5, p3

    long-to-int v2, v2

    new-array v2, v2, [B

    :cond_8
    :goto_1
    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v3

    const/4 v8, -0x1

    if-eq v3, v8, :cond_5

    const/4 v8, 0x0

    invoke-virtual {p2, v2, v8, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v8, v3

    move-object/from16 v0, p7

    invoke-virtual {v0, v8, v9}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->updateWorkCompleted(J)V

    invoke-virtual/range {p7 .. p7}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v2, 0x3

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setResult(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v3, v2}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_9
    const/16 v2, 0x1000

    :try_start_1
    new-array v2, v2, [B

    goto :goto_1

    :cond_a
    int-to-long v8, v3

    add-long/2addr v4, v8

    cmp-long v3, v4, v6

    if-eqz v3, :cond_5

    array-length v3, v2

    int-to-long v8, v3

    add-long/2addr v8, v4

    cmp-long v3, v8, v6

    if-lez v3, :cond_8

    sub-long v2, v6, v4

    long-to-int v2, v2

    new-array v2, v2, [B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    new-instance v3, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v3, v2}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private createFileHandler(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/lang/String;)Ljava/io/RandomAccessFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "input parameter is null in getFilePointer, cannot create file handler to remove file"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/RandomAccessFile;

    invoke-direct {v1, v0, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private createSplitZipFileHandler(Lorg/manalua/zip/zip4j/model/ZipModel;I)Ljava/io/RandomAccessFile;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "zip model is null, cannot create split file handler"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p2, :cond_1

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "invlaid part number, cannot create split file handler"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v1

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->getNoOfThisDisk()I

    move-result v1

    if-ne p2, v1, :cond_2

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v1, Lorg/manalua/zip/zip4j/exception/ZipException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "split file does not exist: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    const/16 v1, 0x9

    if-lt p2, v1, :cond_3

    :try_start_1
    new-instance v1, Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, ".z"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, ".z0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    new-instance v1, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private initMergeSplitZipFile(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/io/File;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v3, "one of the input parameters is null, cannot merge split zip file"

    invoke-direct {v2, v3}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v3, "archive not a split zip file"

    invoke-direct {v2, v3}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    const/4 v5, 0x0

    const/4 v4, 0x0

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v2

    invoke-virtual {v2}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->getNoOfThisDisk()I

    move-result v17

    if-gtz v17, :cond_4

    new-instance v2, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v3, "corrupt zip model, archive not a split zip file"

    invoke-direct {v2, v3}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :catch_0
    move-exception v2

    :try_start_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    new-instance v3, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v3, v2}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    :goto_0
    if-eqz v5, :cond_2

    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    :try_start_3
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_3
    :goto_2
    throw v2

    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;->prepareOutputStreamForMerge(Ljava/io/File;)Ljava/io/OutputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v5

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-wide v12, v6

    move v14, v3

    move v3, v2

    :goto_3
    move/from16 v0, v17

    if-le v14, v0, :cond_7

    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v2}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->setOffsetOfStartOfCentralDir(J)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v1, v3}, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;->updateSplitZipModel(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/util/ArrayList;Z)V

    new-instance v3, Lorg/manalua/zip/zip4j/core/HeaderWriter;

    invoke-direct {v3}, Lorg/manalua/zip/zip4j/core/HeaderWriter;-><init>()V

    invoke-virtual {v3, v2, v5}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->finalizeZipFileWithoutValidations(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/io/OutputStream;)V

    invoke-virtual/range {p3 .. p3}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->endProgressMonitorSuccess()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_5

    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_5
    :goto_4
    if-eqz v4, :cond_6

    :try_start_7
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :cond_6
    :goto_5
    return-void

    :cond_7
    :try_start_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;->createSplitZipFileHandler(Lorg/manalua/zip/zip4j/model/ZipModel;I)Ljava/io/RandomAccessFile;

    move-result-object v4

    new-instance v2, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    invoke-direct {v2, v6, v7}, Ljava/lang/Long;-><init>(J)V

    if-nez v14, :cond_b

    invoke-virtual/range {p1 .. p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-virtual/range {p1 .. p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v6

    invoke-virtual {v6}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-virtual/range {p1 .. p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v6

    invoke-virtual {v6}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_b

    const/4 v6, 0x4

    new-array v6, v6, [B

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v4, v6}, Ljava/io/RandomAccessFile;->read([B)I

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lorg/manalua/zip/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v6

    int-to-long v6, v6

    const-wide/32 v8, 0x8074b50

    cmp-long v6, v6, v8

    if-nez v6, :cond_b

    const/4 v11, 0x1

    const/4 v3, 0x4

    move v15, v3

    :goto_6
    move/from16 v0, v17

    if-ne v14, v0, :cond_8

    new-instance v2, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v3

    invoke-virtual {v3}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->getOffsetOfStartOfCentralDir()J

    move-result-wide v6

    invoke-direct {v2, v6, v7}, Ljava/lang/Long;-><init>(J)V

    :cond_8
    int-to-long v6, v15

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v3, p0

    move-object/from16 v10, p3

    invoke-direct/range {v3 .. v10}, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;->copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLorg/manalua/zip/zip4j/progress/ProgressMonitor;)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    int-to-long v0, v15

    move-wide/from16 v18, v0

    invoke-virtual/range {p3 .. p3}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v2, 0x3

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setResult(I)V

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setState(I)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v5, :cond_9

    :try_start_9
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :cond_9
    :goto_7
    if-eqz v4, :cond_6

    :try_start_a
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_5

    :catch_1
    move-exception v2

    goto/16 :goto_5

    :cond_a
    :try_start_b
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :goto_8
    add-int/lit8 v6, v14, 0x1

    sub-long v2, v8, v18

    add-long/2addr v2, v12

    move-wide v12, v2

    move v14, v6

    move v3, v11

    goto/16 :goto_3

    :catch_2
    move-exception v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_9
    :try_start_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    new-instance v3, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v3, v2}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :catchall_1
    move-exception v2

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_b
    const/4 v6, 0x0

    move v15, v6

    move v11, v3

    goto :goto_6

    :catch_3
    move-exception v3

    goto/16 :goto_1

    :catch_4
    move-exception v3

    goto/16 :goto_2

    :catch_5
    move-exception v2

    goto/16 :goto_4

    :catch_6
    move-exception v2

    goto/16 :goto_5

    :catch_7
    move-exception v2

    goto :goto_7

    :catch_8
    move-exception v2

    goto :goto_8

    :catch_9
    move-exception v2

    goto :goto_9
.end method

.method private prepareOutputStreamForMerge(Ljava/io/File;)Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "outFile is null, cannot create outputstream"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private restoreFileName(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "cannot rename modified zip file"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "cannot delete old zip file"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private updateSplitEndCentralDirectory(Lorg/manalua/zip/zip4j/model/ZipModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "zip model is null - cannot update end of central directory for split zip model"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "corrupt zip model - getCentralDirectory, cannot update split zip model"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    new-instance v1, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->setNoOfThisDisk(I)V

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->setNoOfThisDiskStartOfCentralDir(I)V

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v0

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->setTotNoOfEntriesInCentralDir(I)V

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v0

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->setTotNoOfEntriesInCentralDirOnThisDisk(I)V
    :try_end_2
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void
.end method

.method private updateSplitFileHeader(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/util/ArrayList;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "corrupt zip model - getCentralDirectory, cannot update split zip model"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz p3, :cond_3

    const/4 v0, 0x4

    move v2, v0

    :goto_0
    move v6, v3

    :goto_1
    if-lt v6, v7, :cond_1

    return-void

    :cond_1
    const-wide/16 v0, 0x0

    move-wide v4, v0

    move v1, v3

    :goto_2
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v0

    if-lt v1, v0, :cond_2

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v8

    add-long/2addr v4, v8

    int-to-long v8, v2

    sub-long/2addr v4, v8

    invoke-virtual {v0, v4, v5}, Lorg/manalua/zip/zip4j/model/FileHeader;->setOffsetLocalHeader(J)V

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/manalua/zip/zip4j/model/FileHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/FileHeader;->setDiskNumberStart(I)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v8

    add-long/2addr v4, v8

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v1, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method private updateSplitZip64EndCentralDirLocator(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "zip model is null, cannot update split Zip64 end of central directory locator"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;->setNoOfDiskStartOfZip64EndOfCentralDirRec(I)V

    const-wide/16 v2, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v0

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v1

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;->getOffsetZip64EndOfCentralDirRec()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;->setOffsetZip64EndOfCentralDirRec(J)V

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirLocator;->setTotNumberOfDiscs(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private updateSplitZip64EndCentralDirRec(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "zip model is null, cannot update split Zip64 end of central directory record"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;->setNoOfThisDisk(I)V

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;->setNoOfThisDiskStartOfCentralDir(I)V

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v1

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v2

    invoke-virtual {v2}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->getTotNoOfEntriesInCentralDir()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;->setTotNoOfEntriesInCentralDirOnThisDisk(J)V

    const-wide/16 v2, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v0

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v1

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;->getOffsetStartCenDirWRTStartDiskNo()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;->setOffsetStartCenDirWRTStartDiskNo(J)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private updateSplitZipModel(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/util/ArrayList;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "zip model is null, cannot update split zip model"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->setSplitArchive(Z)V

    invoke-direct {p0, p1, p2, p3}, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;->updateSplitFileHeader(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/util/ArrayList;Z)V

    invoke-direct {p0, p1}, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;->updateSplitEndCentralDirectory(Lorg/manalua/zip/zip4j/model/ZipModel;)V

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;->updateSplitZip64EndCentralDirLocator(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/util/ArrayList;)V

    invoke-direct {p0, p1, p2}, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;->updateSplitZip64EndCentralDirRec(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public initProgressMonitorForMergeOp(Lorg/manalua/zip/zip4j/model/ZipModel;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "zip model is null, cannot calculate total work for merge op"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setCurrentOperation(I)V

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setFileName(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;->calculateTotalWorkForMergeOp(Lorg/manalua/zip/zip4j/model/ZipModel;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setTotalWork(J)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setState(I)V

    return-void
.end method

.method public initProgressMonitorForRemoveOp(Lorg/manalua/zip/zip4j/model/ZipModel;Lorg/manalua/zip/zip4j/model/FileHeader;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "one of the input parameters is null, cannot calculate total work"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p3, v0}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setCurrentOperation(I)V

    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setFileName(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;->calculateTotalWorkForRemoveOp(Lorg/manalua/zip/zip4j/model/ZipModel;Lorg/manalua/zip/zip4j/model/FileHeader;)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setTotalWork(J)V

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setState(I)V

    return-void
.end method

.method public initRemoveZipFile(Lorg/manalua/zip/zip4j/model/ZipModel;Lorg/manalua/zip/zip4j/model/FileHeader;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;)Ljava/util/HashMap;
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v4, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v5, "input parameters is null in maintain zip file, cannot remove file from archive"

    invoke-direct {v4, v5}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    const/16 v21, 0x0

    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-static/range {p1 .. p2}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->getIndexOfFileHeader(Lorg/manalua/zip/zip4j/model/ZipModel;Lorg/manalua/zip/zip4j/model/FileHeader;)I

    move-result v24

    if-gez v24, :cond_4

    new-instance v4, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v5, "file header not found in zip model, cannot remove file"

    invoke-direct {v4, v5}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :catch_0
    move-exception v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v23, 0x0

    move-object v8, v6

    move-object/from16 v6, v23

    :goto_0
    :try_start_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v4

    move/from16 v28, v5

    move-object v5, v6

    move-object v6, v8

    move-object v8, v4

    move/from16 v4, v28

    :goto_1
    if-eqz v6, :cond_2

    :try_start_2
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    :cond_2
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    :cond_3
    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;->restoreFileName(Ljava/io/File;Ljava/lang/String;)V

    :goto_2
    throw v8

    :cond_4
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v5, "This is a split archive. Zip file format does not allow updating split/spanned files"

    invoke-direct {v4, v5}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catch_1
    move-exception v4

    const/16 v21, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v23, 0x0

    move-object v8, v6

    move-object/from16 v6, v23

    :goto_3
    :try_start_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    new-instance v9, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v9, v4}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v4

    move/from16 v28, v5

    move-object v5, v6

    move-object v6, v8

    move-object v8, v4

    move/from16 v4, v28

    goto :goto_1

    :cond_5
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-wide/16 v8, 0x3e8

    rem-long/2addr v4, v8

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_5
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-result-object v5

    :try_start_6
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object/from16 v21, v5

    :goto_4
    :try_start_7
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_7
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move-result v4

    if-nez v4, :cond_6

    :try_start_8
    new-instance v7, Lorg/manalua/zip/zip4j/io/SplitOutputStream;

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v4}, Lorg/manalua/zip/zip4j/io/SplitOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :try_start_9
    new-instance v23, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_9 .. :try_end_9} :catch_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :try_start_a
    const-string v4, "r"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;->createFileHandler(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/lang/String;)Ljava/io/RandomAccessFile;
    :try_end_a
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_a .. :try_end_a} :catch_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    move-result-object v6

    :try_start_b
    new-instance v4, Lorg/manalua/zip/zip4j/core/HeaderReader;

    invoke-direct {v4, v6}, Lorg/manalua/zip/zip4j/core/HeaderReader;-><init>(Ljava/io/RandomAccessFile;)V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readLocalFileHeader(Lorg/manalua/zip/zip4j/model/FileHeader;)Lorg/manalua/zip/zip4j/model/LocalFileHeader;

    move-result-object v4

    if-nez v4, :cond_7

    new-instance v4, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v5, "invalid local file header, cannot remove file from archive"

    invoke-direct {v4, v5}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_b
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catch_2
    move-exception v4

    const/4 v5, 0x0

    move-object v8, v6

    move-object/from16 v6, v23

    goto/16 :goto_0

    :cond_6
    :try_start_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-wide/16 v8, 0x3e8

    rem-long/2addr v4, v8

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_c
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    move-result-object v5

    :try_start_d
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_d .. :try_end_d} :catch_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    move-object/from16 v21, v5

    goto :goto_4

    :catch_3
    move-exception v4

    :try_start_e
    new-instance v5, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v5, v4}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_e
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :catch_4
    move-exception v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v23, 0x0

    move-object v8, v6

    move-object/from16 v6, v23

    goto/16 :goto_3

    :cond_7
    :try_start_f
    invoke-virtual/range {p2 .. p2}, Lorg/manalua/zip/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v18

    invoke-virtual/range {p2 .. p2}, Lorg/manalua/zip/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual/range {p2 .. p2}, Lorg/manalua/zip/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v4

    const-wide/16 v8, -0x1

    cmp-long v4, v4, v8

    if-eqz v4, :cond_8

    invoke-virtual/range {p2 .. p2}, Lorg/manalua/zip/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v18

    :cond_8
    const-wide/16 v8, -0x1

    invoke-virtual/range {p1 .. p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v4

    invoke-virtual {v4}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->getOffsetOfStartOfCentralDir()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual/range {p1 .. p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual/range {p1 .. p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v4

    invoke-virtual {v4}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;->getOffsetStartCenDirWRTStartDiskNo()J

    move-result-wide v10

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v4

    invoke-virtual {v4}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v24

    if-ne v0, v4, :cond_b

    const-wide/16 v4, 0x1

    sub-long v4, v10, v4

    move-wide/from16 v26, v4

    :goto_5
    const-wide/16 v4, 0x0

    cmp-long v4, v18, v4

    if-ltz v4, :cond_a

    const-wide/16 v4, 0x0

    cmp-long v4, v26, v4

    if-gez v4, :cond_c

    :cond_a
    new-instance v4, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v5, "invalid offset for start and end of local file, cannot remove file"

    invoke-direct {v4, v5}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_5
    move-exception v4

    const/4 v5, 0x0

    move-object v8, v6

    move-object/from16 v6, v23

    goto/16 :goto_3

    :cond_b
    add-int/lit8 v4, v24, 0x1

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/manalua/zip/zip4j/model/FileHeader;

    if-eqz v4, :cond_18

    invoke-virtual {v4}, Lorg/manalua/zip/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v8

    const-wide/16 v14, 0x1

    sub-long/2addr v8, v14

    invoke-virtual {v4}, Lorg/manalua/zip/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;

    move-result-object v5

    if-eqz v5, :cond_18

    invoke-virtual {v4}, Lorg/manalua/zip/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;

    move-result-object v5

    invoke-virtual {v5}, Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v14

    const-wide/16 v16, -0x1

    cmp-long v5, v14, v16

    if-eqz v5, :cond_18

    invoke-virtual {v4}, Lorg/manalua/zip/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v4

    const-wide/16 v8, 0x1

    sub-long/2addr v4, v8

    move-wide/from16 v26, v4

    goto :goto_5

    :cond_c
    if-nez v24, :cond_10

    invoke-virtual/range {p1 .. p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v4

    invoke-virtual {v4}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_d

    const-wide/16 v4, 0x1

    add-long v8, v4, v26

    move-object/from16 v5, p0

    move-object/from16 v12, p3

    invoke-direct/range {v5 .. v12}, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;->copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLorg/manalua/zip/zip4j/progress/ProgressMonitor;)V

    :cond_d
    :goto_6
    invoke-virtual/range {p3 .. p3}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v4

    if-eqz v4, :cond_12

    const/4 v4, 0x3

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setResult(I)V

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setState(I)V
    :try_end_f
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    if-eqz v6, :cond_e

    :try_start_10
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    :cond_e
    if-eqz v7, :cond_f

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    :cond_f
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    const/4 v4, 0x0

    :goto_7
    return-object v4

    :cond_10
    :try_start_11
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v24

    if-ne v0, v4, :cond_11

    const-wide/16 v8, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v10, v18

    move-object/from16 v12, p3

    invoke-direct/range {v5 .. v12}, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;->copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLorg/manalua/zip/zip4j/progress/ProgressMonitor;)V

    goto :goto_6

    :catchall_2
    move-exception v4

    const/4 v5, 0x0

    move-object v8, v4

    move v4, v5

    move-object/from16 v5, v23

    goto/16 :goto_1

    :cond_11
    const-wide/16 v16, 0x0

    move-object/from16 v13, p0

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v20, p3

    invoke-direct/range {v13 .. v20}, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;->copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLorg/manalua/zip/zip4j/progress/ProgressMonitor;)V

    const-wide/16 v4, 0x1

    add-long v8, v4, v26

    move-object/from16 v5, p0

    move-object/from16 v12, p3

    invoke-direct/range {v5 .. v12}, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;->copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLorg/manalua/zip/zip4j/progress/ProgressMonitor;)V
    :try_end_11
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto :goto_6

    :catch_6
    move-exception v4

    new-instance v4, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v5, "cannot close input stream or output stream when trying to delete a file from zip file"

    invoke-direct {v4, v5}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_12
    :try_start_12
    invoke-virtual/range {p1 .. p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v5

    move-object v0, v7

    check-cast v0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->getFilePointer()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->setOffsetOfStartOfCentralDir(J)V

    invoke-virtual/range {p1 .. p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v5

    invoke-virtual {v5}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->getTotNoOfEntriesInCentralDir()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->setTotNoOfEntriesInCentralDir(I)V

    invoke-virtual/range {p1 .. p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v5

    invoke-virtual {v5}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->getTotNoOfEntriesInCentralDirOnThisDisk()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->setTotNoOfEntriesInCentralDirOnThisDisk(I)V

    invoke-virtual/range {p1 .. p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v4

    invoke-virtual {v4}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move/from16 v10, v24

    :goto_8
    invoke-virtual/range {p1 .. p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v4

    invoke-virtual {v4}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v10, v4, :cond_15

    new-instance v4, Lorg/manalua/zip/zip4j/core/HeaderWriter;

    invoke-direct {v4}, Lorg/manalua/zip/zip4j/core/HeaderWriter;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v7}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->finalizeZipFile(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/io/OutputStream;)V
    :try_end_12
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    :try_start_13
    const-string v4, "offsetCentralDir"

    invoke-virtual/range {p1 .. p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v5

    invoke-virtual {v5}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->getOffsetOfStartOfCentralDir()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_13 .. :try_end_13} :catch_10
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_c
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    if-eqz v6, :cond_13

    :try_start_14
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    :cond_13
    if-eqz v7, :cond_14

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8

    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;->restoreFileName(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v4, v22

    goto/16 :goto_7

    :cond_15
    :try_start_15
    invoke-virtual/range {p1 .. p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v4

    invoke-virtual {v4}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {v4}, Lorg/manalua/zip/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v4

    invoke-virtual {v4}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {v4}, Lorg/manalua/zip/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;

    move-result-object v4

    if-eqz v4, :cond_16

    invoke-virtual/range {p1 .. p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v4

    invoke-virtual {v4}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {v4}, Lorg/manalua/zip/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v4

    const-wide/16 v12, -0x1

    cmp-long v4, v4, v12

    if-eqz v4, :cond_16

    invoke-virtual/range {p1 .. p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v4

    invoke-virtual {v4}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {v4}, Lorg/manalua/zip/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v4

    move-wide v8, v4

    :cond_16
    invoke-virtual/range {p1 .. p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v4

    invoke-virtual {v4}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/manalua/zip/zip4j/model/FileHeader;

    sub-long v12, v26, v18

    sub-long/2addr v8, v12

    const-wide/16 v12, 0x1

    sub-long/2addr v8, v12

    invoke-virtual {v4, v8, v9}, Lorg/manalua/zip/zip4j/model/FileHeader;->setOffsetLocalHeader(J)V
    :try_end_15
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_15 .. :try_end_15} :catch_2
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto/16 :goto_8

    :catch_7
    move-exception v4

    new-instance v4, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v5, "cannot close input stream or output stream when trying to delete a file from zip file"

    invoke-direct {v4, v5}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_17
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto/16 :goto_2

    :catch_8
    move-exception v4

    new-instance v4, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v5, "cannot close input stream or output stream when trying to delete a file from zip file"

    invoke-direct {v4, v5}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_9
    move-exception v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v23, 0x0

    move-object/from16 v21, v5

    move v5, v6

    move-object/from16 v6, v23

    goto/16 :goto_3

    :catch_a
    move-exception v4

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/16 v23, 0x0

    move-object v8, v6

    move-object/from16 v6, v23

    goto/16 :goto_3

    :catch_b
    move-exception v4

    const/4 v6, 0x0

    const/4 v5, 0x0

    move-object v8, v6

    move-object/from16 v6, v23

    goto/16 :goto_3

    :catch_c
    move-exception v4

    const/4 v5, 0x1

    move-object v8, v6

    move-object/from16 v6, v23

    goto/16 :goto_3

    :catchall_3
    move-exception v4

    const/16 v21, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move/from16 v28, v5

    move-object v5, v6

    move-object v6, v8

    move-object v8, v4

    move/from16 v4, v28

    goto/16 :goto_1

    :catchall_4
    move-exception v4

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v21, v5

    move-object v5, v8

    move-object v8, v4

    move v4, v6

    move-object v6, v9

    goto/16 :goto_1

    :catchall_5
    move-exception v4

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move/from16 v28, v5

    move-object v5, v6

    move-object v6, v8

    move-object v8, v4

    move/from16 v4, v28

    goto/16 :goto_1

    :catchall_6
    move-exception v4

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move/from16 v28, v5

    move-object v5, v6

    move-object v6, v8

    move-object v8, v4

    move/from16 v4, v28

    goto/16 :goto_1

    :catchall_7
    move-exception v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v8, v4

    move v4, v5

    move-object/from16 v5, v23

    goto/16 :goto_1

    :catchall_8
    move-exception v4

    const/4 v5, 0x1

    move-object v8, v4

    move v4, v5

    move-object/from16 v5, v23

    goto/16 :goto_1

    :catch_d
    move-exception v4

    const/16 v23, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v21, v5

    move v5, v6

    move-object/from16 v6, v23

    goto/16 :goto_0

    :catch_e
    move-exception v4

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/16 v23, 0x0

    move-object v8, v6

    move-object/from16 v6, v23

    goto/16 :goto_0

    :catch_f
    move-exception v4

    const/4 v6, 0x0

    const/4 v5, 0x0

    move-object v8, v6

    move-object/from16 v6, v23

    goto/16 :goto_0

    :catch_10
    move-exception v4

    const/4 v5, 0x1

    move-object v8, v6

    move-object/from16 v6, v23

    goto/16 :goto_0

    :cond_18
    move-wide v4, v8

    move-wide/from16 v26, v4

    goto/16 :goto_5
.end method

.method public mergeSplitZipFiles(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/io/File;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p4, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer$2;

    const-string v2, "Zip4j"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer$2;-><init>(Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;Ljava/lang/String;Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/io/File;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;->initMergeSplitZipFile(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/io/File;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;)V

    goto :goto_0
.end method

.method public removeZipFile(Lorg/manalua/zip/zip4j/model/ZipModel;Lorg/manalua/zip/zip4j/model/FileHeader;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;Z)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p4, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer$1;

    const-string v2, "Zip4j"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer$1;-><init>(Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;Ljava/lang/String;Lorg/manalua/zip/zip4j/model/ZipModel;Lorg/manalua/zip/zip4j/model/FileHeader;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;->initRemoveZipFile(Lorg/manalua/zip/zip4j/model/ZipModel;Lorg/manalua/zip/zip4j/model/FileHeader;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p3}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->endProgressMonitorSuccess()V

    goto :goto_0
.end method

.method public setComment(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p2, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "comment is null, cannot update Zip file with comment"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "zipModel is null, cannot update Zip file with comment"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const-string v3, "windows-1254"

    invoke-static {v3}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->isSupportedCharset(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v2, "windows-1254"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "windows-1254"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v2, "windows-1254"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move-object p2, v0

    move v0, v2

    move-object v2, v3

    :cond_2
    :goto_0
    const v3, 0xffff

    if-le v0, v3, :cond_3

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "comment length exceeds maximum length"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v3

    invoke-virtual {v3, p2}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->setComment(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->setCommentBytes([B)V

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->setCommentLength(I)V

    :try_start_1
    new-instance v2, Lorg/manalua/zip/zip4j/core/HeaderWriter;

    invoke-direct {v2}, Lorg/manalua/zip/zip4j/core/HeaderWriter;-><init>()V

    new-instance v0, Lorg/manalua/zip/zip4j/io/SplitOutputStream;

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/manalua/zip/zip4j/io/SplitOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v1

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/Zip64EndCentralDirRecord;->getOffsetStartCenDirWRTStartDiskNo()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->seek(J)V

    :goto_1
    invoke-virtual {v2, p1, v0}, Lorg/manalua/zip/zip4j/core/HeaderWriter;->finalizeZipFileWithoutValidations(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_4

    :try_start_3
    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_4
    :goto_2
    return-void

    :cond_5
    :try_start_4
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v1

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->getOffsetOfStartOfCentralDir()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->seek(J)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_3
    :try_start_5
    new-instance v2, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v2, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_4
    if-eqz v1, :cond_6

    :try_start_6
    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_6
    :goto_5
    throw v0

    :catch_2
    move-exception v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_6
    :try_start_7
    new-instance v2, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v2, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catch_3
    move-exception v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_4
.end method
