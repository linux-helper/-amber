.class Lorg/manalua/zip/zip4j/zip/ZipEngine$1;
.super Ljava/lang/Thread;


# instance fields
.field final this$0:Lorg/manalua/zip/zip4j/zip/ZipEngine;

.field private final val$fileList:Ljava/util/ArrayList;

.field private final val$parameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

.field private final val$progressMonitor:Lorg/manalua/zip/zip4j/progress/ProgressMonitor;


# direct methods
.method constructor <init>(Lorg/manalua/zip/zip4j/zip/ZipEngine;Ljava/lang/String;Ljava/util/ArrayList;Lorg/manalua/zip/zip4j/model/ZipParameters;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/manalua/zip/zip4j/zip/ZipEngine$1;->this$0:Lorg/manalua/zip/zip4j/zip/ZipEngine;

    iput-object p3, p0, Lorg/manalua/zip/zip4j/zip/ZipEngine$1;->val$fileList:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/manalua/zip/zip4j/zip/ZipEngine$1;->val$parameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    iput-object p5, p0, Lorg/manalua/zip/zip4j/zip/ZipEngine$1;->val$progressMonitor:Lorg/manalua/zip/zip4j/progress/ProgressMonitor;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/manalua/zip/zip4j/zip/ZipEngine$1;->this$0:Lorg/manalua/zip/zip4j/zip/ZipEngine;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/zip/ZipEngine$1;->val$fileList:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/manalua/zip/zip4j/zip/ZipEngine$1;->val$parameters:Lorg/manalua/zip/zip4j/model/ZipParameters;

    iget-object v3, p0, Lorg/manalua/zip/zip4j/zip/ZipEngine$1;->val$progressMonitor:Lorg/manalua/zip/zip4j/progress/ProgressMonitor;

    invoke-static {v0, v1, v2, v3}, Lorg/manalua/zip/zip4j/zip/ZipEngine;->access$0(Lorg/manalua/zip/zip4j/zip/ZipEngine;Ljava/util/ArrayList;Lorg/manalua/zip/zip4j/model/ZipParameters;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;)V
    :try_end_0
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
