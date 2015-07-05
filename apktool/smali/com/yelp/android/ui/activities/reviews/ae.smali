.class Lcom/yelp/android/ui/activities/reviews/ae;
.super Ljava/lang/Object;
.source "ReviewComposeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)V
    .locals 0

    .prologue
    .line 944
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ae;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 957
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ae;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->o(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getReviewCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ae;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ae;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->o(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 960
    :cond_0
    return-void
.end method
