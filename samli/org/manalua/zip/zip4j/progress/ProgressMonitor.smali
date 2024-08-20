.class public Lorg/manalua/zip/zip4j/progress/ProgressMonitor;
.super Ljava/lang/Object;


# static fields
.field public static final OPERATION_ADD:I = 0x0

.field public static final OPERATION_CALC_CRC:I = 0x3

.field public static final OPERATION_EXTRACT:I = 0x1

.field public static final OPERATION_MERGE:I = 0x4

.field public static final OPERATION_NONE:I = -0x1

.field public static final OPERATION_REMOVE:I = 0x2

.field public static final RESULT_CANCELLED:I = 0x3

.field public static final RESULT_ERROR:I = 0x2

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final RESULT_WORKING:I = 0x1

.field public static final STATE_BUSY:I = 0x1

.field public static final STATE_READY:I


# instance fields
.field private cancelAllTasks:Z

.field private currentOperation:I

.field private exception:Ljava/lang/Throwable;

.field private fileName:Ljava/lang/String;

.field private pause:Z

.field private percentDone:I

.field private result:I

.field private state:I

.field private totalWork:J

.field private workCompleted:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->reset()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->percentDone:I

    return-void
.end method


# virtual methods
.method public cancelAllTasks()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->cancelAllTasks:Z

    return-void
.end method

.method public endProgressMonitorError(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->reset()V

    const/4 v0, 0x2

    iput v0, p0, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->result:I

    iput-object p1, p0, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->exception:Ljava/lang/Throwable;

    return-void
.end method

.method public endProgressMonitorSuccess()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/manalua/zip/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->reset()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->result:I

    return-void
.end method

.method public fullReset()V
    .locals 1

    invoke-virtual {p0}, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->exception:Ljava/lang/Throwable;

    const/4 v0, 0x0

    iput v0, p0, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->result:I

    return-void
.end method

.method public getCurrentOperation()I
    .locals 1

    iget v0, p0, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->currentOperation:I

    return v0
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getPercentDone()I
    .locals 1

    iget v0, p0, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->percentDone:I

    return v0
.end method

.method public getResult()I
    .locals 1

    iget v0, p0, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->result:I

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->state:I

    return v0
.end method

.method public getTotalWork()J
    .locals 2

    iget-wide v0, p0, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->totalWork:J

    return-wide v0
.end method

.method public getWorkCompleted()J
    .locals 2

    iget-wide v0, p0, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->workCompleted:J

    return-wide v0
.end method

.method public isCancelAllTasks()Z
    .locals 1

    iget-boolean v0, p0, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->cancelAllTasks:Z

    return v0
.end method

.method public isPause()Z
    .locals 1

    iget-boolean v0, p0, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->pause:Z

    return v0
.end method

.method public reset()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput v0, p0, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->currentOperation:I

    iput v1, p0, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->state:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->fileName:Ljava/lang/String;

    iput-wide v2, p0, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->totalWork:J

    iput-wide v2, p0, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->workCompleted:J

    iput v1, p0, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->percentDone:I

    return-void
.end method

.method public setCurrentOperation(I)V
    .locals 0

    iput p1, p0, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->currentOperation:I

    return-void
.end method

.method public setException(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->exception:Ljava/lang/Throwable;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setPause(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->pause:Z

    return-void
.end method

.method public setPercentDone(I)V
    .locals 0

    iput p1, p0, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->percentDone:I

    return-void
.end method

.method public setResult(I)V
    .locals 0

    iput p1, p0, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->result:I

    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->state:I

    return-void
.end method

.method public setTotalWork(J)V
    .locals 1

    iput-wide p1, p0, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->totalWork:J

    return-void
.end method

.method public updateWorkCompleted(J)V
    .locals 5

    const/16 v4, 0x64

    iget-wide v0, p0, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->workCompleted:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->workCompleted:J

    iget-wide v0, p0, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->totalWork:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->workCompleted:J

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->totalWork:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->percentDone:I

    iget v0, p0, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->percentDone:I

    if-le v0, v4, :cond_0

    iput v4, p0, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->percentDone:I

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lorg/manalua/zip/zip4j/progress/ProgressMonitor;->pause:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-wide/16 v0, 0x96

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
