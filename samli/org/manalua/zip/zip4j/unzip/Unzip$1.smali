.class Lorg/manalua/zip/zip4j/unzip/Unzip$1;
.super Ljava/lang/Thread;


# instance fields
.field final this$0:Lorg/manalua/zip/zip4j/unzip/Unzip;

.field private final val$fileHeaders:Ljava/util/ArrayList;

.field private final val$outPath:Ljava/lang/String;

.field private final val$progressMonitor:Lorg/manalua/zip/zip4j/progress/ProgressMonitor;

.field private final val$unzipParameters:Lorg/manalua/zip/zip4j/model/UnzipParameters;


# direct methods
.method constructor <init>(Lorg/manalua/zip/zip4j/unzip/Unzip;Ljava/lang/String;Ljava/util/ArrayList;Lorg/manalua/zip/zip4j/model/UnzipParameters;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/manalua/zip/zip4j/unzip/Unzip$1;->this$0:Lorg/manalua/zip/zip4j/unzip/Unzip;

    iput-object p3, p0, Lorg/manalua/zip/zip4j/unzip/Unzip$1;->val$fileHeaders:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/manalua/zip/zip4j/unzip/Unzip$1;->val$unzipParameters:Lorg/manalua/zip/zip4j/model/UnzipParameters;

    iput-object p5, p0, Lorg/manalua/zip/zip4j/unzip/Unzip$1;->val$progressMonitor:Lorg/manalua/zip/zip4j/progress/ProgressMonitor;

    iput-object p6, p0, Lorg/manalua/zip/zip4j/unzip/Unzip$1;->val$outPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lorg/manalua/zip/zip4j/unzip/Unzip$1;->this$0:Lorg/manalua/zip/zip4j/unzip/Unzip;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/unzip/Unzip$1;->val$fileHeaders:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/manalua/zip/zip4j/unzip/Unzip$1;->val$unzipParameters:Lorg/manalua/zip/zip4j/model/UnzipParameters;

    iget-object v3, p0, Lorg/manalua/zip/zip4j/unzip/Unzip$1;->val$progressMonitor:Lorg/manalua/zip/zip4j/progress/ProgressMonitor;

    iget-object v4, p0, Lorg/manalua/zip/zip4j/unzip/Unzip$1;->val$outPath:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/manalua/zip/zip4j/unzip/Unzip;->access$0(Lorg/manalua/zip/zip4j/unzip/Unzip;Ljava/util/ArrayList;Lorg/manalua/zip/zip4j/model/UnzipParameters;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/manalua/zip/zip4j/unzip/Unzip$1;->val$progressMonitor:Lorg/manalua/zip/zip4j/progress/ProgressMonitor;

    invoke-virtual {v0}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->endProgressMonitorSuccess()V
    :try_end_0
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
