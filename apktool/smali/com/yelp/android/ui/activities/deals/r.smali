.class Lcom/yelp/android/ui/activities/deals/r;
.super Landroid/content/BroadcastReceiver;
.source "ActivityMyDeals.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/r;->a:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 335
    const-string/jumbo v0, "extra.yelp_deal"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpDeal;

    .line 336
    const-string/jumbo v1, "extra.deal_purchased"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/DealPurchase;

    .line 343
    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/r;->a:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->c(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_0

    .line 344
    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/r;->a:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v3}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->a(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 346
    :cond_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_3

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/r;->a:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->c(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 355
    :cond_2
    :goto_0
    return-void

    .line 349
    :cond_3
    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/r;->a:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->c(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 350
    if-eqz v0, :cond_2

    .line 351
    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/r;->a:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->c(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/YelpDeal;->updatePurchase(Lcom/yelp/android/serializable/DealPurchase;)V

    .line 352
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/r;->a:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->b(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;)V

    goto :goto_0
.end method
