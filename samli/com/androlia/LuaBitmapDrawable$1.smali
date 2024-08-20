.class Lcom/androlua/LuaBitmapDrawable$1;
.super Lcom/androlua/util/AsyncTaskX;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaBitmapDrawable;->a(Lcom/androlua/LuaContext;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androlua/util/AsyncTaskX",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final l:Lcom/androlua/LuaContext;

.field final m:Ljava/lang/String;

.field final n:Lcom/androlua/LuaBitmapDrawable;


# direct methods
.method constructor <init>(Lcom/androlua/LuaBitmapDrawable;Lcom/androlua/LuaContext;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaBitmapDrawable$1;->n:Lcom/androlua/LuaBitmapDrawable;

    iput-object p2, p0, Lcom/androlua/LuaBitmapDrawable$1;->l:Lcom/androlua/LuaContext;

    iput-object p3, p0, Lcom/androlua/LuaBitmapDrawable$1;->m:Ljava/lang/String;

    invoke-direct {p0}, Lcom/androlua/util/AsyncTaskX;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/androlua/LuaBitmapDrawable$1;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable$1;->l:Lcom/androlua/LuaContext;

    iget-object v1, p0, Lcom/androlua/LuaBitmapDrawable$1;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/androlua/LuaBitmapDrawable;->getHttpBitmap(Lcom/androlua/LuaContext;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable$1;->n:Lcom/androlua/LuaBitmapDrawable;

    invoke-static {v0, p1}, Lcom/androlua/LuaBitmapDrawable;->a(Lcom/androlua/LuaBitmapDrawable;Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/androlua/LuaBitmapDrawable$1;->a(Ljava/lang/String;)V

    return-void
.end method
