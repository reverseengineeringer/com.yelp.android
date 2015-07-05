.class final Lcom/yelp/android/ui/util/dc;
.super Ljava/lang/Object;
.source "YelpAnimationUtils.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic a:Landroid/view/ViewTreeObserver;

.field final synthetic b:Landroid/widget/ListView;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/yelp/android/ui/util/au;

.field final synthetic e:Ljava/util/HashMap;

.field final synthetic f:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/view/ViewTreeObserver;Landroid/widget/ListView;Landroid/view/View;Lcom/yelp/android/ui/util/au;Ljava/util/HashMap;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/yelp/android/ui/util/dc;->a:Landroid/view/ViewTreeObserver;

    iput-object p2, p0, Lcom/yelp/android/ui/util/dc;->b:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/yelp/android/ui/util/dc;->c:Landroid/view/View;

    iput-object p4, p0, Lcom/yelp/android/ui/util/dc;->d:Lcom/yelp/android/ui/util/au;

    iput-object p5, p0, Lcom/yelp/android/ui/util/dc;->e:Ljava/util/HashMap;

    iput-object p6, p0, Lcom/yelp/android/ui/util/dc;->f:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 294
    iget-object v1, p0, Lcom/yelp/android/ui/util/dc;->a:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 296
    iget-object v1, p0, Lcom/yelp/android/ui/util/dc;->b:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 297
    iget-object v1, p0, Lcom/yelp/android/ui/util/dc;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    move v1, v0

    .line 301
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/dc;->b:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 302
    iget-object v0, p0, Lcom/yelp/android/ui/util/dc;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 303
    add-int v0, v2, v1

    .line 304
    iget-object v4, p0, Lcom/yelp/android/ui/util/dc;->d:Lcom/yelp/android/ui/util/au;

    invoke-virtual {v4, v0}, Lcom/yelp/android/ui/util/au;->getItemId(I)J

    move-result-wide v4

    .line 305
    iget-object v0, p0, Lcom/yelp/android/ui/util/dc;->e:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 306
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    .line 309
    if-eqz v0, :cond_1

    .line 310
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v4, :cond_0

    .line 311
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v4

    .line 312
    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 313
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget v3, Lcom/yelp/android/ui/util/cw;->d:I

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 301
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 319
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v5, p0, Lcom/yelp/android/ui/util/dc;->b:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v5

    add-int/2addr v0, v5

    .line 323
    if-lez v1, :cond_2

    :goto_2
    add-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v4

    .line 325
    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 326
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget v3, Lcom/yelp/android/ui/util/cw;->d:I

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 323
    :cond_2
    neg-int v0, v0

    goto :goto_2

    .line 331
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/util/dc;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    .line 332
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/ui/util/dc;->f:Ljava/lang/Runnable;

    sget v2, Lcom/yelp/android/ui/util/cw;->d:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 334
    :cond_4
    const/4 v0, 0x1

    return v0
.end method
