.class Lcom/yelp/android/ui/activities/deals/k;
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
    .line 213
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/k;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 217
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v0

    .line 218
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DealRedeemCancelled:Lcom/yelp/android/analytics/iris/EventIri;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/k;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->a(Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;)Ljava/util/TreeMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 220
    return-void
.end method
