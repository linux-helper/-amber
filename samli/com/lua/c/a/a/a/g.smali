.class public Lcom/lua/c/a/a/a/g;
.super Lcom/lua/c/a/a/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lua/c/a/a/a/g$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/lua/c/a/a/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lua/c/a/a/a/g;

    invoke-direct {v0}, Lcom/lua/c/a/a/a/g;-><init>()V

    sput-object v0, Lcom/lua/c/a/a/a/g;->b:Lcom/lua/c/a/a/a/g;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/lua/c/a/a/a/a;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/lua/b/b/a/b/h;)Lcom/lua/c/a/a/l;
    .locals 3

    new-instance v0, Lcom/lua/c/a/a/a/g$a;

    invoke-direct {v0}, Lcom/lua/c/a/a/a/g$a;-><init>()V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0, v1, p1, p2}, Lcom/lua/c/a/a/a/g$a;->a(Lcom/lua/c/a/a/a/g$a;Ljava/io/InputStream;Ljava/lang/String;Lcom/lua/b/b/a/b/h;)Lcom/lua/c/a/a/l;

    move-result-object v0

    return-object v0
.end method
