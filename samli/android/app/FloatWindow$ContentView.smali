.class Landroid/app/FloatWindow$ContentView;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/FloatWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentView"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:I

.field private k:Z

.field final l:Landroid/app/FloatWindow;


# direct methods
.method public constructor <init>(Landroid/app/FloatWindow;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/app/FloatWindow$ContentView;->l:Landroid/app/FloatWindow;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput v0, p0, Landroid/app/FloatWindow$ContentView;->a:I

    iput v0, p0, Landroid/app/FloatWindow$ContentView;->b:I

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p1, v0}, Landroid/app/FloatWindow;->a(Landroid/app/FloatWindow;F)I

    move-result v0

    iput v0, p0, Landroid/app/FloatWindow$ContentView;->j:I

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Landroid/app/FloatWindow$ContentView;->l:Landroid/app/FloatWindow;

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Landroid/app/FloatWindow;->a(Landroid/app/FloatWindow;Z)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/app/FloatWindow$ContentView;->l:Landroid/app/FloatWindow;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/app/FloatWindow$ContentView;->c:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/app/FloatWindow$ContentView;->d:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Landroid/app/FloatWindow$ContentView;->l:Landroid/app/FloatWindow;

    invoke-static {v0, v2}, Landroid/app/FloatWindow;->a(Landroid/app/FloatWindow;Z)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/app/FloatWindow$ContentView;->j:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iput-boolean v4, p0, Landroid/app/FloatWindow$ContentView;->i:Z

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/app/FloatWindow$ContentView;->j:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iput-boolean v4, p0, Landroid/app/FloatWindow$ContentView;->k:Z

    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/app/FloatWindow$ContentView;->e:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/app/FloatWindow$ContentView;->f:I

    iget v0, p0, Landroid/app/FloatWindow$ContentView;->c:I

    iput v0, p0, Landroid/app/FloatWindow$ContentView;->b:I

    iget v0, p0, Landroid/app/FloatWindow$ContentView;->d:I

    iput v0, p0, Landroid/app/FloatWindow$ContentView;->a:I

    iget-object v0, p0, Landroid/app/FloatWindow$ContentView;->l:Landroid/app/FloatWindow;

    invoke-static {v0}, Landroid/app/FloatWindow;->b(Landroid/app/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p0, Landroid/app/FloatWindow$ContentView;->g:I

    iget-object v0, p0, Landroid/app/FloatWindow$ContentView;->l:Landroid/app/FloatWindow;

    invoke-static {v0}, Landroid/app/FloatWindow;->b(Landroid/app/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Landroid/app/FloatWindow$ContentView;->h:I

    :cond_3
    :goto_1
    return v4

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/FloatWindow$ContentView;->l:Landroid/app/FloatWindow;

    invoke-static {v0, v4}, Landroid/app/FloatWindow;->a(Landroid/app/FloatWindow;Z)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Landroid/app/FloatWindow$ContentView;->l:Landroid/app/FloatWindow;

    invoke-static {v0}, Landroid/app/FloatWindow;->b(Landroid/app/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, p0, Landroid/app/FloatWindow$ContentView;->g:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Landroid/app/FloatWindow$ContentView;->l:Landroid/app/FloatWindow;

    invoke-static {v0}, Landroid/app/FloatWindow;->b(Landroid/app/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, p0, Landroid/app/FloatWindow$ContentView;->h:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-boolean v0, p0, Landroid/app/FloatWindow$ContentView;->i:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/app/FloatWindow$ContentView;->l:Landroid/app/FloatWindow;

    invoke-static {v0}, Landroid/app/FloatWindow;->b(Landroid/app/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, p0, Landroid/app/FloatWindow$ContentView;->e:I

    iget v2, p0, Landroid/app/FloatWindow$ContentView;->d:I

    iget v3, p0, Landroid/app/FloatWindow$ContentView;->a:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/app/FloatWindow$ContentView;->l:Landroid/app/FloatWindow;

    invoke-static {v2}, Landroid/app/FloatWindow;->e(Landroid/app/FloatWindow;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_6
    iget-boolean v0, p0, Landroid/app/FloatWindow$ContentView;->k:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/app/FloatWindow$ContentView;->l:Landroid/app/FloatWindow;

    invoke-static {v0}, Landroid/app/FloatWindow;->b(Landroid/app/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, p0, Landroid/app/FloatWindow$ContentView;->f:I

    iget v2, p0, Landroid/app/FloatWindow$ContentView;->c:I

    iget v3, p0, Landroid/app/FloatWindow$ContentView;->b:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/app/FloatWindow$ContentView;->l:Landroid/app/FloatWindow;

    invoke-static {v2}, Landroid/app/FloatWindow;->f(Landroid/app/FloatWindow;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_7
    iget-object v0, p0, Landroid/app/FloatWindow$ContentView;->l:Landroid/app/FloatWindow;

    invoke-static {v0}, Landroid/app/FloatWindow;->d(Landroid/app/FloatWindow;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/FloatWindow$ContentView;->l:Landroid/app/FloatWindow;

    invoke-static {v1}, Landroid/app/FloatWindow;->c(Landroid/app/FloatWindow;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Landroid/app/FloatWindow$ContentView;->l:Landroid/app/FloatWindow;

    invoke-static {v2}, Landroid/app/FloatWindow;->b(Landroid/app/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_3

    iput-boolean v2, p0, Landroid/app/FloatWindow$ContentView;->i:Z

    iput-boolean v2, p0, Landroid/app/FloatWindow$ContentView;->k:Z

    goto/16 :goto_1
.end method
