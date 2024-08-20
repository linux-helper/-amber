.class final Lcom/lua/c/a/a/j$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lua/c/a/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:[Lcom/lua/c/a/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x80

    new-array v0, v0, [Lcom/lua/c/a/a/j;

    sput-object v0, Lcom/lua/c/a/a/j$a;->a:[Lcom/lua/c/a/a/j;

    return-void
.end method

.method static synthetic a()[Lcom/lua/c/a/a/j;
    .locals 1

    sget-object v0, Lcom/lua/c/a/a/j$a;->a:[Lcom/lua/c/a/a/j;

    return-object v0
.end method
