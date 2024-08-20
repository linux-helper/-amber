.class public Lcom/lua/bsh/Capabilities$Unavailable;
.super Lcom/lua/bsh/UtilEvalError;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lua/bsh/Capabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Unavailable"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lua/bsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    return-void
.end method
