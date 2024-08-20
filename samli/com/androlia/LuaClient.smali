.class public Lcom/androlua/LuaClient;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/androlua/LuaGcable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androlua/LuaClient$OnReadLineListener;,
        Lcom/androlua/LuaClient$SocketThread;
    }
.end annotation


# instance fields
.field private a:Lcom/androlua/LuaClient$OnReadLineListener;

.field private b:Ljava/net/Socket;

.field private c:Ljava/io/BufferedReader;

.field private d:Ljava/io/BufferedWriter;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/androlua/LuaContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, p0}, Lcom/androlua/LuaContext;->regGc(Lcom/androlua/LuaGcable;)V

    return-void
.end method

.method static synthetic a(Lcom/androlua/LuaClient;)Ljava/io/BufferedReader;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaClient;->c:Ljava/io/BufferedReader;

    return-object v0
.end method

.method static synthetic b(Lcom/androlua/LuaClient;)Lcom/androlua/LuaClient$OnReadLineListener;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaClient;->a:Lcom/androlua/LuaClient$OnReadLineListener;

    return-object v0
.end method

.method static synthetic c(Lcom/androlua/LuaClient;)Ljava/io/BufferedWriter;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaClient;->d:Ljava/io/BufferedWriter;

    return-object v0
.end method


# virtual methods
.method public flush()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaClient;->d:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public gc()V
    .locals 1

    invoke-virtual {p0}, Lcom/androlua/LuaClient;->stop()Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androlua/LuaClient;->e:Z

    return-void
.end method

.method public isGc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/androlua/LuaClient;->e:Z

    return v0
.end method

.method public newLine()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaClient;->d:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    iget-object v0, p0, Lcom/androlua/LuaClient;->d:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnReadLineListener(Lcom/androlua/LuaClient$OnReadLineListener;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaClient;->a:Lcom/androlua/LuaClient$OnReadLineListener;

    return-void
.end method

.method public start(Ljava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/androlua/LuaClient;->b:Ljava/net/Socket;

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1, p1, p2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/androlua/LuaClient;->b:Ljava/net/Socket;

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/androlua/LuaClient;->b:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lcom/androlua/LuaClient;->c:Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    iget-object v3, p0, Lcom/androlua/LuaClient;->b:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lcom/androlua/LuaClient;->d:Ljava/io/BufferedWriter;

    new-instance v1, Lcom/androlua/LuaClient$SocketThread;

    iget-object v2, p0, Lcom/androlua/LuaClient;->b:Ljava/net/Socket;

    invoke-direct {v1, p0, v2}, Lcom/androlua/LuaClient$SocketThread;-><init>(Lcom/androlua/LuaClient;Ljava/net/Socket;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public stop()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/androlua/LuaClient;->b:Ljava/net/Socket;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public write(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaClient;->d:Ljava/io/BufferedWriter;

    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method
