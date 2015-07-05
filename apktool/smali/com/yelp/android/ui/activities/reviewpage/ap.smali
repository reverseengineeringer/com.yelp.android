.class Lcom/yelp/android/ui/activities/reviewpage/ap;
.super Landroid/content/BroadcastReceiver;
.source "ReviewFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/ap;->a:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 222
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->c(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 226
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ap;->a:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->a(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;)Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/YelpBusinessReview;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ap;->a:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->a(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;Lcom/yelp/android/serializable/YelpBusinessReview;)Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ap;->a:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->c(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;)V

    .line 232
    return-void
.end method
