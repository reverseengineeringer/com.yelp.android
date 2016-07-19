.class Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$3;
.super Ljava/lang/Object;
.source "ActivityReviewComplete.java"

# interfaces
.implements Lcom/yelp/android/ui/panels/BizAttributesFragment$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$3;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 263
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$3;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->d(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;)Lcom/yelp/android/ui/panels/BizAttributesFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a()V

    .line 264
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$3$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$3$1;-><init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$3;)V

    .line 274
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$3;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->d(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;)Lcom/yelp/android/ui/panels/BizAttributesFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 275
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$3;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->e(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;)Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 276
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 277
    sget v3, Lcom/yelp/android/ui/util/av;->a:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 278
    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 279
    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 284
    :goto_0
    return-void

    .line 281
    :cond_0
    sget v2, Lcom/yelp/android/ui/util/av;->a:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v0}, Lcom/yelp/android/ui/util/av;->a(Landroid/view/View;IZLcom/yelp/android/ui/util/av$a;)V

    goto :goto_0
.end method
