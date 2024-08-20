.class public Lorg/manalua/util/zip4j;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "zip4j"


# instance fields
.field private result:Ljava/lang/Boolean;

.field private zipFile:Lorg/manalua/zip/zip4j/core/ZipFile;

.field private zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lorg/manalua/util/zip4j;->result:Ljava/lang/Boolean;

    return-void
.end method

.method private checkString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "zip4j"

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "checkString: \u6821\u9a8c\u8fc7\u7684sourceFileName\u662f\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p1
.end method


# virtual methods
.method public 单个解压(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    new-instance v0, Lorg/manalua/zip/zip4j/core/ZipFile;

    invoke-direct {v0, p1}, Lorg/manalua/zip/zip4j/core/ZipFile;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/core/ZipFile;->isEncrypted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p4}, Lorg/manalua/zip/zip4j/core/ZipFile;->setPassword(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p2, p3}, Lorg/manalua/zip/zip4j/core/ZipFile;->extractFile(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "zip4j"

    const-string v1, "\u5355\u4e2a\u89e3\u538b: \u89e3\u538b\u6210\u529f"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/manalua/util/zip4j;->result:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "zip4j"

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "\u5355\u4e2a\u89e3\u538b: \u5f02\u5e38\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lorg/manalua/util/zip4j;->result:Ljava/lang/Boolean;

    iget-object v0, p0, Lorg/manalua/util/zip4j;->result:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public 压缩(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 7

    const/4 v1, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v3, Lorg/manalua/zip/zip4j/core/ZipFile;

    invoke-direct {v3, v2}, Lorg/manalua/zip/zip4j/core/ZipFile;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lorg/manalua/util/zip4j;->zipFile:Lorg/manalua/zip/zip4j/core/ZipFile;

    iget-object v3, p0, Lorg/manalua/util/zip4j;->zipFile:Lorg/manalua/zip/zip4j/core/ZipFile;

    const-string v4, "GBK"

    invoke-virtual {v3, v4}, Lorg/manalua/zip/zip4j/core/ZipFile;->setFileNameCharset(Ljava/lang/String;)V

    new-instance v3, Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-direct {v3}, Lorg/manalua/zip/zip4j/model/ZipParameters;-><init>()V

    iput-object v3, p0, Lorg/manalua/util/zip4j;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    iget-object v3, p0, Lorg/manalua/util/zip4j;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lorg/manalua/zip/zip4j/model/ZipParameters;->setCompressionMethod(I)V

    iget-object v3, p0, Lorg/manalua/util/zip4j;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lorg/manalua/zip/zip4j/model/ZipParameters;->setCompressionLevel(I)V
    :try_end_0
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p3, :cond_0

    const-string v3, ""

    if-eq p3, v3, :cond_0

    :try_start_1
    iget-object v3, p0, Lorg/manalua/util/zip4j;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/manalua/zip/zip4j/model/ZipParameters;->setEncryptFiles(Z)V

    iget-object v3, p0, Lorg/manalua/util/zip4j;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/manalua/zip/zip4j/model/ZipParameters;->setEncryptionMethod(I)V

    iget-object v3, p0, Lorg/manalua/util/zip4j;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/manalua/zip/zip4j/model/ZipParameters;->setPassword([C)V

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/manalua/util/zip4j;->checkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "zip4j"

    const-string v5, "\u4fdd\u5b58\u538b\u7f29\u6587\u4ef6\u7684\u8def\u5f84(zipFilePath)\uff1a"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, v2, p3}, Lorg/manalua/util/zip4j;->压缩(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    move v0, v1

    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_2

    :goto_1
    const-string v0, "zip4j"

    const-string v2, "zip4j\u538b\u7f29: \u538b\u7f29\u6210\u529f"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v0, p0, Lorg/manalua/util/zip4j;->result:Ljava/lang/Boolean;

    :goto_2
    return-object v0

    :cond_2
    aget-object v3, v2, v0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/manalua/util/zip4j;->zipFile:Lorg/manalua/zip/zip4j/core/ZipFile;

    iget-object v5, p0, Lorg/manalua/util/zip4j;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {v4, v3, v5}, Lorg/manalua/zip/zip4j/core/ZipFile;->addFolder(Ljava/io/File;Lorg/manalua/zip/zip4j/model/ZipParameters;)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lorg/manalua/util/zip4j;->zipFile:Lorg/manalua/zip/zip4j/core/ZipFile;

    iget-object v5, p0, Lorg/manalua/util/zip4j;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {v4, v3, v5}, Lorg/manalua/zip/zip4j/core/ZipFile;->addFile(Ljava/io/File;Lorg/manalua/zip/zip4j/model/ZipParameters;)V
    :try_end_2
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v2, "zip4j"

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "zip4j\u538b\u7f29: \u5f02\u5e38\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lorg/manalua/util/zip4j;->result:Ljava/lang/Boolean;

    iget-object v0, p0, Lorg/manalua/util/zip4j;->result:Ljava/lang/Boolean;

    goto :goto_2

    :cond_4
    :try_start_3
    iget-object v2, p0, Lorg/manalua/util/zip4j;->zipFile:Lorg/manalua/zip/zip4j/core/ZipFile;

    iget-object v3, p0, Lorg/manalua/util/zip4j;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {v2, v0, v3}, Lorg/manalua/zip/zip4j/core/ZipFile;->addFile(Ljava/io/File;Lorg/manalua/zip/zip4j/model/ZipParameters;)V
    :try_end_3
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method public 是否有密码(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    new-instance v0, Lorg/manalua/zip/zip4j/core/ZipFile;

    invoke-direct {v0, p1}, Lorg/manalua/zip/zip4j/core/ZipFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/core/ZipFile;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_0
.end method

.method public 解压(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Lorg/manalua/zip/zip4j/core/ZipFile;

    invoke-direct {v2, v0}, Lorg/manalua/zip/zip4j/core/ZipFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lorg/manalua/util/zip4j;->zipFile:Lorg/manalua/zip/zip4j/core/ZipFile;

    iget-object v0, p0, Lorg/manalua/util/zip4j;->zipFile:Lorg/manalua/zip/zip4j/core/ZipFile;

    const-string v2, "GBK"

    invoke-virtual {v0, v2}, Lorg/manalua/zip/zip4j/core/ZipFile;->setFileNameCharset(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/manalua/util/zip4j;->zipFile:Lorg/manalua/zip/zip4j/core/ZipFile;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/core/ZipFile;->isValidZipFile()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "\u538b\u7f29\u6587\u4ef6\u4e0d\u5408\u6cd5,\u53ef\u80fd\u88ab\u635f\u574f."

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "zip4j"

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "zip4j\u89e3\u538b: \u5f02\u5e38\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lorg/manalua/util/zip4j;->result:Ljava/lang/Boolean;

    iget-object v0, p0, Lorg/manalua/util/zip4j;->result:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_1
    iget-object v0, p0, Lorg/manalua/util/zip4j;->zipFile:Lorg/manalua/zip/zip4j/core/ZipFile;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/core/ZipFile;->isEncrypted()Z
    :try_end_1
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    const-string v0, ""

    if-eq p3, v0, :cond_2

    :try_start_2
    iget-object v0, p0, Lorg/manalua/util/zip4j;->zipFile:Lorg/manalua/zip/zip4j/core/ZipFile;

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/manalua/zip/zip4j/core/ZipFile;->setPassword([C)V

    :cond_2
    iget-object v0, p0, Lorg/manalua/util/zip4j;->zipFile:Lorg/manalua/zip/zip4j/core/ZipFile;

    invoke-virtual {v0, p2}, Lorg/manalua/zip/zip4j/core/ZipFile;->extractAll(Ljava/lang/String;)V

    const-string v0, "zip4j"

    const-string v1, "zip4j\u89e3\u538b: \u89e3\u538b\u6210\u529f"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_2 .. :try_end_2} :catch_0

    iget-object v0, p0, Lorg/manalua/util/zip4j;->result:Ljava/lang/Boolean;

    goto :goto_0
.end method
