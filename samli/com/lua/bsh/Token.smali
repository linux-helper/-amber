.class public Lcom/lua/bsh/Token;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public beginColumn:I

.field public beginLine:I

.field public endColumn:I

.field public endLine:I

.field public image:Ljava/lang/String;

.field public kind:I

.field public next:Lcom/lua/bsh/Token;

.field public specialToken:Lcom/lua/bsh/Token;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final newToken(I)Lcom/lua/bsh/Token;
    .locals 1

    new-instance v0, Lcom/lua/bsh/Token;

    invoke-direct {v0}, Lcom/lua/bsh/Token;-><init>()V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lua/bsh/Token;->image:Ljava/lang/String;

    return-object v0
.end method
