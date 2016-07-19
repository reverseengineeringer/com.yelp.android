.class Lcom/yelp/android/ui/c;
.super Ljava/lang/Object;
.source "ActivityMonocle.java"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Canvas;

.field private final c:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/c;->c:Landroid/widget/FrameLayout;

    .line 568
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/16 v1, 0x400

    const/4 v4, 0x0

    .line 580
    iget-object v0, p0, Lcom/yelp/android/ui/c;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 581
    iget-object v0, p0, Lcom/yelp/android/ui/c;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v1}, Landroid/widget/FrameLayout;->measure(II)V

    .line 582
    iget-object v0, p0, Lcom/yelp/android/ui/c;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4, v4, v1, v1}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 583
    iget-object v0, p0, Lcom/yelp/android/ui/c;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 585
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 586
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 590
    iget-object v2, p0, Lcom/yelp/android/ui/c;->a:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/yelp/android/ui/c;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/yelp/android/ui/c;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v2, v1, :cond_2

    .line 591
    :cond_0
    iget-object v2, p0, Lcom/yelp/android/ui/c;->a:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 592
    iget-object v2, p0, Lcom/yelp/android/ui/c;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 594
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/yelp/android/ui/c;->a:Landroid/graphics/Bitmap;

    .line 595
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/yelp/android/ui/c;->a:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/yelp/android/ui/c;->b:Landroid/graphics/Canvas;

    .line 603
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 604
    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 605
    iget-object v0, p0, Lcom/yelp/android/ui/c;->b:Landroid/graphics/Canvas;

    invoke-virtual {p1, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 607
    iget-object v0, p0, Lcom/yelp/android/ui/c;->a:Landroid/graphics/Bitmap;

    return-object v0

    .line 600
    :cond_2
    iget-object v2, p0, Lcom/yelp/android/ui/c;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_0
.end method
