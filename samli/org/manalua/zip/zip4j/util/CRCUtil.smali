.class public Lorg/manalua/zip/zip4j/util/CRCUtil;
.super Ljava/lang/Object;


# static fields
.field private static final BUF_SIZE:I = 0x4000


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeFileCRC(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/manalua/zip/zip4j/util/CRCUtil;->computeFileCRC(Ljava/lang/String;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static computeFileCRC(Ljava/lang/String;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {p0}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "input file is null or empty, cannot calculate CRC for the file"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->checkFileReadAccess(Ljava/lang/String;)Z

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v0, 0x4000

    :try_start_1
    new-array v0, v0, [B

    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    :cond_1
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-wide v0

    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_0
    return-wide v0

    :cond_3
    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {v1, v0, v4, v3}, Ljava/util/zip/CRC32;->update([BII)V

    if-eqz p1, :cond_1

    int-to-long v4, v3

    invoke-virtual {p1, v4, v5}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->updateWorkCompleted(J)V

    invoke-virtual {p1}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setResult(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->setState(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v2, :cond_4

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_4
    const-wide/16 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "error while closing the file after calculating crc"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "error while closing the file after calculating crc"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_5
    new-instance v2, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v2, v0}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_5

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_5
    throw v0

    :catch_3
    move-exception v0

    move-object v2, v1

    :goto_3
    :try_start_7
    new-instance v1, Lorg/manalua/zip/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "error while closing the file after calculating crc"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_2
.end method
