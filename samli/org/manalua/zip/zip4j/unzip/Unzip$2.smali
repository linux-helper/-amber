.class Lorg/manalua/zip/zip4j/unzip/Unzip$2;
.super Ljava/lang/Thread;


# instance fields
.field final this$0:Lorg/manalua/zip/zip4j/unzip/Unzip;

.field private final val$fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

.field private final val$newFileName:Ljava/lang/String;

.field private final val$outPath:Ljava/lang/String;

.field private final val$progressMonitor:Lorg/manalua/zip/zip4j/progress/ProgressMonitor;

.field private final val$unzipParameters:Lorg/manalua/zip/zip4j/model/UnzipParameters;


# direct methods
.method constructor <init>(Lorg/manalua/zip/zip4j/unzip/Unzip;Ljava/lang/String;Lorg/manalua/zip/zip4j/model/FileHeader;Ljava/lang/String;Lorg/manalua/zip/zip4j/model/UnzipParameters;Ljava/lang/String;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/manalua/zip/zip4j/unzip/Unzip$2;->this$0:Lorg/manalua/zip/zip4j/unzip/Unzip;

    iput-object p3, p0, Lorg/manalua/zip/zip4j/unzip/Unzip$2;->val$fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    iput-object p4, p0, Lorg/manalua/zip/zip4j/unzip/Unzip$2;->val$outPath:Ljava/lang/String;

    iput-object p5, p0, Lorg/manalua/zip/zip4j/unzip/Unzip$2;->val$unzipParameters:Lorg/manalua/zip/zip4j/model/UnzipParameters;

    iput-object p6, p0, Lorg/manalua/zip/zip4j/unzip/Unzip$2;->val$newFileName:Ljava/lang/String;

    iput-object p7, p0, Lorg/manalua/zip/zip4j/unzip/Unzip$2;->val$progressMonitor:Lorg/manalua/zip/zip4j/progress/ProgressMonitor;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lorg/manalua/zip/zip4j/unzip/Unzip$2;->this$0:Lorg/manalua/zip/zip4j/unzip/Unzip;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/unzip/Unzip$2;->val$fileHeader:Lorg/manalua/zip/zip4j/model/FileHeader;

    iget-object v2, p0, Lorg/manalua/zip/zip4j/unzip/Unzip$2;->val$outPath:Ljava/lang/String;

    iget-object v3, p0, Lorg/manalua/zip/zip4j/unzip/Unzip$2;->val$unzipParameters:Lorg/manalua/zip/zip4j/model/UnzipParameters;

    iget-object v4, p0, Lorg/manalua/zip/zip4j/unzip/Unzip$2;->val$newFileName:Ljava/lang/String;

    iget-object v5, p0, Lorg/manalua/zip/zip4j/unzip/Unzip$2;->val$progressMonitor:Lorg/manalua/zip/zip4j/progress/ProgressMonitor;

    invoke-static/range {v0 .. v5}, Lorg/manalua/zip/zip4j/unzip/Unzip;->access$1(Lorg/manalua/zip/zip4j/unzip/Unzip;Lorg/manalua/zip/zip4j/model/FileHeader;Ljava/lang/String;Lorg/manalua/zip/zip4j/model/UnzipParameters;Ljava/lang/String;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/unzip/Unzip$2;->val$progressMonitor:Lorg/manalua/zip/zip4j/progress/ProgressMonitor;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->endProgressMonitorSuccess()V
    :try_end_0
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
