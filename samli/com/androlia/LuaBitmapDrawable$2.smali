.class Lcom/androlua/LuaBitmapDrawable$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/androlua/GifDecoder$GifAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaBitmapDrawable;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lcom/androlua/LuaBitmapDrawable;


# direct methods
.method constructor <init>(Lcom/androlua/LuaBitmapDrawable;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaBitmapDrawable$2;->b:Lcom/androlua/LuaBitmapDrawable;

    iput-object p2, p0, Lcom/androlua/LuaBitmapDrawable$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseOk(ZI)V
    .locals 2

    if-nez p1, :cond_1

    if-gez p2, :cond_1

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable$2;->b:Lcom/androlua/LuaBitmapDrawable;

    iget-object v1, p0, Lcom/androlua/LuaBitmapDrawable$2;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/androlua/LuaBitmapDrawable;->b(Lcom/androlua/LuaBitmapDrawable;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable$2;->b:Lcom/androlua/LuaBitmapDrawable;

    invoke-static {v0}, Lcom/androlua/LuaBitmapDrawable;->a(Lcom/androlua/LuaBitmapDrawable;)Lcom/androlua/GifDecoder;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable$2;->b:Lcom/androlua/LuaBitmapDrawable;

    invoke-static {v0}, Lcom/androlua/LuaBitmapDrawable;->b(Lcom/androlua/LuaBitmapDrawable;)Lcom/androlua/GifDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/GifDecoder;->getFrameCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable$2;->b:Lcom/androlua/LuaBitmapDrawable;

    invoke-static {v0}, Lcom/androlua/LuaBitmapDrawable;->b(Lcom/androlua/LuaBitmapDrawable;)Lcom/androlua/GifDecoder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androlua/LuaBitmapDrawable;->a(Lcom/androlua/LuaBitmapDrawable;Lcom/androlua/GifDecoder;)Lcom/androlua/GifDecoder;

    goto :goto_0
.end method
