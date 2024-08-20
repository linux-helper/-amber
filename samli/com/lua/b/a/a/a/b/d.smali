.class public final Lcom/lua/b/a/a/a/b/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/lua/b/a/a/a/b/c;


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lua/b/a/a/a/b/d;->b:Landroid/content/Context;

    return-void
.end method

.method private a()Lcom/lua/b/a/a/a/b/c;
    .locals 2

    iget-object v0, p0, Lcom/lua/b/a/a/a/b/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/lua/b/a/a/a/b/c;->a(Landroid/content/Context;)Lcom/lua/b/a/a/a/b/c;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lua/b/a/a/a/b/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/lua/b/a/a/a/b/b;->a(Landroid/content/Context;)Lcom/lua/b/a/a/a/b/b;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/lua/b/a/a/a/b/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/lua/b/a/a/a/b/c;->b(Landroid/content/Context;)Lcom/lua/b/a/a/a/b/c;

    move-result-object v0

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lua/b/a/a/a/b/d;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/lua/b/a/a/a/b/c;->c(Landroid/content/Context;)Z

    :cond_1
    iget-object v1, p0, Lcom/lua/b/a/a/a/b/d;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/lua/b/a/a/a/b/b;->b(Landroid/content/Context;)Z

    return-object v0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/lua/b/a/a/a/b/b;->a()Z

    invoke-static {v0}, Lcom/lua/b/a/a/a/b/c;->a(Lcom/lua/b/a/a/a/b/b;)Lcom/lua/b/a/a/a/b/c;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/lua/b/a/a/a/b/d;->b(Landroid/content/Context;)Lcom/lua/b/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lua/b/a/a/a/b/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Lcom/lua/b/a/a/a/b/c;
    .locals 2

    sget-object v0, Lcom/lua/b/a/a/a/b/d;->a:Lcom/lua/b/a/a/a/b/c;

    if-nez v0, :cond_1

    const-class v0, Lcom/lua/b/a/a/a/b/c;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/lua/b/a/a/a/b/d;->a:Lcom/lua/b/a/a/a/b/c;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    new-instance v0, Lcom/lua/b/a/a/a/b/d;

    invoke-direct {v0, p0}, Lcom/lua/b/a/a/a/b/d;-><init>(Landroid/content/Context;)V

    invoke-direct {v0}, Lcom/lua/b/a/a/a/b/d;->a()Lcom/lua/b/a/a/a/b/c;

    move-result-object v0

    sput-object v0, Lcom/lua/b/a/a/a/b/d;->a:Lcom/lua/b/a/a/a/b/c;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    :cond_0
    const-class v0, Lcom/lua/b/a/a/a/b/c;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/lua/b/a/a/a/b/d;->a:Lcom/lua/b/a/a/a/b/c;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    const-class v1, Lcom/lua/b/a/a/a/b/c;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
