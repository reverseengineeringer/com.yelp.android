.class Lcom/yelp/android/ui/activities/reviews/p;
.super Lcom/yelp/android/ui/util/dd;
.source "ActivityReviewWrite.java"


# instance fields
.field final synthetic a:Landroid/view/animation/AlphaAnimation;

.field final synthetic b:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;Landroid/view/animation/AlphaAnimation;)V
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/p;->b:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviews/p;->a:Landroid/view/animation/AlphaAnimation;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/dd;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/p;->b:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/p;->b:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->c(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/p;->a:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 523
    :goto_0
    return-void

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/p;->b:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->c(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
