.class Lcom/yelp/android/ui/activities/reviewpage/b$1;
.super Ljava/lang/Object;
.source "LocalAdAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/reviewpage/b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/LocalAd;

.field final synthetic b:Lcom/yelp/android/ui/activities/reviewpage/b;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/b;Lcom/yelp/android/serializable/LocalAd;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/b$1;->b:Lcom/yelp/android/ui/activities/reviewpage/b;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviewpage/b$1;->a:Lcom/yelp/android/serializable/LocalAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 84
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->AdBusinessClick:Lcom/yelp/android/analytics/iris/EventIri;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/b$1;->a:Lcom/yelp/android/serializable/LocalAd;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/b$1;->b:Lcom/yelp/android/ui/activities/reviewpage/b;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/reviewpage/b;->a(Lcom/yelp/android/ui/activities/reviewpage/b;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/yelp/android/serializable/LocalAd;->a(Lcom/yelp/android/serializable/YelpBusiness;Z)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/b$1;->a:Lcom/yelp/android/serializable/LocalAd;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalAd;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest$OfflineAttributionEventType;->AD_CLICK:Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest$OfflineAttributionEventType;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest;->a(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest$OfflineAttributionEventType;)Z

    .line 93
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/b$1;->a:Lcom/yelp/android/serializable/LocalAd;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalAd;->b()Lcom/yelp/android/serializable/LocalAdType;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/LocalAdType;->REVIEW:Lcom/yelp/android/serializable/LocalAdType;

    if-ne v0, v1, :cond_0

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/b$1;->a:Lcom/yelp/android/serializable/LocalAd;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/LocalAd;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/b$1;->a:Lcom/yelp/android/serializable/LocalAd;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/LocalAd;->g()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusinessReview;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 108
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/b$1;->a:Lcom/yelp/android/serializable/LocalAd;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/LocalAd;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
