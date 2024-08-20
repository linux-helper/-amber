.class public Lcom/androlua/Http;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androlua/Http$HttpTask;
    }
.end annotation


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    :try_start_0
    const-string v0, "SSL"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    new-instance v1, Lcom/androlua/Http$1;

    invoke-direct {v1}, Lcom/androlua/Http$1;-><init>()V

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljavax/net/ssl/TrustManager;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v0, v3, v4, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    new-instance v1, Lcom/androlua/Http$2;

    invoke-direct {v1}, Lcom/androlua/Http$2;-><init>()V

    invoke-static {v1}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/androlua/Http;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method private static a(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    if-nez p2, :cond_0

    const-string p2, "UTF-8"

    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :try_start_0
    const-string v3, "--%s\r\nContent-Disposition:form-data;name=\"%s\"\r\n\r\n%s\r\n"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "----q1w2e3r4t5y6u7i8o9p0a1s2d3f4g5h6j7k8l9z0x1c2v3b4n5m6"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :try_start_1
    const-string v3, "--%s\r\nContent-Disposition:form-data;name=\"%s\";filename=\"%s\"\r\nContent-Type:application/octet-stream\r\n\r\n"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "----q1w2e3r4t5y6u7i8o9p0a1s2d3f4g5h6j7k8l9z0x1c2v3b4n5m6"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-instance v3, Ljava/io/FileInputStream;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/androlua/LuaUtil;->readAll(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string v0, "\r\n"

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_2
    :try_start_2
    const-string v0, "--%s--\r\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "----q1w2e3r4t5y6u7i8o9p0a1s2d3f4g5h6j7k8l9z0x1c2v3b4n5m6"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static delete(Ljava/lang/String;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;
    .locals 7

    const/4 v3, 0x0

    new-instance v0, Lcom/androlua/Http$HttpTask;

    const-string v2, "DELETE"

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/androlua/Http$HttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-object v0
.end method

.method public static delete(Ljava/lang/String;Ljava/lang/String;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;
    .locals 11

    const/4 v3, 0x0

    const-string v0, "[\\w\\-\\.:]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/androlua/Http$HttpTask;

    const-string v2, "DELETE"

    move-object v1, p0

    move-object v4, p1

    move-object v5, v3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/androlua/Http$HttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)V

    :goto_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-object v0

    :cond_0
    new-instance v4, Lcom/androlua/Http$HttpTask;

    const-string v6, "DELETE"

    move-object v5, p0

    move-object v7, p1

    move-object v8, v3

    move-object v9, v3

    move-object v10, p2

    invoke-direct/range {v4 .. v10}, Lcom/androlua/Http$HttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)V

    move-object v0, v4

    goto :goto_0
.end method

.method public static delete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;
    .locals 7

    new-instance v0, Lcom/androlua/Http$HttpTask;

    const-string v2, "DELETE"

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/androlua/Http$HttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-object v0
.end method

.method public static delete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/luajava/LuaObject;",
            ")",
            "Lcom/androlua/Http$HttpTask;"
        }
    .end annotation

    new-instance v0, Lcom/androlua/Http$HttpTask;

    const-string v2, "DELETE"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/androlua/Http$HttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-object v0
.end method

.method public static delete(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/luajava/LuaObject;",
            ")",
            "Lcom/androlua/Http$HttpTask;"
        }
    .end annotation

    const/4 v3, 0x0

    const-string v0, "[\\w\\-\\.:]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/androlua/Http$HttpTask;

    const-string v2, "DELETE"

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/androlua/Http$HttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)V

    :goto_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-object v0

    :cond_0
    new-instance v4, Lcom/androlua/Http$HttpTask;

    const-string v6, "DELETE"

    move-object v5, p0

    move-object v7, p1

    move-object v8, v3

    move-object v9, p2

    move-object v10, p3

    invoke-direct/range {v4 .. v10}, Lcom/androlua/Http$HttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)V

    move-object v0, v4

    goto :goto_0
.end method

