.class public Lorg/manalua/zip/zip4j/model/UnzipEngineParameters;
.super Ljava/lang/Object;


# instance fields
.field private fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

.field private iDecryptor:Lorg/manalua/zip/zip4j/crypto/IDecrypter;

.field private localFileHeader:Lorg/manalua/zip/zip4j/model/LocalFileHeader;

.field private outputStream:Ljava/io/FileOutputStream;

.field private unzipEngine:Lorg/manalua/zip/zip4j/unzip/UnzipEngine;

.field private zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileHeader()Lorg/manalua/zip/zip4j/model/FileHeader;
    .locals 1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/model/UnzipEngineParameters;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    return-object v0
.end method

.method public getIDecryptor()Lorg/manalua/zip/zip4j/crypto/IDecrypter;
    .locals 1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/model/UnzipEngineParameters;->iDecryptor:Lorg/manalua/zip/zip4j/crypto/IDecrypter;

    return-object v0
.end method

.method public getLocalFileHeader()Lorg/manalua/zip/zip4j/model/LocalFileHeader;
    .locals 1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/model/UnzipEngineParameters;->localFileHeader:Lorg/manalua/zip/zip4j/model/LocalFileHeader;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/FileOutputStream;
    .locals 1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/model/UnzipEngineParameters;->outputStream:Ljava/io/FileOutputStream;

    return-object v0
.end method

.method public getUnzipEngine()Lorg/manalua/zip/zip4j/unzip/UnzipEngine;
    .locals 1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/model/UnzipEngineParameters;->unzipEngine:Lorg/manalua/zip/zip4j/unzip/UnzipEngine;

    return-object v0
.end method

.method public getZipModel()Lorg/manalua/zip/zip4j/model/ZipModel;
    .locals 1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/model/UnzipEngineParameters;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    return-object v0
.end method

.method public setFileHeader(Lorg/manalua/zip/zip4j/model/FileHeader;)V
    .locals 0

    iput-object p1, p0, Lorg/manalua/zip/zip4j/model/UnzipEngineParameters;->fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    return-void
.end method

.method public setIDecryptor(Lorg/manalua/zip/zip4j/crypto/IDecrypter;)V
    .locals 0

    iput-object p1, p0, Lorg/manalua/zip/zip4j/model/UnzipEngineParameters;->iDecryptor:Lorg/manalua/zip/zip4j/crypto/IDecrypter;

    return-void
.end method

.method public setLocalFileHeader(Lorg/manalua/zip/zip4j/model/LocalFileHeader;)V
    .locals 0

    iput-object p1, p0, Lorg/manalua/zip/zip4j/model/UnzipEngineParameters;->localFileHeader:Lorg/manalua/zip/zip4j/model/LocalFileHeader;

    return-void
.end method

.method public setOutputStream(Ljava/io/FileOutputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/manalua/zip/zip4j/model/UnzipEngineParameters;->outputStream:Ljava/io/FileOutputStream;

    return-void
.end method

.method public setUnzipEngine(Lorg/manalua/zip/zip4j/unzip/UnzipEngine;)V
    .locals 0

    iput-object p1, p0, Lorg/manalua/zip/zip4j/model/UnzipEngineParameters;->unzipEngine:Lorg/manalua/zip/zip4j/unzip/UnzipEngine;

    return-void
.end method

.method public setZipModel(Lorg/manalua/zip/zip4j/model/ZipModel;)V
    .locals 0

    iput-object p1, p0, Lorg/manalua/zip/zip4j/model/UnzipEngineParameters;->zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    return-void
.end method
