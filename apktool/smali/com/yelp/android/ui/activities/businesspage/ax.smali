.class Lcom/yelp/android/ui/activities/businesspage/ax;
.super Landroid/content/BroadcastReceiver;
.source "BusinessPageFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V
    .locals 0

    .prologue
    .line 2313
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/ax;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 2316
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->c(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2318
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 2319
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ax;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->k(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/reviewpage/bi;

    .line 2320
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/reviewpage/bi;->a(Lcom/yelp/android/serializable/YelpBusinessReview;)V

    goto :goto_1

    .line 2322
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ax;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->l(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/activities/reviewpage/bi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/reviewpage/bi;->a(Lcom/yelp/android/serializable/YelpBusinessReview;)V

    .line 2323
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ax;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->g(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 2324
    if-ltz v1, :cond_0

    .line 2325
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/ax;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->g(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2328
    :cond_2
    return-void
.end method
