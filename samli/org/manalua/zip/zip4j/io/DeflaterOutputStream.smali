.class public Lorg/manalua/zip/zip4j/io/DeflaterOutputStream;
.super Lorg/manalua/zip/zip4j/io/CipherOutputStream;


# instance fields
.field private buff:[B

.field protected deflater:Ljava/util/zip/Deflater;

.field private firstBytesRead:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lorg/manalua/zip/zip4j/model/ZipModel;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/manalua/zip/zip4j/io/CipherOutputStream;-><init>(Ljava/io/OutputStream;Lorg/manalua/zip/zip4j/model/ZipModel;)V

    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    iput-object v0, p0, Lorg/manalua/zip/zip4j/io/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/manalua/zip/zip4j/io/DeflaterOutputStream;->buff:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/manalua/zip/zip4j/io/DeflaterOutputStream;->firstBytesRead:Z

    return-void
.end method

.method private deflate()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/DeflaterOutputStream;->buff:[B

    iget-object v2, p0, Lorg/manalua/zip/zip4j/io/DeflaterOutputStream;->buff:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finished()Z

    move-result v1

    if-eqz v1, :cond_3

    if-ne v0, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ge v0, v4, :cond_2

    rsub-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lorg/manalua/zip/zip4j/io/DeflaterOutputStream;->decrementCompressedFileSize(I)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x4

    :cond_3
    iget-boolean v1, p0, Lorg/manalua/zip/zip4j/io/DeflaterOutputStream;->firstBytesRead:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/DeflaterOutputStream;->buff:[B

    const/4 v2, 0x2

    add-int/lit8 v0, v0, -0x2

    invoke-super {p0, v1, v2, v0}, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->write([BII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/manalua/zip/zip4j/io/DeflaterOutputStream;->firstBytesRead:Z

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/manalua/zip/zip4j/io/DeflaterOutputStream;->buff:[B

    invoke-super {p0, v1, v3, v0}, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->write([BII)V

    goto :goto_0
.end method


# virtual methods
.method public closeEntry()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/DeflaterOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getCompressionMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    :goto_0
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/manalua/zip/zip4j/io/DeflaterOutputStream;->firstBytesRead:Z

    :cond_1
    invoke-super {p0}, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->closeEntry()V

    return-void

    :cond_2
    invoke-direct {p0}, Lorg/manalua/zip/zip4j/io/DeflaterOutputStream;->deflate()V

    goto :goto_0
.end method

.method public finish()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-super {p0}, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->finish()V

    return-void
.end method

.method public putNextEntry(Ljava/io/File;Lorg/manalua/zip/zip4j/model/ZipParameters;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->putNextEntry(Ljava/io/File;Lorg/manalua/zip/zip4j/model/ZipParameters;)V

    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getCompressionMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->reset()V

    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getCompressionLevel()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getCompressionLevel()I

    move-result v0

    const/16 v1, 0x9

    if-le v0, v1, :cond_1

    :cond_0
    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getCompressionLevel()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "invalid compression level for deflater. compression level should be in the range of 0-9"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {p2}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getCompressionLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->setLevel(I)V

    :cond_2
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

    invoke-virtual {p0, v0, v2, v3}, Lorg/manalua/zip/zip4j/io/DeflaterOutputStream;->write([BII)V

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

    invoke-virtual {p0, p1, v0, v1}, Lorg/manalua/zip/zip4j/io/DeflaterOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/DeflaterOutputStream;->zipParameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/model/ZipParameters;->getCompressionMethod()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, p2, p3}, Lorg/manalua/zip/zip4j/io/CipherOutputStream;->write([BII)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    :goto_0
    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/manalua/zip/zip4j/io/DeflaterOutputStream;->deflate()V

    goto :goto_0
.end method
