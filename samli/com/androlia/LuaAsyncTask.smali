.class public Lcom/androlua/LuaAsyncTask;
.super Lcom/androlua/util/AsyncTaskX;

# interfaces
.implements Lcom/androlua/LuaGcable;


# instance fields
.field private l:[Ljava/lang/Object;

.field private m:Z

.field private n:Lcom/luajava/LuaState;

.field private o:Lcom/androlua/LuaContext;

.field private p:[B

.field private q:J

.field private r:Lcom/luajava/LuaObject;

.field private s:Lcom/luajava/LuaObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/androlua/util/AsyncTaskX;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lcom/androlua/util/AsyncTaskX;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Lcom/androlua/LuaContext;JLcom/luajava/LuaObject;)V
    .locals 2

    invoke-direct {p0}, Lcom/androlua/util/AsyncTaskX;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/androlua/LuaAsyncTask;->q:J

    invoke-interface {p1, p0}, Lcom/androlua/LuaContext;->regGc(Lcom/androlua/LuaGcable;)V

    iput-object p1, p0, Lcom/androlua/LuaAsyncTask;->o:Lcom/androlua/LuaContext;

    iput-wide p2, p0, Lcom/androlua/LuaAsyncTask;->q:J

    iput-object p4, p0, Lcom/androlua/LuaAsyncTask;->r:Lcom/luajava/LuaObject;

    return-void
.end method

.method public constructor <init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)V
    .locals 2

    invoke-direct {p0}, Lcom/androlua/util/AsyncTaskX;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/androlua/LuaAsyncTask;->q:J

    invoke-interface {p1, p0}, Lcom/androlua/LuaContext;->regGc(Lcom/androlua/LuaGcable;)V

    iput-object p1, p0, Lcom/androlua/LuaAsyncTask;->o:Lcom/androlua/LuaContext;

    invoke-virtual {p2}, Lcom/luajava/LuaObject;->dump()[B

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaAsyncTask;->p:[B

    iput-object p3, p0, Lcom/androlua/LuaAsyncTask;->r:Lcom/luajava/LuaObject;

    invoke-virtual {p2}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v0

    const-string v1, "luajava"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->getLuaObject(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object v0

    const-string v1, "imported"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaObject;->getField(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luajava/LuaObject;->isNil()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/luajava/LuaObject;->asArray()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaAsyncTask;->l:[Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)V
    .locals 2

    invoke-direct {p0}, Lcom/androlua/util/AsyncTaskX;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/androlua/LuaAsyncTask;->q:J

    invoke-interface {p1, p0}, Lcom/androlua/LuaContext;->regGc(Lcom/androlua/LuaGcable;)V

    iput-object p1, p0, Lcom/androlua/LuaAsyncTask;->o:Lcom/androlua/LuaContext;

    invoke-virtual {p2}, Lcom/luajava/LuaObject;->dump()[B

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaAsyncTask;->p:[B

    iput-object p3, p0, Lcom/androlua/LuaAsyncTask;->s:Lcom/luajava/LuaObject;

    iput-object p4, p0, Lcom/androlua/LuaAsyncTask;->r:Lcom/luajava/LuaObject;

    return-void
.end method

.method public constructor <init>(Lcom/androlua/LuaContext;Ljava/lang/String;Lcom/luajava/LuaObject;)V
    .locals 2

    invoke-direct {p0}, Lcom/androlua/util/AsyncTaskX;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/androlua/LuaAsyncTask;->q:J

    invoke-interface {p1, p0}, Lcom/androlua/LuaContext;->regGc(Lcom/androlua/LuaGcable;)V

    iput-object p1, p0, Lcom/androlua/LuaAsyncTask;->o:Lcom/androlua/LuaContext;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaAsyncTask;->p:[B

    iput-object p3, p0, Lcom/androlua/LuaAsyncTask;->r:Lcom/luajava/LuaObject;

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "error error"

    goto :goto_0

    :pswitch_1
    const-string v0, "GC error"

    goto :goto_0

    :pswitch_2
    const-string v0, "Out of memory"

    goto :goto_0

    :pswitch_3
    const-string v0, "Syntax error"

    goto :goto_0

    :pswitch_4
    const-string v0, "Runtime error"

    goto :goto_0

    :pswitch_5
    const-string v0, "Yield error"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, -0x2

    const/4 v2, 0x0

    iget-wide v0, p0, Lcom/androlua/LuaAsyncTask;->q:J

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-eqz v3, :cond_1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {}, Lcom/luajava/LuaStateFactory;->newLuaState()Lcom/luajava/LuaState;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaAsyncTask;->n:Lcom/luajava/LuaState;

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->n:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->openLibs()V

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->n:Lcom/luajava/LuaState;

    iget-object v1, p0, Lcom/androlua/LuaAsyncTask;->o:Lcom/androlua/LuaContext;

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->o:Lcom/androlua/LuaContext;

    instance-of v1, v0, Lcom/androlua/LuaActivity;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/androlua/LuaAsyncTask;->n:Lcom/luajava/LuaState;

    const-string v0, "activity"

    :goto_1
    invoke-virtual {v1, v0}, Lcom/luajava/LuaState;->setGlobal(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->n:Lcom/luajava/LuaState;

    invoke-virtual {v0, p0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->n:Lcom/luajava/LuaState;

    const-string v1, "this"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->setGlobal(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->n:Lcom/luajava/LuaState;

    iget-object v1, p0, Lcom/androlua/LuaAsyncTask;->o:Lcom/androlua/LuaContext;

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pushContext(Lcom/androlua/LuaContext;)V

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->n:Lcom/luajava/LuaState;

    const-string v1, "luajava"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->getGlobal(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->n:Lcom/luajava/LuaState;

    iget-object v1, p0, Lcom/androlua/LuaAsyncTask;->o:Lcom/androlua/LuaContext;

    invoke-interface {v1}, Lcom/androlua/LuaContext;->getLuaDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->n:Lcom/luajava/LuaState;

    const-string v1, "luadir"

    invoke-virtual {v0, v6, v1}, Lcom/luajava/LuaState;->setField(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->n:Lcom/luajava/LuaState;

    invoke-virtual {v0, v7}, Lcom/luajava/LuaState;->pop(I)V

    :try_start_1
    new-instance v0, Lcom/androlua/LuaPrint;

    iget-object v1, p0, Lcom/androlua/LuaAsyncTask;->o:Lcom/androlua/LuaContext;

    iget-object v3, p0, Lcom/androlua/LuaAsyncTask;->n:Lcom/luajava/LuaState;

    invoke-direct {v0, v1, v3}, Lcom/androlua/LuaPrint;-><init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaState;)V

    const-string v1, "print"

    invoke-virtual {v0, v1}, Lcom/luajava/JavaFunction;->register(Ljava/lang/String;)V

    new-instance v0, Lcom/androlua/LuaAsyncTask$1;

    iget-object v1, p0, Lcom/androlua/LuaAsyncTask;->n:Lcom/luajava/LuaState;

    invoke-direct {v0, p0, v1}, Lcom/androlua/LuaAsyncTask$1;-><init>(Lcom/androlua/LuaAsyncTask;Lcom/luajava/LuaState;)V

    const-string v1, "update"

    invoke-virtual {v0, v1}, Lcom/luajava/JavaFunction;->register(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->n:Lcom/luajava/LuaState;

    const-string v1, "package"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->getGlobal(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->n:Lcom/luajava/LuaState;

    iget-object v1, p0, Lcom/androlua/LuaAsyncTask;->o:Lcom/androlua/LuaContext;

    invoke-interface {v1}, Lcom/androlua/LuaContext;->getLuaLpath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->n:Lcom/luajava/LuaState;

    const/4 v1, -0x2

    const-string v3, "path"

    invoke-virtual {v0, v1, v3}, Lcom/luajava/LuaState;->setField(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->n:Lcom/luajava/LuaState;

    iget-object v1, p0, Lcom/androlua/LuaAsyncTask;->o:Lcom/androlua/LuaContext;

    invoke-interface {v1}, Lcom/androlua/LuaContext;->getLuaCpath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->n:Lcom/luajava/LuaState;

    const/4 v1, -0x2

    const-string v3, "cpath"

    invoke-virtual {v0, v1, v3}, Lcom/luajava/LuaState;->setField(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->n:Lcom/luajava/LuaState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pop(I)V
    :try_end_1
    .catch Lcom/luajava/LuaException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->l:[Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->n:Lcom/luajava/LuaState;

    const-string v1, "require"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->getLuaObject(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_2
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "import"

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->n:Lcom/luajava/LuaState;

    const-string v1, "import"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->getLuaObject(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object v1

    iget-object v3, p0, Lcom/androlua/LuaAsyncTask;->l:[Ljava/lang/Object;

    array-length v4, v3

    move v0, v2

    :goto_3
    if-ge v0, v4, :cond_4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v7, v3, v0

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lcom/luajava/LuaException; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    instance-of v0, v0, Lcom/androlua/LuaService;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/androlua/LuaAsyncTask;->n:Lcom/luajava/LuaState;

    const-string v0, "service"

    goto/16 :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/androlua/LuaAsyncTask;->o:Lcom/androlua/LuaContext;

    const-string v3, "AsyncTask"

    invoke-interface {v1, v3, v0}, Lcom/androlua/LuaContext;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    :catch_1
    move-exception v0

    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->n:Lcom/luajava/LuaState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->setTop(I)V

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->n:Lcom/luajava/LuaState;

    iget-object v1, p0, Lcom/androlua/LuaAsyncTask;->p:[B

    const-string v3, "LuaAsyncTask"

    invoke-virtual {v0, v1, v3}, Lcom/luajava/LuaState;->LloadBuffer([BLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->n:Lcom/luajava/LuaState;

    const-string v1, "debug"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->getGlobal(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->n:Lcom/luajava/LuaState;

    const/4 v1, -0x1

    const-string v3, "traceback"

    invoke-virtual {v0, v1, v3}, Lcom/luajava/LuaState;->getField(ILjava/lang/String;)I

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->n:Lcom/luajava/LuaState;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->remove(I)V

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->n:Lcom/luajava/LuaState;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->insert(I)V

    array-length v1, p1

    move v0, v2

    :goto_4
    if-ge v0, v1, :cond_5

    iget-object v3, p0, Lcom/androlua/LuaAsyncTask;->n:Lcom/luajava/LuaState;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->n:Lcom/luajava/LuaState;

    const/4 v3, -0x1

    rsub-int/lit8 v4, v1, -0x2

    invoke-virtual {v0, v1, v3, v4}, Lcom/luajava/LuaState;->pcall(III)I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->n:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->getTop()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    new-array p1, v1, [Ljava/lang/Object;

    move v0, v2

    :goto_5
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/androlua/LuaAsyncTask;->n:Lcom/luajava/LuaState;

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    new-instance v1, Lcom/luajava/LuaException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/androlua/LuaAsyncTask;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->n:Lcom/luajava/LuaState;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/androlua/LuaAsyncTask;->o:Lcom/androlua/LuaContext;

    const-string v2, "doInBackground"

    invoke-interface {v1, v2, v0}, Lcom/androlua/LuaContext;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p1, 0x0

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto/16 :goto_0
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0}, Lcom/androlua/util/AsyncTaskX;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->r:Lcom/luajava/LuaObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->r:Lcom/luajava/LuaObject;

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->n:Lcom/luajava/LuaState;

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/luajava/LuaState;->gc(II)I

    :cond_2
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/androlua/LuaAsyncTask;->o:Lcom/androlua/LuaContext;

    const-string v2, "onPostExecute"

    invoke-interface {v1, v2, v0}, Lcom/androlua/LuaContext;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method protected b([Ljava/lang/Object;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->s:Lcom/luajava/LuaObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaAsyncTask;->s:Lcom/luajava/LuaObject;

    invoke-virtual {v0, p1}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/androlua/util/AsyncTaskX;->b([Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/androlua/LuaAsyncTask;->o:Lcom/androlua/LuaContext;

    const-string v2, "onProgressUpdate"

    invoke-interface {v1, v2, v0}, Lcom/androlua/LuaContext;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public execute()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-super {p0, v0}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-void
.end method

.method public gc()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/androlua/util/AsyncTaskX;->getStatus()Lcom/androlua/util/AsyncTaskX$Status;

    move-result-object v0

    sget-object v1, Lcom/androlua/util/AsyncTaskX$Status;->RUNNING:Lcom/androlua/util/AsyncTaskX$Status;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/androlua/util/AsyncTaskX;->cancel(Z)Z

    :cond_0
    iput-boolean v2, p0, Lcom/androlua/LuaAsyncTask;->m:Z

    return-void
.end method

.method public isGc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/androlua/LuaAsyncTask;->m:Z

    return v0
.end method

.method public update(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/androlua/util/AsyncTaskX;->c([Ljava/lang/Object;)V

    return-void
.end method

.method public update(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/androlua/util/AsyncTaskX;->c([Ljava/lang/Object;)V

    return-void
.end method

.method public update(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/androlua/util/AsyncTaskX;->c([Ljava/lang/Object;)V

    return-void
.end method
