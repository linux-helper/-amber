.class Lorg/manalua/zip/zip4j/util/ArchiveMaintainer$2;
.super Ljava/lang/Thread;


# instance fields
.field final this$0:Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;

.field private final val$outputZipFile:Ljava/io/File;

.field private final val$progressMonitor:Lorg/manalua/zip/zip4j/progress/ProgressMonitor;

.field private final val$zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;


# direct methods
.method constructor <init>(Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;Ljava/lang/String;Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/io/File;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer$2;->this$0:Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;

    iput-object p3, p0, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer$2;->val$zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    iput-object p4, p0, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer$2;->val$outputZipFile:Ljava/io/File;

    iput-object p5, p0, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer$2;->val$progressMonitor:Lorg/manalua/zip/zip4j/progress/ProgressMonitor;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer$2;->this$0:Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;

    iget-object v1, p0, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer$2;->val$zipModel:Lorg/manalua/zip/zip4j/model/ZipModel;

    iget-object v2, p0, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer$2;->val$outputZipFile:Ljava/io/File;

    iget-object v3, p0, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer$2;->val$progressMonitor:Lorg/manalua/zip/zip4j/progress/ProgressMonitor;

    invoke-static {v0, v1, v2, v3}, Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;->access$0(Lorg/manalua/zip/zip4j/util/ArchiveMaintainer;Lorg/manalua/zip/zip4j/model/ZipModel;Ljava/io/File;Lorg/manalua/zip/zip4j/progress/ProgressMonitor;)V
    :try_end_0
    .catch Lorg/manalua/zip/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
