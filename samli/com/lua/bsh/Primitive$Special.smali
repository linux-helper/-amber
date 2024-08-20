.class Lcom/lua/bsh/Primitive$Special;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lua/bsh/Primitive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Special"
.end annotation


# static fields
.field public static final NULL_VALUE:Lcom/lua/bsh/Primitive$Special;

.field public static final VOID_TYPE:Lcom/lua/bsh/Primitive$Special;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lua/bsh/Primitive$Special;

    invoke-direct {v0}, Lcom/lua/bsh/Primitive$Special;-><init>()V

    sput-object v0, Lcom/lua/bsh/Primitive$Special;->NULL_VALUE:Lcom/lua/bsh/Primitive$Special;

    new-instance v0, Lcom/lua/bsh/Primitive$Special;

    invoke-direct {v0}, Lcom/lua/bsh/Primitive$Special;-><init>()V

    sput-object v0, Lcom/lua/bsh/Primitive$Special;->VOID_TYPE:Lcom/lua/bsh/Primitive$Special;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
