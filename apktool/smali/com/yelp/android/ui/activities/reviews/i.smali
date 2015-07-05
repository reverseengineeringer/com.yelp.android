.class Lcom/yelp/android/ui/activities/reviews/i;
.super Lcom/yelp/android/ui/util/dd;
.source "ActivityReviewComplete.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/h;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/h;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/i;->a:Lcom/yelp/android/ui/activities/reviews/h;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/dd;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/i;->a:Lcom/yelp/android/ui/activities/reviews/h;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/h;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/i;->a:Lcom/yelp/android/ui/activities/reviews/h;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/reviews/h;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;->c(Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;)Lcom/yelp/android/ui/panels/BizAttributesFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 211
    return-void
.end method
