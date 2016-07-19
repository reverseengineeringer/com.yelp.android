.class Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$4;
.super Landroid/content/BroadcastReceiver;
.source "ActivityMyDeals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$4;->a:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 354
    const-string/jumbo v0, "extra.yelp_deal"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpDeal;

    .line 355
    const-string/jumbo v1, "extra.deal_purchased"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/DealPurchase;

    .line 362
    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$4;->a:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->c(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_0

    .line 363
    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$4;->a:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v3}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->a(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 365
    :cond_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_3

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$4;->a:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->c(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 374
    :cond_2
    :goto_0
    return-void

    .line 368
    :cond_3
    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$4;->a:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->c(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 369
    if-eqz v0, :cond_2

    .line 370
    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$4;->a:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->c(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/YelpDeal;->a(Lcom/yelp/android/serializable/DealPurchase;)V

    .line 371
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$4;->a:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->b(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;)V

    goto :goto_0
.end method