.method public static delete(Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/luajava/LuaObject;",
            ")",
            "Lcom/androlua/Http$HttpTask;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Lcom/androlua/Http$HttpTask;

    const-string v2, "DELETE"

    move-object v1, p0

    move-object v4, v3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/androlua/Http$HttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-object v0
.end method

.method public static download(Ljava/lang/String;Ljava/lang/String;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;
    .locals 7

    const/4 v3, 0x0

    new-instance v0, Lcom/androlua/Http$HttpTask;

    const-string v2, "GET"

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/androlua/Http$HttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-object v0
.end method

.method public static download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;
    .locals 7

    const/4 v4, 0x0

    new-instance v0, Lcom/androlua/Http$HttpTask;

    const-string v2, "GET"

    move-object v1, p0

    move-object v3, p2

    move-object v5, v4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/androlua/Http$HttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-object v0
.end method

.method public static download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/luajava/LuaObject;",
            ")",
            "Lcom/androlua/Http$HttpTask;"
        }
    .end annotation

    new-instance v0, Lcom/androlua/Http$HttpTask;

    const-string v2, "GET"

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/androlua/Http$HttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-object v0
.end method

.method public static download(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/luajava/LuaObject;",
            ")",
            "Lcom/androlua/Http$HttpTask;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Lcom/androlua/Http$HttpTask;

    const-string v2, "GET"

    move-object v1, p0

    move-object v4, v3

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/androlua/Http$HttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-object v0
.end method

.method public static get(Ljava/lang/String;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;
    .locals 7

    const/4 v3, 0x0

    new-instance v0, Lcom/androlua/Http$HttpTask;

    const-string v2, "GET"

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/androlua/Http$HttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-object v0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;
    .locals 11

    const/4 v3, 0x0

    const-string v0, "[\\w\\-\\.:]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/androlua/Http$HttpTask;

    const-string v2, "GET"

    move-object v1, p0

    move-object v4, p1

    move-object v5, v3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/androlua/Http$HttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)V

    :goto_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-object v0

    :cond_0
    new-instance v4, Lcom/androlua/Http$HttpTask;

    const-string v6, "GET"

    move-object v5, p0

    move-object v7, p1

    move-object v8, v3

    move-object v9, v3

    move-object v10, p2

    invoke-direct/range {v4 .. v10}, Lcom/androlua/Http$HttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)V

    move-object v0, v4

    goto :goto_0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;
    .locals 7

    new-instance v0, Lcom/androlua/Http$HttpTask;

    const-string v2, "GET"

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/androlua/Http$HttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-object v0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/luajava/LuaObject;",
            ")",
            "Lcom/androlua/Http$HttpTask;"
        }
    .end annotation

    new-instance v0, Lcom/androlua/Http$HttpTask;

    const-string v2, "GET"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/androlua/Http$HttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-object v0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/luajava/LuaObject;",
            ")",
            "Lcom/androlua/Http$HttpTask;"
        }
    .end annotation

    const/4 v3, 0x0

    const-string v0, "[\\w\\-\\.:]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/androlua/Http$HttpTask;

    const-string v2, "GET"

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/androlua/Http$HttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)V

    :goto_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-object v0

    :cond_0
    new-instance v4, Lcom/androlua/Http$HttpTask;

    const-string v6, "GET"

    move-object v5, p0

    move-object v7, p1

    move-object v8, v3

    move-object v9, p2

    move-object v10, p3

    invoke-direct/range {v4 .. v10}, Lcom/androlua/Http$HttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)V

    move-object v0, v4

    goto :goto_0
.end method

.method public static get(Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/luajava/LuaObject;",
            ")",
            "Lcom/androlua/Http$HttpTask;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Lcom/androlua/Http$HttpTask;

    const-string v2, "GET"

    move-object v1, p0

    move-object v4, v3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/androlua/Http$HttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-object v0
.end method

.method public static getHeader()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/androlua/Http;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method public static post(Ljava/lang/String;Ljava/lang/String;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;
    .locals 7

    const/4 v3, 0x0

    new-instance v0, Lcom/androlua/Http$HttpTask;

    const-string v2, "POST"

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/androlua/Http$HttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-object v0
.end method

.method public static post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;
    .locals 11

    const/4 v3, 0x0

    const-string v0, "[\\w\\-.:]+"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/androlua/Http$HttpTask;

    const-string v2, "POST"

    move-object v1, p0

    move-object v4, p2

    move-object v5, v3

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/androlua/Http$HttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)V

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-object v0

    :cond_0
    new-instance v4, Lcom/androlua/Http$HttpTask;

    const-string v6, "POST"

    move-object v5, p0

    move-object v7, p2

    move-object v8, v3

    move-object v9, v3

    move-object v10, p3

    invoke-direct/range {v4 .. v10}, Lcom/androlua/Http$HttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)V

    move-object v0, v4

    goto :goto_0
