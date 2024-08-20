.class public Lcom/lua/b/b/a/a/q$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lua/b/b/a/a/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lua/b/b/a/a/q$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field final d:Z

.field final e:I

.field final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lua/b/b/a/a/r;

    invoke-direct {v0}, Lcom/lua/b/b/a/a/r;-><init>()V

    sput-object v0, Lcom/lua/b/b/a/a/q$c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lua/b/b/a/a/q$c;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lua/b/b/a/a/q$c;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lua/b/b/a/a/q$c;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/lua/b/b/a/a/q$c;->d:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lua/b/b/a/a/q$c;->e:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lua/b/b/a/a/q$c;->f:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/lua/b/b/a/a/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lua/b/b/a/a/q$c;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/lua/b/b/a/a/q;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/lua/b/b/a/a/q;->getCaretPosition()I

    move-result v0

    iput v0, p0, Lcom/lua/b/b/a/a/q$c;->a:I

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/lua/b/b/a/a/q$c;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/lua/b/b/a/a/q$c;->c:I

    invoke-virtual {p1}, Lcom/lua/b/b/a/a/q;->isSelectText()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lua/b/b/a/a/q$c;->d:Z

    invoke-virtual {p1}, Lcom/lua/b/b/a/a/q;->getSelectionStart()I

    move-result v0

    iput v0, p0, Lcom/lua/b/b/a/a/q$c;->e:I

    invoke-virtual {p1}, Lcom/lua/b/b/a/a/q;->getSelectionEnd()I

    move-result v0

    iput v0, p0, Lcom/lua/b/b/a/a/q$c;->f:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/lua/b/b/a/a/q$c;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/lua/b/b/a/a/q$c;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/lua/b/b/a/a/q$c;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/lua/b/b/a/a/q$c;->d:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/lua/b/b/a/a/q$c;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/lua/b/b/a/a/q$c;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
