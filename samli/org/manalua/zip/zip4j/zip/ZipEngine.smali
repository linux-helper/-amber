.class public Lorg/manalua/zip/zip4j/zip/ZipEngine;
.super Ljava/lang/Object;


# instance fields
.field private zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;


# direct methods
.method public constructor <init>(Lorg/manalua/zip/zip4j/model/ZipModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "zip model is null in ZipEngine constructor"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/manalua/zip/zip4j/zip/ZipEngine;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    return-void
.end method

.method static access$0(Lorg/manalua/zip/zip4j/zip/ZipEngine;Ljava/util/ArrayList;Lorg/manalua/zip/zip4j/model/ZipParameters;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/manalua/zip/zip4j/zip/ZipEngine;->initAddFiles(Ljava/util/ArrayList;Lorg/manalua/zip/zip4j/model/ZipParameters;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;)V

    return-void
.end method

.method private calculateTotalWork(Ljava/util/ArrayList;Lorg/manalua/zip/zip4j/model/ZipParameters;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "file list is null, cannot calculate total work"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    return-wide v2

    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/io/File;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-static {v0}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->getFileLengh(Ljava/io/File;)J

    move-result-wide v4

    const-wide/16 v6, 0x2

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    :goto_1
    iget-object v0, p0, Lorg/manalua/zip/zip4j/zip/ZipEngine;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/manalua/zip/zip4j/zip/ZipEngine;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/manalua/zip/zip4j/zip/ZipEngine;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getRootFolderInZip()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getDefaultFolderPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->getRelativeFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lorg/manalua/zip/zip4j/zip/ZipEngine;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-static {v4, v0}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->getFileHeader(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/lang/String;)Lorg/manalua/zip/zip4j/model/FileHeader;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lorg/manalua/zip/zip4j/zip/ZipEngine;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v5}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->getFileLengh(Ljava/io/File;)J

    move-result-wide v4

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v6

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-static {v0}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->getFileLengh(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_1
.end method

.method private checkParameters(Lorg/manalua/zip/zip4j/model/ZipParameters;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/16 v1, 0x8

    const/4 v2, -0x1

    if-nez p1, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "cannot validate zip parameters"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getCompressionMethod()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getCompressionMethod()I

    move-result v0

    if-eq v0, v1, :cond_1

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "unsupported compression type"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getCompressionMethod()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getCompressionLevel()I

    move-result v0

    if-gez v0, :cond_2

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getCompressionLevel()I

    move-result v0

    const/16 v1, 0x9

    if-le v0, v1, :cond_2

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "invalid compression level. compression level dor deflate should be in the range of 0-9"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v0

    const/16 v1, 0x63

    if-eq v0, v1, :cond_3

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "unsupported encryption method"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getPassword()[C

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getPassword()[C

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_6

    :cond_4
    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "input password is empty or null"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {p1, v2}, Lorg/manalua/zip/zip4j/model/ZipParameters;->setAesKeyStrength(I)V

    invoke-virtual {p1, v2}, Lorg/manalua/zip/zip4j/model/ZipParameters;->setEncryptionMethod(I)V

    :cond_6
    return-void
.end method

.method private createEndOfCentralDirectoryRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;
    .locals 4

    const/4 v1, 0x0

    new-instance v0, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    invoke-direct {v0}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;-><init>()V

    const-wide/32 v2, 0x6054b50

    invoke-virtual {v0, v2, v3}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->setSignature(J)V

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->setNoOfThisDisk(I)V

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->setTotNoOfEntriesInCentralDir(I)V

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->setTotNoOfEntriesInCentralDirOnThisDisk(I)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->setOffsetOfStartOfCentralDir(J)V

    return-object v0
.end method

.method private initAddFiles(Ljava/util/ArrayList;Lorg/manalua/zip/zip4j/model/ZipParameters;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "one of the input parameters is null when adding files"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_2

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "no files to add"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lorg/manalua/zip/zip4j/zip/ZipEngine;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/manalua/zip/zip4j/zip/ZipEngine;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-direct {p0}, Lorg/manalua/zip/zip4j/zip/ZipEngine;->createEndOfCentralDirectoryRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/manalua/zip/zip4j/model/ZipModel;->setEndCentralDirRecord(Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;)V

    :cond_3
    :try_start_0
    invoke-direct {p0, p2}, Lorg/manalua/zip/zip4j/zip/ZipEngine;->checkParameters(Lorg/manalua/zip/zip4j/model/ZipParameters;)V

    invoke-direct {p0, p1, p2, p3}, Lorg/manalua/zip/zip4j/zip/ZipEngine;->removeFilesIfExists(Ljava/util/ArrayList;Lorg/manalua/zip/zip4j/model/ZipParameters;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;)V

    iget-object v1, p0, Lorg/manalua/zip/zip4j/zip/ZipEngine;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/lang/String;)Z

    move-result v1

    new-instance v3, Lorg/manalua/zip/zip4j/io/SplitOutputStream;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lorg/manalua/zip/zip4j/zip/ZipEngine;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v5}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/manalua/zip/zip4j/zip/ZipEngine;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v5}, Lorg/manalua/zip/zip4j/model/ZipModel;->getSplitLength()J

    move-result-wide v6

    invoke-direct {v3, v4, v6, v7}, Lorg/manalua/zip/zip4j/io/SplitOutputStream;-><init>(Ljava/io/File;J)V

    new-instance v4, Lorg/manalua/zip/zip4j/io/ZipOutputStream;

    iget-object v5, p0, Lorg/manalua/zip/zip4j/zip/ZipEngine;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-direct {v4, v3, v5}, Lorg/manalua/zip/zip4j/io/ZipOutputStream;-><init>(Ljava/io/OutputStream;Lorg/manalua/zip/zip4j/model/ZipModel;)V
    :try_end_0
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_7

    :try_start_1
    iget-object v1, p0, Lorg/manalua/zip/zip4j/zip/ZipEngine;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v1

    if-nez v1, :cond_6

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "invalid end of central directory record"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_f
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :catch_0
    move-exception v0

    move-object v1, v2

    move-object v2, v4

    :goto_0
    :try_start_2
    invoke-virtual {p3, v0}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_4

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    :cond_4
    :goto_2
    if-eqz v4, :cond_5

    :try_start_4
    invoke-virtual {v4}, Lorg/manalua/zip/zip4j/io/ZipOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    :cond_5
    :goto_3
    throw v0

    :cond_6
    :try_start_5
    iget-object v1, p0, Lorg/manalua/zip/zip4j/zip/ZipEngine;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v1

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->getOffsetOfStartOfCentralDir()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->seek(J)V

    :cond_7
    const/16 v1, 0x1000

    new-array v5, v1, [B
    :try_end_5
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_f
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move v3, v0

    :goto_4
    :try_start_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v3, v0, :cond_a

    invoke-virtual {v4}, Lorg/manalua/zip/zip4j/io/ZipOutputStream;->finish()V

    invoke-virtual {p3}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->endProgressMonitorSuccess()V
    :try_end_6
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_10
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v2, :cond_8

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    :cond_8
    :goto_5
    if-eqz v4, :cond_9

    :try_start_8
    invoke-virtual {v4}, Lorg/manalua/zip/zip4j/io/ZipOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b

    :cond_9
    :goto_6
    return-void

    :cond_a
    :try_start_9
    invoke-virtual {p3}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setResult(I)V

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setState(I)V
    :try_end_9
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_10
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v2, :cond_b

    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c

    :cond_b
    :goto_7
    if-eqz v4, :cond_9

    :try_start_b
    invoke-virtual {v4}, Lorg/manalua/zip/zip4j/io/ZipOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_6

    :cond_c
    :try_start_c
    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/ZipParameters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setFileName(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x3

    invoke-virtual {p3, v1}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setCurrentOperation(I)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3}, Lorg/manalua/zip/zip4j/util/CRCUtil;->computeFileCRC(Ljava/lang/String;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;)J

    move-result-wide v6

    long-to-int v1, v6

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/ZipParameters;->setSourceFileCRC(I)V

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setCurrentOperation(I)V

    invoke-virtual {p3}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setResult(I)V

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setState(I)V
    :try_end_c
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_10
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-eqz v2, :cond_d

    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_d

    :cond_d
    :goto_8
    if-eqz v4, :cond_9

    :try_start_e
    invoke-virtual {v4}, Lorg/manalua/zip/zip4j/io/ZipOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_6

    :cond_e
    :try_start_f
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-static {v1}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->getFileLengh(Ljava/io/File;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_f

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/ZipParameters;->setCompressionMethod(I)V

    :cond_f
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v4, v1, v0}, Lorg/manalua/zip/zip4j/io/ZipOutputStream;->putNextEntry(Ljava/io/File;Lorg/manalua/zip/zip4j/model/ZipParameters;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v4}, Lorg/manalua/zip/zip4j/io/ZipOutputStream;->closeEntry()V

    move-object v0, v2

    :goto_9
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v2, v0

    goto/16 :goto_4

    :cond_10
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_10
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :goto_a
    :try_start_10
    invoke-virtual {v1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_11

    invoke-virtual {v4}, Lorg/manalua/zip/zip4j/io/ZipOutputStream;->closeEntry()V

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    move-object v0, v1

    goto :goto_9

    :catch_3
    move-exception v0

    move-object v4, v2

    :goto_b
    :try_start_11
    invoke-virtual {p3, v0}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    new-instance v1, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :catchall_1
    move-exception v0

    goto/16 :goto_1

    :cond_11
    :try_start_12
    invoke-virtual {p3}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setResult(I)V

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setState(I)V
    :try_end_12
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_12 .. :try_end_12} :catch_5
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    if-eqz v1, :cond_12

    :try_start_13
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e

    :cond_12
    :goto_c
    if-eqz v4, :cond_9

    :try_start_14
    invoke-virtual {v4}, Lorg/manalua/zip/zip4j/io/ZipOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_4

    goto/16 :goto_6

    :catch_4
    move-exception v0

    goto/16 :goto_6

    :cond_13
    const/4 v2, 0x0

    :try_start_15
    invoke-virtual {v4, v5, v2, v0}, Lorg/manalua/zip/zip4j/io/ZipOutputStream;->write([BII)V

    int-to-long v6, v0

    invoke-virtual {p3, v6, v7}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->updateWorkCompleted(J)V
    :try_end_15
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_15 .. :try_end_15} :catch_5
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    goto :goto_a

    :catch_5
    move-exception v0

    move-object v2, v4

    goto/16 :goto_0

    :catch_6
    move-exception v0

    move-object v2, v1

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v4, v2

    goto/16 :goto_1

    :catch_7
    move-exception v0

    move-object v1, v2

    goto/16 :goto_0

    :cond_14
    move-object v0, v1

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto/16 :goto_1

    :catch_8
    move-exception v1

    goto/16 :goto_2

    :catch_9
    move-exception v1

    goto/16 :goto_3

    :catch_a
    move-exception v0

    goto/16 :goto_5

    :catch_b
    move-exception v0

    goto/16 :goto_6

    :catch_c
    move-exception v0

    goto/16 :goto_7

    :catch_d
    move-exception v0

    goto/16 :goto_8

    :catch_e
    move-exception v0

    goto :goto_c

    :catch_f
    move-exception v0

    goto :goto_b

    :catch_10
    move-exception v0

    goto :goto_b

    :catchall_4
    move-exception v0

    goto/16 :goto_1
.end method

.method private prepareFileOutputStream()Ljava/io/RandomAccessFile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    iget-object v0, p0, Lorg/manalua/zip/zip4j/zip/ZipEngine;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "invalid output path"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private removeFilesIfExists(Ljava/util/ArrayList;Lorg/manalua/zip/zip4j/model/ZipParameters;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/manalua/zip/zip4j/zip/ZipEngine;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/manalua/zip/zip4j/zip/ZipEngine;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/manalua/zip/zip4j/zip/ZipEngine;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/manalua/zip/zip4j/zip/ZipEngine;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move v1, v0

    move-object v2, v3

    :goto_1
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lt v1, v0, :cond_2

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getRootFolderInZip()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getDefaultFolderPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->getRelativeFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lorg/manalua/zip/zip4j/zip/ZipEngine;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-static {v4, v0}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->getFileHeader(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/lang/String;)Lorg/manalua/zip/zip4j/model/FileHeader;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    move-object v2, v3

    :cond_3
    new-instance v4, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;

    invoke-direct {v4}, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;-><init>()V

    const/4 v5, 0x2

    invoke-virtual {p3, v5}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setCurrentOperation(I)V

    iget-object v5, p0, Lorg/manalua/zip/zip4j/zip/ZipEngine;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v4, v5, v0, p3}, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;->initRemoveZipFile(Lorg/manalua/zip/zip4j/model/ZipModel;Lorg/manalua/zip/zip4j/model/FileHeader;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p3}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setResult(I)V

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setState(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :try_start_4
    invoke-virtual {p3, v4}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setCurrentOperation(I)V

    if-nez v2, :cond_5

    invoke-direct {p0}, Lorg/manalua/zip/zip4j/zip/ZipEngine;->prepareFileOutputStream()Ljava/io/RandomAccessFile;

    move-result-object v2

    if-eqz v0, :cond_5

    const-string v4, "offsetCentralDir"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_5

    :try_start_5
    const-string v4, "offsetCentralDir"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_5

    :try_start_6
    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "NumberFormatException while parsing offset central directory. Cannot update already existing file header"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_3
    move-exception v0

    :try_start_7
    new-instance v1, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_6

    :try_start_8
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_6
    :goto_2
    throw v0

    :catch_4
    move-exception v0

    :try_start_9
    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "Error while parsing offset central directory. Cannot update already existing file header"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catch_5
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method public addFiles(Ljava/util/ArrayList;Lorg/manalua/zip/zip4j/model/ZipParameters;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "one of the input parameters is null when adding files"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "no files to add"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p3, v2}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setCurrentOperation(I)V

    invoke-virtual {p3, v1}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setState(I)V

    invoke-virtual {p3, v1}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setResult(I)V

    if-eqz p4, :cond_3

    invoke-direct {p0, p1, p2}, Lorg/manalua/zip/zip4j/zip/ZipEngine;->calculateTotalWork(Ljava/util/ArrayList;Lorg/manalua/zip/zip4j/model/ZipParameters;)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setTotalWork(J)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setFileName(Ljava/lang/String;)V

    new-instance v0, Lorg/manalua/zip/zip4j/zip/ZipEngine$1;

    const-string v2, "Zip4j"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/manalua/zip/zip4j/zip/ZipEngine$1;-><init>(Lorg/manalua/zip/zip4j/zip/ZipEngine;Ljava/lang/String;Ljava/util/ArrayList;Lorg/manalua/zip/zip4j/model/ZipParameters;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lorg/manalua/zip/zip4j/zip/ZipEngine;->initAddFiles(Ljava/util/ArrayList;Lorg/manalua/zip/zip4j/model/ZipParameters;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;)V

    goto :goto_0
.end method

.method public addFolderToZip(Ljava/io/File;Lorg/manalua/zip/zip4j/model/ZipParameters;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "one of the input parameters is null, cannot add folder to zip"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "input folder does not exist"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "input file is not a folder, user addFileToZip method to add files"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->checkFileReadAccess(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "cannot read folder: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/ZipParameters;->isIncludeRootFolder()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0}, Lorg/manalua/zip/zip4j/model/ZipParameters;->setDefaultFolderPath(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/ZipParameters;->isReadHiddenFiles()Z

    move-result v0

    invoke-static {p1, v0}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->getFilesInDirectoryRec(Ljava/io/File;Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/ZipParameters;->isIncludeRootFolder()Z

    move-result v1

    if-eqz v1, :cond_6

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/manalua/zip/zip4j/zip/ZipEngine;->addFiles(Ljava/util/ArrayList;Lorg/manalua/zip/zip4j/model/ZipParameters;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;Z)V

    return-void

    :cond_7
    const-string v0, ""

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_9
    const-string v0, ""

    goto :goto_0

    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public addStreamToZip(Ljava/io/InputStream;Lorg/manalua/zip/zip4j/model/ZipParameters;)V
    .locals 7
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

    const-string v1, "one of the input parameters is null, cannot add stream to zip"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    invoke-direct {p0, p2}, Lorg/manalua/zip/zip4j/zip/ZipEngine;->checkParameters(Lorg/manalua/zip/zip4j/model/ZipParameters;)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/zip/ZipEngine;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/lang/String;)Z

    move-result v2

    new-instance v3, Lorg/manalua/zip/zip4j/io/SplitOutputStream;

    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lorg/manalua/zip/zip4j/zip/ZipEngine;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v4}, Lorg/manalua/zip/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/manalua/zip/zip4j/zip/ZipEngine;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v4}, Lorg/manalua/zip/zip4j/model/ZipModel;->getSplitLength()J

    move-result-wide v4

    invoke-direct {v3, v0, v4, v5}, Lorg/manalua/zip/zip4j/io/SplitOutputStream;-><init>(Ljava/io/File;J)V

    new-instance v0, Lorg/manalua/zip/zip4j/io/ZipOutputStream;

    iget-object v4, p0, Lorg/manalua/zip/zip4j/zip/ZipEngine;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-direct {v0, v3, v4}, Lorg/manalua/zip/zip4j/io/ZipOutputStream;-><init>(Ljava/io/OutputStream;Lorg/manalua/zip/zip4j/model/ZipModel;)V
    :try_end_0
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_4

    :try_start_1
    iget-object v1, p0, Lorg/manalua/zip/zip4j/zip/ZipEngine;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v1, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v2, "invalid end of central directory record"

    invoke-direct {v1, v2}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v1

    :goto_0
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/io/ZipOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_2
    :goto_2
    throw v0

    :cond_3
    :try_start_4
    iget-object v1, p0, Lorg/manalua/zip/zip4j/zip/ZipEngine;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v1

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->getOffsetOfStartOfCentralDir()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/manalua/zip/zip4j/io/SplitOutputStream;->seek(J)V

    :cond_4
    const/16 v1, 0x1000

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p2}, Lorg/manalua/zip/zip4j/io/ZipOutputStream;->putNextEntry(Ljava/io/File;Lorg/manalua/zip/zip4j/model/ZipParameters;)V

    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    :goto_3
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    :cond_5
    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/io/ZipOutputStream;->closeEntry()V

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/io/ZipOutputStream;->finish()V
    :try_end_4
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_6

    :try_start_5
    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/io/ZipOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_6
    :goto_4
    return-void

    :cond_7
    const/4 v3, 0x0

    :try_start_6
    invoke-virtual {v0, v1, v3, v2}, Lorg/manalua/zip/zip4j/io/ZipOutputStream;->write([BII)V
    :try_end_6
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v1

    :goto_5
    :try_start_7
    new-instance v2, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v2, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catch_2
    move-exception v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_1
.end method
