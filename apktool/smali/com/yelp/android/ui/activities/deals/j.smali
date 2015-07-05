.class Lcom/yelp/android/ui/activities/deals/j;
.super Ljava/lang/Object;
.source "ActivityDealRedemption.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/j;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 225
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v0

    .line 226
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DealRedeemConfirmed:Lcom/yelp/android/analytics/iris/EventIri;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/j;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->a(Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;)Ljava/util/TreeMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 227
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/j;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;

    new-instance v1, Lcom/yelp/android/appdata/webrequests/bi;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/j;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->b(Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;)Lcom/yelp/android/serializable/DealPurchase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/DealPurchase;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/j;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;

    invoke-direct {v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/bi;-><init>(Ljava/lang/String;Lcom/yelp/android/av/i;)V

    iput-object v1, v0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->b:Lcom/yelp/android/appdata/webrequests/bi;

    .line 228
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/j;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->b:Lcom/yelp/android/appdata/webrequests/bi;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/bi;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 229
    return-void
.end method
