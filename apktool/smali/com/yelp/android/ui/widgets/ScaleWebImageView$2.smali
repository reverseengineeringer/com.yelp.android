.class Lcom/yelp/android/ui/widgets/ScaleWebImageView$2;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "ScaleWebImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/widgets/ScaleWebImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView$2;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    .prologue
    .line 307
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView$2;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->a(Lcom/yelp/android/ui/widgets/ScaleWebImageView;FFF)V

    .line 309
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 297
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView$2;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-static {v1}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->d(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 302
    :goto_0
    return v0

    .line 300
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView$2;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->a(Lcom/yelp/android/ui/widgets/ScaleWebImageView;Z)Z

    .line 301
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView$2;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->b(Lcom/yelp/android/ui/widgets/ScaleWebImageView;Z)Z

    .line 302
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x10

    .line 314
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView$2;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->a(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)F

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView$2;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-static {v1}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->b(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 315
    iget-object v6, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView$2;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    new-instance v0, Lcom/yelp/android/ui/widgets/ScaleWebImageView$b;

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView$2;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    iget-object v2, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView$2;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-static {v2}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->b(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)F

    move-result v2

    iget-object v3, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView$2;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-virtual {v3}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView$2;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-virtual {v4}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/widgets/ScaleWebImageView$b;-><init>(Lcom/yelp/android/ui/widgets/ScaleWebImageView;FFFZ)V

    invoke-virtual {v6, v0, v8, v9}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 321
    :goto_0
    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView$2;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    new-instance v1, Lcom/yelp/android/ui/widgets/ScaleWebImageView$a;

    iget-object v2, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView$2;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-direct {v1, v2}, Lcom/yelp/android/ui/widgets/ScaleWebImageView$a;-><init>(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)V

    invoke-virtual {v0, v1, v8, v9}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
