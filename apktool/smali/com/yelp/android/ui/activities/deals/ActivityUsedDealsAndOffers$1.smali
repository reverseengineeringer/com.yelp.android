.class Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers$1;
.super Ljava/lang/Object;
.source "ActivityUsedDealsAndOffers.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/deals/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers$1;->a:Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/deals/b;)V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers$1;->a:Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;->a(Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;Lcom/yelp/android/serializable/YelpDeal;)Lcom/yelp/android/serializable/YelpDeal;

    .line 111
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers$1;->a:Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;

    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/deals/b;->a()Lcom/yelp/android/serializable/YelpDeal;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/deals/b;->b()Lcom/yelp/android/serializable/DealPurchase;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;->a(Lcom/yelp/android/serializable/YelpDeal;Lcom/yelp/android/serializable/DealPurchase;)V

    .line 112
    return-void
.end method
