.class public Lcom/lua/b/b/a/b/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lua/b/b/a/b/m$a;,
        Lcom/lua/b/b/a/b/m$b;
    }
.end annotation


# static fields
.field private static a:Lcom/lua/b/b/a/b/i;

.field private static b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field c:Lcom/lua/b/b/a/b/m$a;

.field private d:Lcom/lua/b/b/a/b/g;

.field private e:Lcom/lua/b/b/a/b/m$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/lua/b/b/a/b/k;->f()Lcom/lua/b/b/a/b/i;

    move-result-object v0

    sput-object v0, Lcom/lua/b/b/a/b/m;->a:Lcom/lua/b/b/a/b/i;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lua/b/b/a/b/m;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/lua/b/b/a/b/m$a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lua/b/b/a/b/m;->c:Lcom/lua/b/b/a/b/m$a;

    iput-object v0, p0, Lcom/lua/b/b/a/b/m;->e:Lcom/lua/b/b/a/b/m$b;

    iput-object p1, p0, Lcom/lua/b/b/a/b/m;->c:Lcom/lua/b/b/a/b/m$a;

    return-void
.end method

.method static synthetic a(Lcom/lua/b/b/a/b/m;)Lcom/lua/b/b/a/b/g;
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/b/m;->d:Lcom/lua/b/b/a/b/g;

    return-object v0
.end method

.method static synthetic a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    sput-object p0, Lcom/lua/b/b/a/b/m;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static a(Lcom/lua/b/b/a/b/i;)V
    .locals 2

    const-class v0, Lcom/lua/b/b/a/b/m;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/lua/b/b/a/b/m;->a:Lcom/lua/b/b/a/b/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v0, Lcom/lua/b/b/a/b/m;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v0

    const-class v1, Lcom/lua/b/b/a/b/m;

    monitor-exit v1

    throw v0
.end method

.method public static c()Lcom/lua/b/b/a/b/i;
    .locals 2

    const-class v0, Lcom/lua/b/b/a/b/m;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/lua/b/b/a/b/m;->a:Lcom/lua/b/b/a/b/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v1, Lcom/lua/b/b/a/b/m;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    const-class v1, Lcom/lua/b/b/a/b/m;

    monitor-exit v1

    throw v0
.end method

.method public static d()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/lua/b/b/a/b/m;->b:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/lua/b/b/a/b/m;->e:Lcom/lua/b/b/a/b/m$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/m$b;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lua/b/b/a/b/m;->e:Lcom/lua/b/b/a/b/m$b;

    :cond_0
    return-void
.end method

.method public a(Lcom/lua/b/b/a/b/g;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/lua/b/b/a/b/m;->d:Lcom/lua/b/b/a/b/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lua/b/b/a/b/q;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/lua/b/b/a/b/m;->c:Lcom/lua/b/b/a/b/m$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/lua/b/b/a/b/m$a;->a(Ljava/util/List;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lua/b/b/a/b/m;->e:Lcom/lua/b/b/a/b/m$b;

    return-void
.end method

.method public b()Lcom/lua/b/b/a/b/g;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lua/b/b/a/b/m;->d:Lcom/lua/b/b/a/b/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/lua/b/b/a/b/g;)V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/lua/c/a/a/a/f;->h:Ljava/lang/String;

    invoke-static {}, Lcom/lua/b/b/a/b/m;->c()Lcom/lua/b/b/a/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lua/b/b/a/b/i;->d()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/lua/b/b/a/b/g;

    invoke-direct {v0, p1}, Lcom/lua/b/b/a/b/g;-><init>(Lcom/lua/b/b/a/b/g;)V

    invoke-virtual {p0, v0}, Lcom/lua/b/b/a/b/m;->a(Lcom/lua/b/b/a/b/g;)V

    invoke-virtual {p0}, Lcom/lua/b/b/a/b/m;->a()V

    :try_start_0
    new-instance v0, Lcom/lua/b/b/a/b/m$b;

    invoke-direct {v0, p0, p0}, Lcom/lua/b/b/a/b/m$b;-><init>(Lcom/lua/b/b/a/b/m;Lcom/lua/b/b/a/b/m;)V

    iput-object v0, p0, Lcom/lua/b/b/a/b/m;->e:Lcom/lua/b/b/a/b/m$b;

    iget-object v0, p0, Lcom/lua/b/b/a/b/m;->e:Lcom/lua/b/b/a/b/m$b;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
