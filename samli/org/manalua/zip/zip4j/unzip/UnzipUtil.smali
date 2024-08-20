.class public Lorg/manalua/zip/zip4j/unzip/UnzipUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyFileAttributes(Lorg/manalua/zip/zip4j/model/FileHeader;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/manalua/zip/zip4j/unzip/UnzipUtil;->applyFileAttributes(Lorg/manalua/zip/zip4j/model/FileHeader;Ljava/io/File;Lorg/manalua/zip/zip4j/model/UnzipParameters;)V

    return-void
.end method

.method public static applyFileAttributes(Lorg/manalua/zip/zip4j/model/FileHeader;Ljava/io/File;Lorg/manalua/zip/zip4j/model/UnzipParameters;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v7, 0x0

    if-nez p0, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "cannot set file properties: file header is null"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "cannot set file properties: output file is null"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "cannot set file properties: file doesnot exist"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/UnzipParameters;->isIgnoreDateTimeAttributes()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    invoke-static {p0, p1}, Lorg/manalua/zip/zip4j/unzip/UnzipUtil;->setFileLastModifiedTime(Lorg/manalua/zip/zip4j/model/FileHeader;Ljava/io/File;)V

    :cond_4
    if-nez p2, :cond_5

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lorg/manalua/zip/zip4j/unzip/UnzipUtil;->setFileAttributes(Lorg/manalua/zip/zip4j/model/FileHeader;Ljava/io/File;ZZZZ)V

    :goto_0
    return-void

    :cond_5
    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/UnzipParameters;->isIgnoreAllFileAttributes()Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, p0

    move-object v1, p1

    move v2, v7

    move v3, v7

    move v4, v7

    move v5, v7

    invoke-static/range {v0 .. v5}, Lorg/manalua/zip/zip4j/unzip/UnzipUtil;->setFileAttributes(Lorg/manalua/zip/zip4j/model/FileHeader;Ljava/io/File;ZZZZ)V

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/UnzipParameters;->isIgnoreReadOnlyFileAttribute()Z

    move-result v0

    if-eqz v0, :cond_7

    move v6, v7

    :goto_1
    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/UnzipParameters;->isIgnoreHiddenFileAttribute()Z

    move-result v0

    if-eqz v0, :cond_8

    move v3, v7

    :goto_2
    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/UnzipParameters;->isIgnoreArchiveFileAttribute()Z

    move-result v0

    if-eqz v0, :cond_9

    move v4, v7

    :goto_3
    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/UnzipParameters;->isIgnoreSystemFileAttribute()Z

    move-result v0

    if-eqz v0, :cond_a

    move v5, v7

    :goto_4
    move-object v0, p0

    move-object v1, p1

    move v2, v6

    invoke-static/range {v0 .. v5}, Lorg/manalua/zip/zip4j/unzip/UnzipUtil;->setFileAttributes(Lorg/manalua/zip/zip4j/model/FileHeader;Ljava/io/File;ZZZZ)V

    goto :goto_0

    :cond_7
    move v6, v2

    goto :goto_1

    :cond_8
    move v3, v2

    goto :goto_2

    :cond_9
    move v4, v2

    goto :goto_3

    :cond_a
    move v5, v2

    goto :goto_4
.end method

.method private static setFileAttributes(Lorg/manalua/zip/zip4j/model/FileHeader;Ljava/io/File;ZZZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "invalid file header. cannot set file attributes"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/manalua/zip/zip4j/model/FileHeader;->getExternalFileAttr()[B

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x0

    aget-byte v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->setFileReadOnly(Ljava/io/File;)V

    goto :goto_0

    :sswitch_1
    if-eqz p3, :cond_1

    invoke-static {p1}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->setFileHidden(Ljava/io/File;)V

    goto :goto_0

    :sswitch_2
    if-eqz p4, :cond_1

    invoke-static {p1}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->setFileArchive(Ljava/io/File;)V

    goto :goto_0

    :sswitch_3
    if-eqz p2, :cond_3

    invoke-static {p1}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->setFileReadOnly(Ljava/io/File;)V

    :cond_3
    if-eqz p3, :cond_1

    invoke-static {p1}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->setFileHidden(Ljava/io/File;)V

    goto :goto_0

    :sswitch_4
    if-eqz p4, :cond_4

    invoke-static {p1}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->setFileArchive(Ljava/io/File;)V

    :cond_4
    if-eqz p2, :cond_1

    invoke-static {p1}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->setFileReadOnly(Ljava/io/File;)V

    goto :goto_0

    :sswitch_5
    if-eqz p4, :cond_5

    invoke-static {p1}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->setFileArchive(Ljava/io/File;)V

    :cond_5
    if-eqz p3, :cond_1

    invoke-static {p1}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->setFileHidden(Ljava/io/File;)V

    goto :goto_0

    :sswitch_6
    if-eqz p4, :cond_6

    invoke-static {p1}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->setFileArchive(Ljava/io/File;)V

    :cond_6
    if-eqz p2, :cond_7

    invoke-static {p1}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->setFileReadOnly(Ljava/io/File;)V

    :cond_7
    if-eqz p3, :cond_1

    invoke-static {p1}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->setFileHidden(Ljava/io/File;)V

    goto :goto_0

    :sswitch_7
    if-eqz p2, :cond_8

    invoke-static {p1}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->setFileReadOnly(Ljava/io/File;)V

    :cond_8
    if-eqz p3, :cond_9

    invoke-static {p1}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->setFileHidden(Ljava/io/File;)V

    :cond_9
    if-eqz p5, :cond_1

    invoke-static {p1}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->setFileSystemMode(Ljava/io/File;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x12 -> :sswitch_1
        0x20 -> :sswitch_2
        0x21 -> :sswitch_4
        0x22 -> :sswitch_5
        0x23 -> :sswitch_6
        0x26 -> :sswitch_7
        0x30 -> :sswitch_2
        0x32 -> :sswitch_5
    .end sparse-switch
.end method

.method private static setFileLastModifiedTime(Lorg/manalua/zip/zip4j/model/FileHeader;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/manalua/zip/zip4j/model/FileHeader;->getLastModFileTime()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/manalua/zip/zip4j/model/FileHeader;->getLastModFileTime()I

    move-result v0

    invoke-static {v0}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->dosToJavaTme(I)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    goto :goto_0
.end method
