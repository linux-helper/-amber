.class public Lorg/manalua/zip/zip4j/model/FileHeader;
.super Ljava/lang/Object;


# instance fields
.field private aesExtraDataRecord:Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;

.field private compressedSize:J

.field private compressionMethod:I

.field private crc32:J

.field private crcBuff:[B

.field private dataDescriptorExists:Z

.field private diskNumberStart:I

.field private encryptionMethod:I

.field private externalFileAttr:[B

.field private extraDataRecords:Ljava/util/ArrayList;

.field private extraFieldLength:I

.field private fileComment:Ljava/lang/String;

.field private fileCommentLength:I

.field private fileName:Ljava/lang/String;

.field private fileNameLength:I

.field private fileNameUTF8Encoded:Z

.field private generalPurposeFlag:[B

.field private internalFileAttr:[B

.field private isDirectory:Z

.field private isEncrypted:Z

.field private lastModFileTime:I

.field private offsetLocalHeader:J

.field private password:[C

.field private signature:I

.field private uncompressedSize:J

.field private versionMadeBy:I

.field private versionNeededToExtract:I

.field private zip64ExtendedInfo:Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->encryptionMethod:I

    iput-wide v2, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->crc32:J

    iput-wide v2, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->uncompressedSize:J

    return-void
.end method


# virtual methods
.method public extractFile(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/lang/String;Lorg/manalua/zip/zip4j/model/UnzipParameters;Ljava/lang/String;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "input zipModel is null"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2}, Lorg/manalua/zip/zip4j/util/Zip4jUtil;->checkOutputFolder(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "Invalid output path"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p0, :cond_2

    new-instance v0, Lorg/manalua/zip/zip4j/exception/ZipException;

    const-string v1, "invalid file header"

    invoke-direct {v0, v1}, Lorg/manalua/zip/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lorg/manalua/zip/zip4j/unzip/Unzip;

    invoke-direct {v0, p1}, Lorg/manalua/zip/zip4j/unzip/Unzip;-><init>(Lorg/manalua/zip/zip4j/model/ZipModel;)V

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/manalua/zip/zip4j/unzip/Unzip;->extractFile(Lorg/manalua/zip/zip4j/model/FileHeader;Ljava/lang/String;Lorg/manalua/zip/zip4j/model/UnzipParameters;Ljava/lang/String;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;Z)V

    return-void
.end method

.method public extractFile(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/lang/String;Lorg/manalua/zip/zip4j/model/UnzipParameters;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/manalua/zip/zip4j/model/FileHeader;->extractFile(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/lang/String;Lorg/manalua/zip/zip4j/model/UnzipParameters;Ljava/lang/String;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;Z)V

    return-void
.end method

.method public extractFile(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/lang/String;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/manalua/zip/zip4j/model/FileHeader;->extractFile(Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/lang/String;Lorg/manalua/zip/zip4j/model/UnzipParameters;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;Z)V

    return-void
.end method

.method public getAesExtraDataRecord()Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;
    .locals 1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->aesExtraDataRecord:Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;

    return-object v0
.end method

.method public getCompressedSize()J
    .locals 2

    iget-wide v0, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->compressedSize:J

    return-wide v0
.end method

.method public getCompressionMethod()I
    .locals 1

    iget v0, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->compressionMethod:I

    return v0
.end method

.method public getCrc32()J
    .locals 4

    iget-wide v0, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->crc32:J

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getCrcBuff()[B
    .locals 1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->crcBuff:[B

    return-object v0
.end method

.method public getDiskNumberStart()I
    .locals 1

    iget v0, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->diskNumberStart:I

    return v0
.end method

.method public getEncryptionMethod()I
    .locals 1

    iget v0, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->encryptionMethod:I

    return v0
.end method

.method public getExternalFileAttr()[B
    .locals 1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->externalFileAttr:[B

    return-object v0
.end method

.method public getExtraDataRecords()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->extraDataRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getExtraFieldLength()I
    .locals 1

    iget v0, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->extraFieldLength:I

    return v0
.end method

.method public getFileComment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->fileComment:Ljava/lang/String;

    return-object v0
.end method

.method public getFileCommentLength()I
    .locals 1

    iget v0, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->fileCommentLength:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileNameLength()I
    .locals 1

    iget v0, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->fileNameLength:I

    return v0
.end method

.method public getGeneralPurposeFlag()[B
    .locals 1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->generalPurposeFlag:[B

    return-object v0
.end method

.method public getInternalFileAttr()[B
    .locals 1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->internalFileAttr:[B

    return-object v0
.end method

.method public getLastModFileTime()I
    .locals 1

    iget v0, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->lastModFileTime:I

    return v0
.end method

.method public getOffsetLocalHeader()J
    .locals 2

    iget-wide v0, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->offsetLocalHeader:J

    return-wide v0
.end method

.method public getPassword()[C
    .locals 1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->password:[C

    return-object v0
.end method

.method public getSignature()I
    .locals 1

    iget v0, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->signature:I

    return v0
.end method

.method public getUncompressedSize()J
    .locals 2

    iget-wide v0, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->uncompressedSize:J

    return-wide v0
.end method

.method public getVersionMadeBy()I
    .locals 1

    iget v0, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->versionMadeBy:I

    return v0
.end method

.method public getVersionNeededToExtract()I
    .locals 1

    iget v0, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->versionNeededToExtract:I

    return v0
.end method

.method public getZip64ExtendedInfo()Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;
    .locals 1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->zip64ExtendedInfo:Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;

    return-object v0
.end method

.method public isDataDescriptorExists()Z
    .locals 1

    iget-boolean v0, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->dataDescriptorExists:Z

    return v0
.end method

.method public isDirectory()Z
    .locals 1

    iget-boolean v0, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->isDirectory:Z

    return v0
.end method

.method public isEncrypted()Z
    .locals 1

    iget-boolean v0, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->isEncrypted:Z

    return v0
.end method

.method public isFileNameUTF8Encoded()Z
    .locals 1

    iget-boolean v0, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->fileNameUTF8Encoded:Z

    return v0
.end method

.method public setAesExtraDataRecord(Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;)V
    .locals 0

    iput-object p1, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->aesExtraDataRecord:Lorg/manalua/zip/zip4j/model/AESExtraDataRecord;

    return-void
.end method

.method public setCompressedSize(J)V
    .locals 1

    iput-wide p1, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->compressedSize:J

    return-void
.end method

.method public setCompressionMethod(I)V
    .locals 0

    iput p1, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->compressionMethod:I

    return-void
.end method

.method public setCrc32(J)V
    .locals 1

    iput-wide p1, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->crc32:J

    return-void
.end method

.method public setCrcBuff([B)V
    .locals 0

    iput-object p1, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->crcBuff:[B

    return-void
.end method

.method public setDataDescriptorExists(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->dataDescriptorExists:Z

    return-void
.end method

.method public setDirectory(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->isDirectory:Z

    return-void
.end method

.method public setDiskNumberStart(I)V
    .locals 0

    iput p1, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->diskNumberStart:I

    return-void
.end method

.method public setEncrypted(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->isEncrypted:Z

    return-void
.end method

.method public setEncryptionMethod(I)V
    .locals 0

    iput p1, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->encryptionMethod:I

    return-void
.end method

.method public setExternalFileAttr([B)V
    .locals 0

    iput-object p1, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->externalFileAttr:[B

    return-void
.end method

.method public setExtraDataRecords(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->extraDataRecords:Ljava/util/ArrayList;

    return-void
.end method

.method public setExtraFieldLength(I)V
    .locals 0

    iput p1, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->extraFieldLength:I

    return-void
.end method

.method public setFileComment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->fileComment:Ljava/lang/String;

    return-void
.end method

.method public setFileCommentLength(I)V
    .locals 0

    iput p1, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->fileCommentLength:I

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setFileNameLength(I)V
    .locals 0

    iput p1, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->fileNameLength:I

    return-void
.end method

.method public setFileNameUTF8Encoded(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->fileNameUTF8Encoded:Z

    return-void
.end method

.method public setGeneralPurposeFlag([B)V
    .locals 0

    iput-object p1, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->generalPurposeFlag:[B

    return-void
.end method

.method public setInternalFileAttr([B)V
    .locals 0

    iput-object p1, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->internalFileAttr:[B

    return-void
.end method

.method public setLastModFileTime(I)V
    .locals 0

    iput p1, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->lastModFileTime:I

    return-void
.end method

.method public setOffsetLocalHeader(J)V
    .locals 1

    iput-wide p1, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->offsetLocalHeader:J

    return-void
.end method

.method public setPassword([C)V
    .locals 0

    iput-object p1, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->password:[C

    return-void
.end method

.method public setSignature(I)V
    .locals 0

    iput p1, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->signature:I

    return-void
.end method

.method public setUncompressedSize(J)V
    .locals 1

    iput-wide p1, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->uncompressedSize:J

    return-void
.end method

.method public setVersionMadeBy(I)V
    .locals 0

    iput p1, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->versionMadeBy:I

    return-void
.end method

.method public setVersionNeededToExtract(I)V
    .locals 0

    iput p1, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->versionNeededToExtract:I

    return-void
.end method

.method public setZip64ExtendedInfo(Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;)V
    .locals 0

    iput-object p1, p0, Lorg/manalua/zip/zip4j/model/FileHeader;->zip64ExtendedInfo:Lorg/manalua/zip/zip4j/model/Zip64ExtendedInfo;

    return-void
.end method
