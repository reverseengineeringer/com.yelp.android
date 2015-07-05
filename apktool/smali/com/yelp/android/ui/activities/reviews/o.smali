.class Lcom/yelp/android/ui/activities/reviews/o;
.super Lcom/yelp/android/ui/util/dd;
.source "ActivityReviewWrite.java"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/view/animation/AlphaAnimation;

.field final synthetic c:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;Ljava/lang/String;Landroid/view/animation/AlphaAnimation;)V
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/o;->c:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviews/o;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/reviews/o;->b:Landroid/view/animation/AlphaAnimation;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/dd;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/o;->c:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/o;->c:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->c(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/o;->b:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 512
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/o;->c:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/o;->c:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->c(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    :cond_0
    return-void
.end method