.end method

.method public static post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;
    .locals 7

    new-instance v0, Lcom/androlua/Http$HttpTask;

    const-string v2, "POST"

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/androlua/Http$HttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-object v0
.end method

.method public static post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/luajava/LuaObject;",
            ")",
            "Lcom/androlua/Http$HttpTask;"
        }
    .end annotation

    new-instance v0, Lcom/androlua/Http$HttpTask;

    const-string v2, "POST"

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/androlua/Http$HttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-object v0
.end method

.method public static post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/luajava/LuaObject;",
            ")",
            "Lcom/androlua/Http$HttpTask;"
        }
    .end annotation

    const/4 v3, 0x0

    const-string v0, "[\\w\\-.:]+"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/androlua/Http$HttpTask;

    const-string v2, "POST"

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/androlua/Http$HttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)V

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-object v0

    :cond_0
    new-instance v4, Lcom/androlua/Http$HttpTask;

    const-string v6, "POST"

    move-object v5, p0

    move-object v7, p2

    move-object v8, v3

    move-object v9, p3

    move-object v10, p4

    invoke-direct/range {v4 .. v10}, Lcom/androlua/Http$HttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)V

    move-object v0, v4

    goto :goto_0
.end method

.method public static post(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/luajava/LuaObject;",
            ")",
            "Lcom/androlua/Http$HttpTask;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Lcom/androlua/Http$HttpTask;

    const-string v2, "POST"

    move-object v1, p0

    move-object v4, v3

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/androlua/Http$HttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-object v0
.end method

.method public static post(Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/luajava/LuaObject;",
            ")",
            "Lcom/androlua/Http$HttpTask;"
        }
    .end annotation

    invoke-static {p1}, Lcom/androlua/Http;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/androlua/Http;->post(Ljava/lang/String;Ljava/lang/String;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;

    move-result-object v0

    return-object v0
.end method

.method public static post(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/luajava/LuaObject;",
            ")",
            "Lcom/androlua/Http$HttpTask;"
        }
    .end annotation

    invoke-static {p1}, Lcom/androlua/Http;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/androlua/Http;->post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;

    move-result-object v0

    return-object v0
.end method

.method public static post(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/luajava/LuaObject;",
            ")",
            "Lcom/androlua/Http$HttpTask;"
        }
    .end annotation

    invoke-static {p1}, Lcom/androlua/Http;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3, p4}, Lcom/androlua/Http;->post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;

    move-result-object v0

    return-object v0
.end method

.method public static post(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/luajava/LuaObject;",
            ")",
            "Lcom/androlua/Http$HttpTask;"
        }
    .end annotation

    invoke-static {p1}, Lcom/androlua/Http;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/androlua/Http;->post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;

    move-result-object v0

    return-object v0
.end method

.method public static post(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/luajava/LuaObject;",
            ")",
            "Lcom/androlua/Http$HttpTask;"
        }
    .end annotation

    invoke-static {p1}, Lcom/androlua/Http;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3, p4}, Lcom/androlua/Http;->post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;

    move-result-object v0

    return-object v0
.end method

