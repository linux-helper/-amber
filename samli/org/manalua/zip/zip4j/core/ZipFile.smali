.class public Lorg/manalua/zip/zip4j/core/ZipFile;
.super Ljava/lang/Object;


# instance fields
.field private file:Ljava/lang/String;

.field private fileNameCharset:Ljava/lang/String;

.field private isEncrypted:Z

.field private mode:I

.field private progressMonitor:Lorg/manalua/zip/zip4j/progress/ProgressMonitor;

.field private runInThread:Z

.field private zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "Input zip file parameter is not null"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->file:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->mode:I

    new-instance v0, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;

    invoke-direct {v0}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;-><init>()V

    iput-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->progressMonitor:Lorg/manalua/zip/zip4j/progress/ProgressMonitor;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->runInThread:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/manalua/zip/zip4j/core/ZipFile;-><init>(Ljava/io/File;)V

    return-void
.end method

.method private addFolder(Ljava/io/File;Lorg/manalua/zip/zip4j/model/ZipParameters;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/manalua/zip/zip4j/core/ZipFile;->checkZipModel()V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    if-nez v0, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "internal error: zip model is null"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "This is a split archive. Zip file format does not allow updating split/spanned files"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/manalua/zip/zip4j/zip/ZipEngine;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/zip/ZipEngine;-><init>(Lorg/manalua/zip/zip4j/model/ZipModel;)V

    iget-object v1, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->progressMonitor:Lorg/manalua/zip/zip4j/progress/ProgressMonitor;

    iget-boolean v2, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->runInThread:Z

    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/manalua/zip/zip4j/zip/ZipEngine;->addFolderToZip(Ljava/io/File;Lorg/manalua/zip/zip4j/model/ZipParameters;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;Z)V

    return-void
.end method

.method private checkZipModel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->file:Ljava/lang/String;

    invoke-static {v0}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/manalua/zip/zip4j/core/ZipFile;->readZipInfo()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lorg/manalua/zip/zip4j/core/ZipFile;->createNewZipModel()V

    goto :goto_0
.end method

.method private createNewZipModel()V
    .locals 2

    new-instance v0, Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-direct {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;-><init>()V

    iput-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/ZipModel;->setZipFile(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->fileNameCharset:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/model/ZipModel;->setFileNameCharset(Ljava/lang/String;)V

    return-void
.end method

.method private readZipInfo()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->file:Ljava/lang/String;

    invoke-static {v0}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "zip file does not exist"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->file:Ljava/lang/String;

    invoke-static {v0}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->checkFileReadAccess(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "no read access for the input zip file"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "Invalid mode"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->file:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "r"

    invoke-direct {v1, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    if-nez v0, :cond_3

    new-instance v0, Lorg/manalua/zip/zip4j/core/HeaderReader;

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/core/HeaderReader;-><init>(Ljava/io/RandomAccessFile;)V

    iget-object v2, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->fileNameCharset:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/manalua/zip/zip4j/core/HeaderReader;->readAllHeaders(Ljava/lang/String;)Lorg/manalua/zip/zip4j/model/ZipModel;

    move-result-object v0

    iput-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    iget-object v2, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->file:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/manalua/zip/zip4j/model/ZipModel;->setZipFile(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    if-eqz v1, :cond_4

    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_3
    new-instance v2, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v2, v0}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_5

    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_5
    :goto_3
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public addFile(Ljava/io/File;Lorg/manalua/zip/zip4j/model/ZipParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, p2}, Lorg/manalua/zip/zip4j/core/ZipFile;->addFiles(Ljava/util/ArrayList;Lorg/manalua/zip/zip4j/model/ZipParameters;)V

    return-void
.end method

.method public addFiles(Ljava/util/ArrayList;Lorg/manalua/zip/zip4j/model/ZipParameters;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-direct {p0}, Lorg/manalua/zip/zip4j/core/ZipFile;->checkZipModel()V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    if-nez v0, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "internal error: zip model is null"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "input file ArrayList is null, cannot add files"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1, v1}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->checkArrayListTypes(Ljava/util/ArrayList;I)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "One or more elements in the input ArrayList is not of type File"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p2, :cond_3

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "input parameters are null, cannot add files to zip"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->progressMonitor:Lorg/manalua/zip/zip4j/progress/ProgressMonitor;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->getState()I

    move-result v0

    if-ne v0, v1, :cond_4

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "invalid operation - Zip4j is in busy state"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->file:Ljava/lang/String;

    invoke-static {v0}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "Zip file already exists. Zip file format does not allow updating split/spanned files"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lorg/manalua/zip/zip4j/zip/ZipEngine;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/zip/ZipEngine;-><init>(Lorg/manalua/zip/zip4j/model/ZipModel;)V

    iget-object v1, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->progressMonitor:Lorg/manalua/zip/zip4j/progress/ProgressMonitor;

    iget-boolean v2, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->runInThread:Z

    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/manalua/zip/zip4j/zip/ZipEngine;->addFiles(Ljava/util/ArrayList;Lorg/manalua/zip/zip4j/model/ZipParameters;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;Z)V

    return-void
.end method

.method public addFolder(Ljava/io/File;Lorg/manalua/zip/zip4j/model/ZipParameters;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "input path is null, cannot add folder to zip file"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "input parameters are null, cannot add folder to zip file"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/manalua/zip/zip4j/core/ZipFile;->addFolder(Ljava/io/File;Lorg/manalua/zip/zip4j/model/ZipParameters;Z)V

    return-void
.end method

.method public addFolder(Ljava/lang/String;Lorg/manalua/zip/zip4j/model/ZipParameters;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-static {p1}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "input path is null or empty, cannot add folder to zip file"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lorg/manalua/zip/zip4j/core/ZipFile;->addFolder(Ljava/io/File;Lorg/manalua/zip/zip4j/model/ZipParameters;)V

    return-void
.end method

.method public addStream(Ljava/io/InputStream;Lorg/manalua/zip/zip4j/model/ZipParameters;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "inputstream is null, cannot add file to zip"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "zip parameters are null"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/manalua/zip/zip4j/core/ZipFile;->setRunInThread(Z)V

    invoke-direct {p0}, Lorg/manalua/zip/zip4j/core/ZipFile;->checkZipModel()V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    if-nez v0, :cond_2

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "internal error: zip model is null"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->file:Ljava/lang/String;

    invoke-static {v0}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "Zip file already exists. Zip file format does not allow updating split/spanned files"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lorg/manalua/zip/zip4j/zip/ZipEngine;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/zip/ZipEngine;-><init>(Lorg/manalua/zip/zip4j/model/ZipModel;)V

    invoke-virtual {v0, p1, p2}, Lorg/manalua/zip/zip4j/zip/ZipEngine;->addStreamToZip(Ljava/io/InputStream;Lorg/manalua/zip/zip4j/model/ZipParameters;)V

    return-void
.end method

.method public createZipFile(Ljava/io/File;Lorg/manalua/zip/zip4j/model/ZipParameters;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/manalua/zip/zip4j/core/ZipFile;->createZipFile(Ljava/util/ArrayList;Lorg/manalua/zip/zip4j/model/ZipParameters;ZJ)V

    return-void
.end method

.method public createZipFile(Ljava/io/File;Lorg/manalua/zip/zip4j/model/ZipParameters;ZJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/manalua/zip/zip4j/core/ZipFile;->createZipFile(Ljava/util/ArrayList;Lorg/manalua/zip/zip4j/model/ZipParameters;ZJ)V

    return-void
.end method

.method public createZipFile(Ljava/util/ArrayList;Lorg/manalua/zip/zip4j/model/ZipParameters;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/manalua/zip/zip4j/core/ZipFile;->createZipFile(Ljava/util/ArrayList;Lorg/manalua/zip/zip4j/model/ZipParameters;ZJ)V

    return-void
.end method

.method public createZipFile(Ljava/util/ArrayList;Lorg/manalua/zip/zip4j/model/ZipParameters;ZJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->file:Ljava/lang/String;

    invoke-static {v0}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "zip file path is empty"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->file:Ljava/lang/String;

    invoke-static {v0}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "zip file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->file:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " already exists. To add files to existing zip file use addFile method"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p1, :cond_2

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "input file ArrayList is null, cannot create zip file"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->checkArrayListTypes(Ljava/util/ArrayList;I)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "One or more elements in the input ArrayList is not of type File"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-direct {p0}, Lorg/manalua/zip/zip4j/core/ZipFile;->createNewZipModel()V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0, p3}, Lorg/manalua/zip/zip4j/model/ZipModel;->setSplitArchive(Z)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0, p4, p5}, Lorg/manalua/zip/zip4j/model/ZipModel;->setSplitLength(J)V

    invoke-virtual {p0, p1, p2}, Lorg/manalua/zip/zip4j/core/ZipFile;->addFiles(Ljava/util/ArrayList;Lorg/manalua/zip/zip4j/model/ZipParameters;)V

    return-void
.end method

.method public createZipFileFromFolder(Ljava/io/File;Lorg/manalua/zip/zip4j/model/ZipParameters;ZJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "folderToAdd is null, cannot create zip file from folder"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "input parameters are null, cannot create zip file from folder"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->file:Ljava/lang/String;

    invoke-static {v0}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "zip file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->file:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " already exists. To add files to existing zip file use addFolder method"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-direct {p0}, Lorg/manalua/zip/zip4j/core/ZipFile;->createNewZipModel()V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0, p3}, Lorg/manalua/zip/zip4j/model/ZipModel;->setSplitArchive(Z)V

    if-eqz p3, :cond_3

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0, p4, p5}, Lorg/manalua/zip/zip4j/model/ZipModel;->setSplitLength(J)V

    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/manalua/zip/zip4j/core/ZipFile;->addFolder(Ljava/io/File;Lorg/manalua/zip/zip4j/model/ZipParameters;Z)V

    return-void
.end method

.method public createZipFileFromFolder(Ljava/lang/String;Lorg/manalua/zip/zip4j/model/ZipParameters;ZJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-static {p1}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "folderToAdd is empty or null, cannot create Zip File from folder"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/manalua/zip/zip4j/core/ZipFile;->createZipFileFromFolder(Ljava/io/File;Lorg/manalua/zip/zip4j/model/ZipParameters;ZJ)V

    return-void
.end method

.method public extractAll(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/manalua/zip/zip4j/core/ZipFile;->extractAll(Ljava/lang/String;Lorg/manalua/zip/zip4j/model/UnzipParameters;)V

    return-void
.end method

.method public extractAll(Ljava/lang/String;Lorg/manalua/zip/zip4j/model/UnzipParameters;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-static {p1}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "output path is null or invalid"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->checkOutputFolder(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "invalid output path"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lorg/manalua/zip/zip4j/core/ZipFile;->readZipInfo()V

    :cond_2
    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    if-nez v0, :cond_3

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "Internal error occurred when extracting zip file"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->progressMonitor:Lorg/manalua/zip/zip4j/progress/ProgressMonitor;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "invalid operation - Zip4j is in busy state"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lorg/manalua/zip/zip4j/unzip/Unzip;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/unzip/Unzip;-><init>(Lorg/manalua/zip/zip4j/model/ZipModel;)V

    iget-object v1, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->progressMonitor:Lorg/manalua/zip/zip4j/progress/ProgressMonitor;

    iget-boolean v2, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->runInThread:Z

    invoke-virtual {v0, p2, p1, v1, v2}, Lorg/manalua/zip/zip4j/unzip/Unzip;->extractAll(Lorg/manalua/zip/zip4j/model/UnzipParameters;Ljava/lang/String;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;Z)V

    return-void
.end method

.method public extractFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/manalua/zip/zip4j/core/ZipFile;->extractFile(Ljava/lang/String;Ljava/lang/String;Lorg/manalua/zip/zip4j/model/UnzipParameters;)V

    return-void
.end method

.method public extractFile(Ljava/lang/String;Ljava/lang/String;Lorg/manalua/zip/zip4j/model/UnzipParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/manalua/zip/zip4j/core/ZipFile;->extractFile(Ljava/lang/String;Ljava/lang/String;Lorg/manalua/zip/zip4j/model/UnzipParameters;Ljava/lang/String;)V

    return-void
.end method

.method public extractFile(Ljava/lang/String;Ljava/lang/String;Lorg/manalua/zip/zip4j/model/UnzipParameters;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-static {p1}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "file to extract is null or empty, cannot extract file"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "destination string path is empty or null, cannot extract file"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0}, Lorg/manalua/zip/zip4j/core/ZipFile;->readZipInfo()V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-static {v0, p1}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->getFileHeader(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/lang/String;)Lorg/manalua/zip/zip4j/model/FileHeader;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "file header not found for given file name, cannot extract file"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->progressMonitor:Lorg/manalua/zip/zip4j/progress/ProgressMonitor;

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "invalid operation - Zip4j is in busy state"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v1, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    iget-object v5, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->progressMonitor:Lorg/manalua/zip/zip4j/progress/ProgressMonitor;

    iget-boolean v6, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->runInThread:Z

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lorg/manalua/zip/zip4j/model/FileHeader;->extractFile(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/lang/String;Lorg/manalua/zip/zip4j/model/UnzipParameters;Ljava/lang/String;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;Z)V

    return-void
.end method

.method public extractFile(Lorg/manalua/zip/zip4j/model/FileHeader;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/manalua/zip/zip4j/core/ZipFile;->extractFile(Lorg/manalua/zip/zip4j/model/FileHeader;Ljava/lang/String;Lorg/manalua/zip/zip4j/model/UnzipParameters;)V

    return-void
.end method

.method public extractFile(Lorg/manalua/zip/zip4j/model/FileHeader;Ljava/lang/String;Lorg/manalua/zip/zip4j/model/UnzipParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/manalua/zip/zip4j/core/ZipFile;->extractFile(Lorg/manalua/zip/zip4j/model/FileHeader;Ljava/lang/String;Lorg/manalua/zip/zip4j/model/UnzipParameters;Ljava/lang/String;)V

    return-void
.end method

.method public extractFile(Lorg/manalua/zip/zip4j/model/FileHeader;Ljava/lang/String;Lorg/manalua/zip/zip4j/model/UnzipParameters;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "input file header is null, cannot extract file"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "destination path is empty or null, cannot extract file"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0}, Lorg/manalua/zip/zip4j/core/ZipFile;->readZipInfo()V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->progressMonitor:Lorg/manalua/zip/zip4j/progress/ProgressMonitor;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "invalid operation - Zip4j is in busy state"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    iget-object v5, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->progressMonitor:Lorg/manalua/zip/zip4j/progress/ProgressMonitor;

    iget-boolean v6, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->runInThread:Z

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lorg/manalua/zip/zip4j/model/FileHeader;->extractFile(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/lang/String;Lorg/manalua/zip/zip4j/model/UnzipParameters;Ljava/lang/String;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;Z)V

    return-void
.end method

.method public getComment()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/manalua/zip/zip4j/core/ZipFile;->getComment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getComment(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v0, "windows-1254"

    invoke-static {v0}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->isSupportedCharset(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "windows-1254"

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->file:Ljava/lang/String;

    invoke-static {v0}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/manalua/zip/zip4j/core/ZipFile;->checkZipModel()V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    if-nez v0, :cond_3

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "zip model is null, cannot read comment"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p1, Lorg/manalua/zip/zip4j/util/InternalZipConstants;->CHARSET_DEFAULT:Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "zip file does not exist, cannot read comment"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "end of central directory record is null, cannot read comment"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->getCommentBytes()[B

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->getCommentBytes()[B

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_6

    :cond_5
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_6
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v1

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;->getCommentBytes()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getFile()Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->file:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getFileHeader(Ljava/lang/String;)Lorg/manalua/zip/zip4j/model/FileHeader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-static {p1}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "input file name is emtpy or null, cannot get FileHeader"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lorg/manalua/zip/zip4j/core/ZipFile;->readZipInfo()V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-static {v0, p1}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->getFileHeader(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/lang/String;)Lorg/manalua/zip/zip4j/model/FileHeader;

    move-result-object v0

    goto :goto_0
.end method

.method public getFileHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/manalua/zip/zip4j/core/ZipFile;->readZipInfo()V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getInputStream(Lorg/manalua/zip/zip4j/model/FileHeader;)Lorg/manalua/zip/zip4j/io/ZipInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "FileHeader is null, cannot get InputStream"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lorg/manalua/zip/zip4j/core/ZipFile;->checkZipModel()V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    if-nez v0, :cond_1

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "zip model is null, cannot get inputstream"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/manalua/zip/zip4j/unzip/Unzip;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/unzip/Unzip;-><init>(Lorg/manalua/zip/zip4j/model/ZipModel;)V

    invoke-virtual {v0, p1}, Lorg/manalua/zip/zip4j/unzip/Unzip;->getInputStream(Lorg/manalua/zip/zip4j/model/FileHeader;)Lorg/manalua/zip/zip4j/io/ZipInputStream;

    move-result-object v0

    return-object v0
.end method

.method public getProgressMonitor()Lorg/manalua/zip/zip4j/progress/ProgressMonitor;
    .locals 1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->progressMonitor:Lorg/manalua/zip/zip4j/progress/ProgressMonitor;

    return-object v0
.end method

.method public getSplitZipFiles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/manalua/zip/zip4j/core/ZipFile;->checkZipModel()V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-static {v0}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->getSplitZipFiles(Lorg/manalua/zip/zip4j/model/ZipModel;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public isEncrypted()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/manalua/zip/zip4j/core/ZipFile;->readZipInfo()V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    if-nez v0, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "Zip Model is null"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "invalid zip file"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    :goto_1
    iget-boolean v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->isEncrypted:Z

    return v0

    :cond_3
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/manalua/zip/zip4j/model/FileHeader;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/FileHeader;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->isEncrypted:Z

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public isRunInThread()Z
    .locals 1

    iget-boolean v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->runInThread:Z

    return v0
.end method

.method public isSplitArchive()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/manalua/zip/zip4j/core/ZipFile;->readZipInfo()V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    if-nez v0, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "Zip Model is null"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v0

    return v0
.end method

.method public isValidZipFile()Z
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lorg/manalua/zip/zip4j/core/ZipFile;->readZipInfo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeSplitFiles(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "outputZipFile is null, cannot merge split files"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "output Zip File already exists"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0}, Lorg/manalua/zip/zip4j/core/ZipFile;->checkZipModel()V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    if-nez v0, :cond_2

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "zip model is null, corrupt zip file?"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;

    invoke-direct {v0}, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;-><init>()V

    iget-object v1, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    iget-object v2, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->progressMonitor:Lorg/manalua/zip/zip4j/progress/ProgressMonitor;

    invoke-virtual {v0, v1, v2}, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;->initProgressMonitorForMergeOp(Lorg/manalua/zip/zip4j/model/ZipModel;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;)V

    iget-object v1, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    iget-object v2, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->progressMonitor:Lorg/manalua/zip/zip4j/progress/ProgressMonitor;

    iget-boolean v3, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->runInThread:Z

    invoke-virtual {v0, v1, p1, v2, v3}, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;->mergeSplitZipFiles(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/io/File;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;Z)V

    return-void
.end method

.method public removeFile(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-static {p1}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "file name is empty or null, cannot remove file"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->file:Ljava/lang/String;

    invoke-static {v0}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/manalua/zip/zip4j/core/ZipFile;->readZipInfo()V

    :cond_1
    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "Zip file format does not allow updating split/spanned files"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-static {v0, p1}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->getFileHeader(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/lang/String;)Lorg/manalua/zip/zip4j/model/FileHeader;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "could not find file header for file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p0, v0}, Lorg/manalua/zip/zip4j/core/ZipFile;->removeFile(Lorg/manalua/zip/zip4j/model/FileHeader;)V

    return-void
.end method

.method public removeFile(Lorg/manalua/zip/zip4j/model/FileHeader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "file header is null, cannot remove file"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->file:Ljava/lang/String;

    invoke-static {v0}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/manalua/zip/zip4j/core/ZipFile;->readZipInfo()V

    :cond_1
    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "Zip file format does not allow updating split/spanned files"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;

    invoke-direct {v0}, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;-><init>()V

    iget-object v1, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    iget-object v2, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->progressMonitor:Lorg/manalua/zip/zip4j/progress/ProgressMonitor;

    invoke-virtual {v0, v1, p1, v2}, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;->initProgressMonitorForRemoveOp(Lorg/manalua/zip/zip4j/model/ZipModel;Lorg/manalua/zip/zip4j/model/FileHeader;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;)V

    iget-object v1, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    iget-object v2, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->progressMonitor:Lorg/manalua/zip/zip4j/progress/ProgressMonitor;

    iget-boolean v3, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->runInThread:Z

    invoke-virtual {v0, v1, p1, v2, v3}, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;->removeZipFile(Lorg/manalua/zip/zip4j/model/ZipModel;Lorg/manalua/zip/zip4j/model/FileHeader;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;Z)Ljava/util/HashMap;

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "input comment is null, cannot update zip file"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->file:Ljava/lang/String;

    invoke-static {v0}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "zip file does not exist, cannot set comment for zip file"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0}, Lorg/manalua/zip/zip4j/core/ZipFile;->readZipInfo()V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    if-nez v0, :cond_2

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "zipModel is null, cannot update zip file"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getEndCentralDirRecord()Lorg/manalua/zip/zip4j/model/EndCentralDirRecord;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "end of central directory is null, cannot set comment"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;

    invoke-direct {v0}, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;-><init>()V

    iget-object v1, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0, v1, p1}, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;->setComment(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/lang/String;)V

    return-void
.end method

.method public setFileNameCharset(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-static {p1}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "null or empty charset name"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->isSupportedCharset(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "unsupported charset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->fileNameCharset:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-static {p1}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/manalua/zip/zip4j/core/ZipFile;->setPassword([C)V

    return-void
.end method

.method public setPassword([C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/manalua/zip/zip4j/core/ZipFile;->readZipInfo()V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    if-nez v0, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "Zip Model is null"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "invalid zip file"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/FileHeader;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipModel;->getCentralDirectory()Lorg/manalua/zip/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/manalua/zip/zip4j/model/FileHeader;

    invoke-virtual {v0, p1}, Lorg/manalua/zip/zip4j/model/FileHeader;->setPassword([C)V

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public setRunInThread(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/manalua/zip/zip4j/core/ZipFile;->runInThread:Z

    return-void
.end method
