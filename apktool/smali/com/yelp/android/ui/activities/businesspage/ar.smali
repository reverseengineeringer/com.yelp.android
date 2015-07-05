.class Lcom/yelp/android/ui/activities/businesspage/ar;
.super Landroid/content/BroadcastReceiver;
.source "BusinessPageFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V
    .locals 0

    .prologue
    .line 2222
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/ar;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 2225
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 2226
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ar;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->k(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/reviewpage/bi;

    .line 2227
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/reviewpage/bi;->a(Lcom/yelp/android/serializable/YelpBusinessReview;)V

    goto :goto_0

    .line 2229
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ar;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->l(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/activities/reviewpage/bi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/reviewpage/bi;->a(Lcom/yelp/android/serializable/YelpBusinessReview;)V

    .line 2230
    return-void
.end method
