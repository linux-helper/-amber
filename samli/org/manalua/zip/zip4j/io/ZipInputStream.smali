.class public Lorg/manalua/zip/zip4j/io/ZipInputStream;
.super Ljava/io/InputStream;


# instance fields
.field private is:Lorg/manalua/zip/zip4j/io/BaseInputStream;


# direct methods
.method public constructor <init>(Lorg/manalua/zip/zip4j/io/BaseInputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lorg/manalua/zip/zip4j/io/ZipInputStream;->is:Lorg/manalua/zip/zip4j/io/BaseInputStream;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/ZipInputStream;->is:Lorg/manalua/zip/zip4j/io/BaseInputStream;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/io/BaseInputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/manalua/zip/zip4j/io/ZipInputStream;->close(Z)V

    return-void
.end method

.method public close(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/ZipInputStream;->is:Lorg/manalua/zip/zip4j/io/BaseInputStream;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/io/BaseInputStream;->close()V

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/ZipInputStream;->is:Lorg/manalua/zip/zip4j/io/BaseInputStream;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/io/BaseInputStream;->getUnzipEngine()Lorg/manalua/zip/zip4j/unzip/UnzipEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/ZipInputStream;->is:Lorg/manalua/zip/zip4j/io/BaseInputStream;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/io/BaseInputStream;->getUnzipEngine()Lorg/manalua/zip/zip4j/unzip/UnzipEngine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/unzip/UnzipEngine;->checkCRC()V
    :try_end_0
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/exception/ZipException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/ZipInputStream;->is:Lorg/manalua/zip/zip4j/io/BaseInputStream;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/io/BaseInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/ZipInputStream;->is:Lorg/manalua/zip/zip4j/io/BaseInputStream;

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/io/BaseInputStream;->getUnzipEngine()Lorg/manalua/zip/zip4j/unzip/UnzipEngine;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/manalua/zip/zip4j/unzip/UnzipEngine;->updateCRC(I)V

    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/manalua/zip/zip4j/io/ZipInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/ZipInputStream;->is:Lorg/manalua/zip/zip4j/io/BaseInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/manalua/zip/zip4j/io/BaseInputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/ZipInputStream;->is:Lorg/manalua/zip/zip4j/io/BaseInputStream;

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/io/BaseInputStream;->getUnzipEngine()Lorg/manalua/zip/zip4j/unzip/UnzipEngine;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/ZipInputStream;->is:Lorg/manalua/zip/zip4j/io/BaseInputStream;

    invoke-virtual {v1}, Lorg/manalua/zip/zip4j/io/BaseInputStream;->getUnzipEngine()Lorg/manalua/zip/zip4j/unzip/UnzipEngine;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lorg/manalua/zip/zip4j/unzip/UnzipEngine;->updateCRC([BII)V

    :cond_0
    return v0
.end method

.method public skip(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/ZipInputStream;->is:Lorg/manalua/zip/zip4j/io/BaseInputStream;

    invoke-virtual {v0, p1, p2}, Lorg/manalua/zip/zip4j/io/BaseInputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
