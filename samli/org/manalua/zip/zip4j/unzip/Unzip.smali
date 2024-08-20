.class public Lorg/manalua/zip/zip4j/unzip/Unzip;
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

    const-string v1, "ZipModel is null"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/manalua/zip/zip4j/unzip/Unzip;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    return-void
.end method

.method static access$0(Lorg/manalua/zip/zip4j/unzip/Unzip;Ljava/util/ArrayList;Lorg/manalua/zip/zip4j/model/UnzipParameters;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/manalua/zip/zip4j/unzip/Unzip;->initExtractAll(Ljava/util/ArrayList;Lorg/manalua/zip/zip4j/model/UnzipParameters;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;Ljava/lang/String;)V

    return-void
.end method

.method static access$1(Lorg/manalua/zip/zip4j/unzip/Unzip;Lorg/manalua/zip/zip4j/model/FileHeader;Ljava/lang/String;Lorg/manalua/zip/zip4j/model/UnzipParameters;Ljava/lang/String;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lorg/manalua/zip/zip4j/unzip/Unzip;->initExtractFile(Lorg/manalua/zip/zip4j/model/FileHeader;Ljava/lang/String;Lorg/manalua/zip/zip4j/model/UnzipParameters;Ljava/lang/String;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;)V

    return-void
.end method

.method private calculateTotalWork(Ljava/util/ArrayList;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    if-nez p1, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "fileHeaders is null, cannot calculate total work"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move-wide v2, v4

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    return-wide v2

    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;

    move-result-object v6

    invoke-virtual {v6}, Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;->getUnCompressedSize()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-lez v6, :cond_2

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;->getCompressedSize()J

    move-result-wide v6

    add-long/2addr v2, v6

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v6

    add-long/2addr v2, v6

    goto :goto_1
.end method

.method private checkOutputDirectoryStructure(Lorg/manalua/zip/zip4j/model/FileHeader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {p2}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "Cannot check output directory structure...one of the parameters was null"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    invoke-static {p3}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    :goto_1
    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    move-object p3, v0

    goto :goto_0
.end method

.method private initExtractAll(Ljava/util/ArrayList;Lorg/manalua/zip/zip4j/model/UnzipParameters;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v7, 0x0

    move v6, v7

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v6, v0, :cond_0

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/manalua/zip/zip4j/model/FileHeader;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p4

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/manalua/zip/zip4j/unzip/Unzip;->initExtractFile(Lorg/manalua/zip/zip4j/model/FileHeader;Ljava/lang/String;Lorg/manalua/zip/zip4j/model/UnzipParameters;Ljava/lang/String;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;)V

    invoke-virtual {p3}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setResult(I)V

    invoke-virtual {p3, v7}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setState(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0
.end method

.method private initExtractFile(Lorg/manalua/zip/zip4j/model/FileHeader;Ljava/lang/String;Lorg/manalua/zip/zip4j/model/UnzipParameters;Ljava/lang/String;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "fileHeader is null"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setFileName(Ljava/lang/String;)V

    sget-object v0, Lorg/manalua/zip/zip4j/util/InternalZipConstants;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/manalua/zip/zip4j/util/InternalZipConstants;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/FileHeader;->isDirectory()Z
    :try_end_0
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    if-eqz v0, :cond_4

    :try_start_1
    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {p5, v0}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    new-instance v1, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :catch_1
    move-exception v0

    invoke-virtual {p5, v0}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    :try_start_3
    invoke-direct {p0, p1, p2, p4}, Lorg/manalua/zip/zip4j/unzip/Unzip;->checkOutputDirectoryStructure(Lorg/manalua/zip/zip4j/model/FileHeader;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/manalua/zip/zip4j/unzip/UnzipEngine;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/unzip/Unzip;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-direct {v0, v1, p1}, Lorg/manalua/zip/zip4j/unzip/UnzipEngine;-><init>(Lorg/manalua/zip/zip4j/model/ZipModel;Lorg/manalua/zip/zip4j/model/FileHeader;)V
    :try_end_3
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    invoke-virtual {v0, p5, p2, p4, p3}, Lorg/manalua/zip/zip4j/unzip/UnzipEngine;->unzipFile(Lorg/manalua/zip/zip4j/progress/ProgressMonitor;Ljava/lang/String;Ljava/lang/String;Lorg/manalua/zip/zip4j/model/UnzipParameters;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_5
    invoke-virtual {p5, v0}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    new-instance v1, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    move-exception v0

    invoke-virtual {p5, v0}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    new-instance v1, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public extractAll(Lorg/manalua/zip/zip4j/model/UnzipParameters;Ljava/lang/String;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/unzip/Unzip;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "invalid central directory in zipModel"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p3, v2}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setCurrentOperation(I)V

    invoke-direct {p0, v3}, Lorg/manalua/zip/zip4j/unzip/Unzip;->calculateTotalWork(Ljava/util/ArrayList;)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setTotalWork(J)V

    invoke-virtual {p3, v2}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setState(I)V

    if-eqz p4, :cond_2

    new-instance v0, Lorg/manalua/zip/zip4j/unzip/Unzip$1;

    const-string v2, "Zip4j"

    move-object v1, p0

    move-object v4, p1

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/manalua/zip/zip4j/unzip/Unzip$1;-><init>(Lorg/manalua/zip/zip4j/unzip/Unzip;Ljava/lang/String;Ljava/util/ArrayList;Lorg/manalua/zip/zip4j/model/UnzipParameters;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, v3, p1, p3, p2}, Lorg/manalua/zip/zip4j/unzip/Unzip;->initExtractAll(Ljava/util/ArrayList;Lorg/manalua/zip/zip4j/model/UnzipParameters;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public extractFile(Lorg/manalua/zip/zip4j/model/FileHeader;Ljava/lang/String;Lorg/manalua/zip/zip4j/model/UnzipParameters;Ljava/lang/String;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v2, 0x1

    if-nez p1, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "fileHeader is null"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p5, v2}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setCurrentOperation(I)V

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v0

    invoke-virtual {p5, v0, v1}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setTotalWork(J)V

    invoke-virtual {p5, v2}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setState(I)V

    const/4 v0, 0x0

    invoke-virtual {p5, v0}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setPercentDone(I)V

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setFileName(Ljava/lang/String;)V

    if-eqz p6, :cond_1

    new-instance v0, Lorg/manalua/zip/zip4j/unzip/Unzip$2;

    const-string v2, "Zip4j"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/manalua/zip/zip4j/unzip/Unzip$2;-><init>(Lorg/manalua/zip/zip4j/unzip/Unzip;Ljava/lang/String;Lorg/manalua/zip/zip4j/model/FileHeader;Ljava/lang/String;Lorg/manalua/zip/zip4j/model/UnzipParameters;Ljava/lang/String;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_1
    invoke-direct/range {p0 .. p5}, Lorg/manalua/zip/zip4j/unzip/Unzip;->initExtractFile(Lorg/manalua/zip/zip4j/model/FileHeader;Ljava/lang/String;Lorg/manalua/zip/zip4j/model/UnzipParameters;Ljava/lang/String;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;)V

    invoke-virtual {p5}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->endProgressMonitorSuccess()V

    goto :goto_0
.end method

.method public getInputStream(Lorg/manalua/zip/zip4j/model/FileHeader;)Lorg/manalua/zip/zip4j/io/ZipInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    new-instance v0, Lorg/manalua/zip/zip4j/unzip/UnzipEngine;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/unzip/Unzip;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-direct {v0, v1, p1}, Lorg/manalua/zip/zip4j/unzip/UnzipEngine;-><init>(Lorg/manalua/zip/zip4j/model/ZipModel;Lorg/manalua/zip/zip4j/model/FileHeader;)V

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/unzip/UnzipEngine;->getInputStream()Lorg/manalua/zip/zip4j/io/ZipInputStream;

    move-result-object v0

    return-object v0
.end method
