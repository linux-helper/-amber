.class public Lcom/androlua/LuaAssetLoader;
.super Lcom/luajava/JavaFunction;


# instance fields
.field private b:Lcom/luajava/LuaState;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaState;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/luajava/JavaFunction;-><init>(Lcom/luajava/LuaState;)V

    iput-object p2, p0, Lcom/androlua/LuaAssetLoader;->b:Lcom/luajava/LuaState;

    invoke-interface {p1}, Lcom/androlua/LuaContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaAssetLoader;->c:Landroid/content/Context;

    return-void
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 4

    const/16 v1, 0x1000

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v3, v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object v1
.end method


# virtual methods
.method public execute()I
    .locals 5

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/androlua/LuaAssetLoader;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".lua"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/androlua/LuaAssetLoader;->readAsset(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/androlua/LuaAssetLoader;->b:Lcom/luajava/LuaState;

    invoke-virtual {v2, v1, v0}, Lcom/luajava/LuaState;->LloadBuffer([BLjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/androlua/LuaAssetLoader;->b:Lcom/luajava/LuaState;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/androlua/LuaAssetLoader;->b:Lcom/luajava/LuaState;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/androlua/LuaAssetLoader;->b:Lcom/luajava/LuaState;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\tno file \'/assets/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public readAsset(Ljava/lang/String;)[B
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaAssetLoader;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/androlua/LuaAssetLoader;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1
.end method
