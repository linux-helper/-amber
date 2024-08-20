.class Lcom/lua/bsh/ReturnControl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/lua/bsh/ParserConstants;


# instance fields
.field public kind:I

.field public returnPoint:Lcom/lua/bsh/SimpleNode;

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Lcom/lua/bsh/SimpleNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/lua/bsh/ReturnControl;->kind:I

    iput-object p2, p0, Lcom/lua/bsh/ReturnControl;->value:Ljava/lang/Object;

    iput-object p3, p0, Lcom/lua/bsh/ReturnControl;->returnPoint:Lcom/lua/bsh/SimpleNode;

    return-void
.end method
