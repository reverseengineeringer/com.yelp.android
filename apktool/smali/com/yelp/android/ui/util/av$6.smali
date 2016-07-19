.class final Lcom/yelp/android/ui/util/av$6;
.super Ljava/lang/Object;
.source "YelpAnimationUtils.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/util/av;->a(Lcom/yelp/android/ui/util/w;Landroid/widget/ListView;Landroid/view/View;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewTreeObserver;

.field final synthetic b:Landroid/widget/ListView;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/yelp/android/ui/util/w;

.field final synthetic e:Ljava/util/HashMap;

.field final synthetic f:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/view/ViewTreeObserver;Landroid/widget/ListView;Landroid/view/View;Lcom/yelp/android/ui/util/w;Ljava/util/HashMap;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/yelp/android/ui/util/av$6;->a:Landroid/view/ViewTreeObserver;

    iput-object p2, p0, Lcom/yelp/android/ui/util/av$6;->b:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/yelp/android/ui/util/av$6;->c:Landroid/view/View;

    iput-object p4, p0, Lcom/yelp/android/ui/util/av$6;->d:Lcom/yelp/android/ui/util/w;

    iput-object p5, p0, Lcom/yelp/android/ui/util/av$6;->e:Ljava/util/HashMap;

    iput-object p6, p0, Lcom/yelp/android/ui/util/av$6;->f:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 368
    iget-object v1, p0, Lcom/yelp/android/ui/util/av$6;->a:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 369
    iget-object v1, p0, Lcom/yelp/android/ui/util/av$6;->b:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 370
    iget-object v1, p0, Lcom/yelp/android/ui/util/av$6;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    move v1, v0

    .line 374
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/av$6;->b:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 375
    iget-object v0, p0, Lcom/yelp/android/ui/util/av$6;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 376
    add-int v0, v2, v1

    .line 377
    iget-object v4, p0, Lcom/yelp/android/ui/util/av$6;->d:Lcom/yelp/android/ui/util/w;

    invoke-virtual {v4, v0}, Lcom/yelp/android/ui/util/w;->getItemId(I)J

    move-result-wide v4

    .line 378
    iget-object v0, p0, Lcom/yelp/android/ui/util/av$6;->e:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 379
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    .line 382
    if-eqz v0, :cond_1

    .line 383
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v4, :cond_0

    .line 384
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v4

    .line 385
    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 386
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget v3, Lcom/yelp/android/ui/util/av;->d:I

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 374
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 392
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v5, p0, Lcom/yelp/android/ui/util/av$6;->b:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v5

    add-int/2addr v0, v5

    .line 396
    if-lez v1, :cond_2

    :goto_2
    add-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v4

    .line 398
    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 399
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget v3, Lcom/yelp/android/ui/util/av;->d:I

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 396
    :cond_2
    neg-int v0, v0

    goto :goto_2

    .line 404
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/util/av$6;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    .line 405
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/ui/util/av$6;->f:Ljava/lang/Runnable;

    sget v2, Lcom/yelp/android/ui/util/av;->d:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 407
    :cond_4
    const/4 v0, 0x1

    return v0
.end method
