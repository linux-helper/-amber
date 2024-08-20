.class public Lorg/manalua/zip/zip4j/io/ZipOutputStream;
.super Lorg/manalua/zip/zip4j/io/DeflaterOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/manalua/zip/zip4j/io/ZipOutputStream;-><init>(Ljava/io/OutputStream;Lorg/manalua/zip/zip4j/model/ZipModel;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/manalua/zip/zip4j/model/ZipModel;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/manalua/zip/zip4j/io/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Lorg/manalua/zip/zip4j/model/ZipModel;)V

    return-void
.end method


# virtual methods
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

    invoke-virtual {p0, v0, v2, v3}, Lorg/manalua/zip/zip4j/io/ZipOutputStream;->write([BII)V

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

    invoke-virtual {p0, p1, v0, v1}, Lorg/manalua/zip/zip4j/io/ZipOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/manalua/zip/zip4j/io/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {p0, p3}, Lorg/manalua/zip/zip4j/io/ZipOutputStream;->updateTotalBytesRead(I)V

    invoke-super {p0, p1, p2, p3}, Lorg/manalua/zip/zip4j/io/DeflaterOutputStream;->write([BII)V

    return-void
.end method
