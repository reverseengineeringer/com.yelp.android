.class Lcom/yelp/android/ui/activities/deals/q;
.super Landroid/content/BroadcastReceiver;
.source "ActivityMyDeals.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/q;->a:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 315
    const-string/jumbo v0, "offer"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Offer;

    .line 316
    if-nez v0, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/q;->a:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->a(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/Offer;

    .line 322
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Offer;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 323
    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/q;->a:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->a(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 324
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/q;->a:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->a(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/q;->a:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->b(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;)V

    goto :goto_0
.end method
