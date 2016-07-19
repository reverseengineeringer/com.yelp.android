.class Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$3;
.super Landroid/content/BroadcastReceiver;
.source "ReviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$3;->a:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 229
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->c(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 233
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$3;->a:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->a(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;)Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/YelpBusinessReview;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$3;->a:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->a(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;Lcom/yelp/android/serializable/YelpBusinessReview;)Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$3;->a:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->c(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;)V

    .line 239
    return-void
.end method
