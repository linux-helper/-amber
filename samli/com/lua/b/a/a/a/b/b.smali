.class final Lcom/lua/b/a/a/a/b/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0xc

    new-instance v0, Ljava/lang/String;

    new-array v1, v2, [B

    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/lua/b/a/a/a/a/b;->a([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/lang/String;

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    invoke-static {v2}, Lcom/lua/b/a/a/a/a/b;->a([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lua/b/a/a/a/b/b;->a:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x4dt
        0x7at
        0x41t
        0x79t
        0x4dt
        0x54t
        0x49t
        0x78t
        0x4dt
        0x44t
        0x49t
        0x3dt
    .end array-data

    :array_1
    .array-data 1
        0x5at
        0x47t
        0x6ct
        0x6at
        0x64t
        0x57t
        0x52t
        0x70t
        0x59t
        0x57t
        0x49t
        0x3dt
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/lua/b/a/a/a/b/b;->d:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/lua/b/a/a/a/b/b;->e:I

    return-void
.end method

.method static a(Landroid/content/Context;)Lcom/lua/b/a/a/a/b/b;
    .locals 1

    invoke-static {p0}, Lcom/lua/b/a/a/a/b/b;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/lua/b/a/a/a/b/e;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lua/b/a/a/a/b/b;->a(Ljava/lang/String;)Lcom/lua/b/a/a/a/b/b;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;)Lcom/lua/b/a/a/a/b/b;
    .locals 1

    invoke-static {p0}, Lcom/lua/b/a/a/a/b/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lua/b/a/a/a/b/b;->b(Ljava/lang/String;)Lcom/lua/b/a/a/a/b/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)Z
    .locals 1

    const/16 v0, 0xe

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Ljava/lang/String;)Lcom/lua/b/a/a/a/b/b;
    .locals 12

    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v1, Landroid/util/JsonReader;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    const-string v3, "ZGV2aWNlaWQ="

    invoke-static {v3}, Lcom/lua/b/a/a/a/b/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "dmVy"

    invoke-static {v3}, Lcom/lua/b/a/a/a/b/b;->g(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    const-string v5, "0"

    const-string v3, ""

    move-object v6, v5

    move-object v5, v3

    move v3, v4

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V

    if-ne v3, v4, :cond_5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Landroid/util/JsonReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/lua/b/a/a/a/b/b;

    invoke-direct {v0}, Lcom/lua/b/a/a/a/b/b;-><init>()V

    invoke-virtual {v0, v5}, Lcom/lua/b/a/a/a/b/b;->d(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/lua/b/a/a/a/b/b;->b(I)V

    invoke-virtual {v0}, Lcom/lua/b/a/a/a/b/b;->e()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v6}, Lcom/lua/b/a/a/a/b/b;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/String;->length()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v2

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/lua/b/a/a/a/b/e;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    :goto_4
    if-eqz v1, :cond_7

    :try_start_5
    invoke-virtual {v1}, Landroid/util/JsonReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_7
    :goto_5
    throw v0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/lua/b/a/a/a/b/e;->a(Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_2
    move-exception v1

    move-object v1, v0

    :goto_6
    if-eqz v1, :cond_0

    :try_start_6
    invoke-virtual {v1}, Landroid/util/JsonReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/lua/b/a/a/a/b/e;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_4
    move-exception v2

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_4
.end method

.method static b(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/lua/b/a/a/a/b/b;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "libcuid.so"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/lua/b/a/a/a/b/b;->a:Ljava/lang/String;

    sget-object v2, Lcom/lua/b/a/a/a/b/b;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/lua/b/a/a/a/a/b;->a([B)[B

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/lua/b/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/lua/b/a/a/a/b/e;->a(Ljava/lang/Throwable;)V

    const-string v0, ""

    goto :goto_0
.end method

.method private static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/lua/b/a/a/a/a/b;->a([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method a()Z
    .locals 1

    invoke-virtual {p0}, Lcom/lua/b/a/a/a/b/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "O"

    :goto_0
    iput-object v0, p0, Lcom/lua/b/a/a/a/b/b;->c:Ljava/lang/String;

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/lua/b/a/a/a/b/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "0"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lua/b/a/a/a/b/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/lua/b/a/a/a/b/b;->d:I

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lua/b/a/a/a/b/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lua/b/a/a/a/b/b;->b:Ljava/lang/String;

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/lua/b/a/a/a/b/b;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/lua/b/a/a/a/b/b;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lua/b/a/a/a/b/b;->c:Ljava/lang/String;

    return-void
.end method

.method public e()Z
    .locals 1

    iget v0, p0, Lcom/lua/b/a/a/a/b/b;->d:I

    invoke-static {v0}, Lcom/lua/b/a/a/a/b/b;->a(I)Z

    move-result v0

    return v0
.end method
