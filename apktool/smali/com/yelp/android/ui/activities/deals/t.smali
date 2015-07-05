.class Lcom/yelp/android/ui/activities/deals/t;
.super Ljava/lang/Object;
.source "ActivityUsedDealsAndOffers.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/deals/ah;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/t;->a:Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/deals/af;)V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/t;->a:Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;->a(Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;Lcom/yelp/android/serializable/YelpDeal;)Lcom/yelp/android/serializable/YelpDeal;

    .line 105
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/t;->a:Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;

    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/deals/af;->a()Lcom/yelp/android/serializable/YelpDeal;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/deals/af;->b()Lcom/yelp/android/serializable/DealPurchase;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;->a(Lcom/yelp/android/serializable/YelpDeal;Lcom/yelp/android/serializable/DealPurchase;)V

    .line 106
    return-void
.end method
