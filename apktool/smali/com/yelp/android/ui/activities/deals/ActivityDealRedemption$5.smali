.class Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption$5;
.super Ljava/lang/Object;
.source "ActivityDealRedemption.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption$5;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 314
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->DealRedeem:Lcom/yelp/android/analytics/iris/EventIri;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption$5;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->a(Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;)Ljava/util/TreeMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 317
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption$5;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->showDialog(I)V

    .line 318
    return-void
.end method
