.class final Lcom/lua/b/b/a/a/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lua/b/b/a/a/q$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/lua/b/b/a/a/q$c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lua/b/b/a/a/q$c;
    .locals 2

    new-instance v0, Lcom/lua/b/b/a/a/q$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/lua/b/b/a/a/q$c;-><init>(Landroid/os/Parcel;Lcom/lua/b/b/a/a/g;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/lua/b/b/a/a/r;->createFromParcel(Landroid/os/Parcel;)Lcom/lua/b/b/a/a/q$c;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lua/b/b/a/a/q$c;
    .locals 1

    new-array v0, p1, [Lcom/lua/b/b/a/a/q$c;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/lua/b/b/a/a/r;->newArray(I)[Lcom/lua/b/b/a/a/q$c;

    move-result-object v0

    return-object v0
.end method
