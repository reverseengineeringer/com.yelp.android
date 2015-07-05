.class Lcom/yelp/android/ui/widgets/ak;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ScaleWebImageView.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/ak;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 14

    .prologue
    const-wide/16 v12, 0x10

    const/4 v5, 0x1

    const/4 v11, 0x0

    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ak;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->a(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)F

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ak;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-static {v1}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->b(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ak;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-static {v0, v11}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->a(Lcom/yelp/android/ui/widgets/ScaleWebImageView;Z)Z

    .line 61
    iget-object v6, p0, Lcom/yelp/android/ui/widgets/ak;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    new-instance v0, Lcom/yelp/android/ui/widgets/an;

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ak;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    iget-object v2, p0, Lcom/yelp/android/ui/widgets/ak;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-static {v2}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->b(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/widgets/an;-><init>(Lcom/yelp/android/ui/widgets/ScaleWebImageView;FFFZ)V

    invoke-virtual {v6, v0, v12, v13}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 68
    :cond_0
    :goto_0
    return v5

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ak;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->a(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)F

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ak;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-static {v1}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->b(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ak;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-static {v0, v11}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->a(Lcom/yelp/android/ui/widgets/ScaleWebImageView;Z)Z

    .line 65
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ak;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    new-instance v6, Lcom/yelp/android/ui/widgets/an;

    iget-object v7, p0, Lcom/yelp/android/ui/widgets/ak;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ak;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-static {v1}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->b(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v8, v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-direct/range {v6 .. v11}, Lcom/yelp/android/ui/widgets/an;-><init>(Lcom/yelp/android/ui/widgets/ScaleWebImageView;FFFZ)V

    invoke-virtual {v0, v6, v12, v13}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ak;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->c(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)Lcom/yelp/android/ui/widgets/ao;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ak;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->c(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)Lcom/yelp/android/ui/widgets/ao;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/widgets/ao;->a()V

    .line 76
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
