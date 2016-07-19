.class Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$3$1;
.super Lcom/yelp/android/ui/util/av$a;
.source "ActivityReviewComplete.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$3;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$3;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$3;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$3$1;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$3;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/av$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$3$1;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$3;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$3;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$3$1;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$3;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete$3;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->d(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;)Lcom/yelp/android/ui/panels/BizAttributesFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 272
    return-void
.end method
