.class Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$5;
.super Lcom/yelp/android/ui/util/av$a;
.source "ActivityReviewWrite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/animation/AlphaAnimation;

.field final synthetic b:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;Landroid/view/animation/AlphaAnimation;)V
    .locals 0

    .prologue
    .line 570
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$5;->b:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$5;->a:Landroid/view/animation/AlphaAnimation;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/av$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$5;->b:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$5;->b:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->d(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$5;->a:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 578
    :goto_0
    return-void

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$5;->b:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->d(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
