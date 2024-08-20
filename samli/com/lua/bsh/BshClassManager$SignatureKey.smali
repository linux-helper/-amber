.class Lcom/lua/bsh/BshClassManager$SignatureKey;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lua/bsh/BshClassManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SignatureKey"
.end annotation


# instance fields
.field a:Ljava/lang/Class;

.field b:[Ljava/lang/Class;

.field c:Ljava/lang/String;

.field d:I


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/lua/bsh/BshClassManager$SignatureKey;->d:I

    iput-object p1, p0, Lcom/lua/bsh/BshClassManager$SignatureKey;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/lua/bsh/BshClassManager$SignatureKey;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/lua/bsh/BshClassManager$SignatureKey;->b:[Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    check-cast p1, Lcom/lua/bsh/BshClassManager$SignatureKey;

    iget-object v2, p0, Lcom/lua/bsh/BshClassManager$SignatureKey;->b:[Ljava/lang/Class;

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/lua/bsh/BshClassManager$SignatureKey;->b:[Ljava/lang/Class;

    if-nez v2, :cond_4

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/lua/bsh/BshClassManager$SignatureKey;->a:Ljava/lang/Class;

    iget-object v3, p1, Lcom/lua/bsh/BshClassManager$SignatureKey;->a:Ljava/lang/Class;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/lua/bsh/BshClassManager$SignatureKey;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/lua/bsh/BshClassManager$SignatureKey;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/lua/bsh/BshClassManager$SignatureKey;->b:[Ljava/lang/Class;

    array-length v2, v2

    iget-object v3, p1, Lcom/lua/bsh/BshClassManager$SignatureKey;->b:[Ljava/lang/Class;

    array-length v3, v3

    if-ne v2, v3, :cond_4

    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/lua/bsh/BshClassManager$SignatureKey;->b:[Ljava/lang/Class;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget-object v4, v3, v2

    if-nez v4, :cond_3

    iget-object v3, p1, Lcom/lua/bsh/BshClassManager$SignatureKey;->b:[Ljava/lang/Class;

    aget-object v3, v3, v2

    if-nez v3, :cond_4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    aget-object v3, v3, v2

    iget-object v4, p1, Lcom/lua/bsh/BshClassManager$SignatureKey;->b:[Ljava/lang/Class;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/lua/bsh/BshClassManager$SignatureKey;->d:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lua/bsh/BshClassManager$SignatureKey;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/lua/bsh/BshClassManager$SignatureKey;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/lua/bsh/BshClassManager$SignatureKey;->d:I

    iget-object v0, p0, Lcom/lua/bsh/BshClassManager$SignatureKey;->b:[Ljava/lang/Class;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/lua/bsh/BshClassManager$SignatureKey;->d:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/lua/bsh/BshClassManager$SignatureKey;->b:[Ljava/lang/Class;

    array-length v2, v1

    if-lt v0, v2, :cond_2

    :cond_1
    iget v0, p0, Lcom/lua/bsh/BshClassManager$SignatureKey;->d:I

    goto :goto_0

    :cond_2
    aget-object v2, v1, v0

    if-nez v2, :cond_3

    const/16 v1, 0x15

    :goto_2
    iget v2, p0, Lcom/lua/bsh/BshClassManager$SignatureKey;->d:I

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/lua/bsh/BshClassManager$SignatureKey;->d:I

    goto :goto_1

    :cond_3
    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2
.end method
