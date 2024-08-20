.class public Landroid/mengyan/ys/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 7
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 8
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Landroid/mengyan/ys/MainActivity;->setContentView(I)V

    .line 9
    return-void
.end method