.method public static post(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/luajava/LuaObject;",
            ")",
            "Lcom/androlua/Http$HttpTask;"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/androlua/Http;->post(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;

    move-result-object v0

    return-object v0
.end method

.method public static post(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/luajava/LuaObject;",
            ")",
            "Lcom/androlua/Http$HttpTask;"
        }
    .end annotation

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/androlua/Http;->post(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;

    move-result-object v0

    return-object v0
.end method

.method public static post(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/luajava/LuaObject;",
            ")",
            "Lcom/androlua/Http$HttpTask;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/androlua/Http;->post(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;

    move-result-object v0

    return-object v0
.end method

.method public static post(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/luajava/LuaObject;",
            ")",
            "Lcom/androlua/Http$HttpTask;"
        }
    .end annotation

    if-nez p5, :cond_0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    :goto_0
    const-string v0, "Content-Type"

    const-string v1, "multipart/form-data;boundary=----q1w2e3r4t5y6u7i8o9p0a1s2d3f4g5h6j7k8l9z0x1c2v3b4n5m6"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/androlua/Http$HttpTask;

    const-string v2, "POST"

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/androlua/Http$HttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2, p4}, Lcom/androlua/Http;->a(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-object v0

    :cond_0
    move-object v5, p5

    goto :goto_0
.end method

.method public static post(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/luajava/LuaObject;",
            ")",
            "Lcom/androlua/Http$HttpTask;"
        }
    .end annotation

    const/4 v4, 0x0

    const-string v0, "[\\w\\-.:]+"

    invoke-virtual {p3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/androlua/Http;->post(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Lcom/androlua/Http;->post(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;

    move-result-object v0

    goto :goto_0
.end method

.method public static post(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/luajava/LuaObject;",
            ")",
            "Lcom/androlua/Http$HttpTask;"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/androlua/Http;->post(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;

    move-result-object v0

    return-object v0
.end method

.method public static put(Ljava/lang/String;Ljava/lang/String;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;
    .locals 7

    const/4 v3, 0x0

    new-instance v0, Lcom/androlua/Http$HttpTask;

    const-string v2, "PUT"

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/androlua/Http$HttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-object v0
.end method

.method public static put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;
    .locals 11

    const/4 v3, 0x0

    const-string v0, "[\\w\\-\\.:]+"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/androlua/Http$HttpTask;

    const-string v2, "PUT"

    move-object v1, p0

    move-object v4, p2

    move-object v5, v3

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/androlua/Http$HttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)V

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-object v0

    :cond_0
    new-instance v4, Lcom/androlua/Http$HttpTask;

    const-string v6, "PUT"

    move-object v5, p0

    move-object v7, p2

    move-object v8, v3

    move-object v9, v3

    move-object v10, p3

    invoke-direct/range {v4 .. v10}, Lcom/androlua/Http$HttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)V

    move-object v0, v4

    goto :goto_0
.end method

.method public static put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;
    .locals 7

    new-instance v0, Lcom/androlua/Http$HttpTask;

    const-string v2, "PUT"

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/androlua/Http$HttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-object v0
.end method

.method public static put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/luajava/LuaObject;",
            ")",
            "Lcom/androlua/Http$HttpTask;"
        }
    .end annotation

    new-instance v0, Lcom/androlua/Http$HttpTask;

    const-string v2, "PUT"

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/androlua/Http$HttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-object v0
.end method

.method public static put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/luajava/LuaObject;",
            ")",
            "Lcom/androlua/Http$HttpTask;"
        }
    .end annotation

    const/4 v3, 0x0

    const-string v0, "[\\w\\-\\.:]+"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/androlua/Http$HttpTask;

    const-string v2, "PUT"

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/androlua/Http$HttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)V

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-object v0

    :cond_0
    new-instance v4, Lcom/androlua/Http$HttpTask;

    const-string v6, "PUT"

    move-object v5, p0

    move-object v7, p2

    move-object v8, v3

    move-object v9, p3

    move-object v10, p4

    invoke-direct/range {v4 .. v10}, Lcom/androlua/Http$HttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)V

    move-object v0, v4

    goto :goto_0
.end method

.method public static put(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)Lcom/androlua/Http$HttpTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/luajava/LuaObject;",
            ")",
            "Lcom/androlua/Http$HttpTask;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Lcom/androlua/Http$HttpTask;

    const-string v2, "PUT"

    move-object v1, p0

    move-object v4, v3

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/androlua/Http$HttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/luajava/LuaObject;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-object v0
.end method

.method public static setCookie(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/androlua/Http;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/androlua/Http;->a:Ljava/util/HashMap;

    :cond_0
    sget-object v0, Lcom/androlua/Http;->a:Ljava/util/HashMap;

    const-string v1, "Cookie"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setHeader(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sput-object p0, Lcom/androlua/Http;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static setReferer(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/androlua/Http;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/androlua/Http;->a:Ljava/util/HashMap;

    :cond_0
    sget-object v0, Lcom/androlua/Http;->a:Ljava/util/HashMap;

    const-string v1, "Referer"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setUserAgent(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/androlua/Http;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/androlua/Http;->a:Ljava/util/HashMap;

    :cond_0
    sget-object v0, Lcom/androlua/Http;->a:Ljava/util/HashMap;

    const-string v1, "User-Agent"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
