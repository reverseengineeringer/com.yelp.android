.class Lcom/yelp/android/ui/activities/reviewpage/ac;
.super Ljava/lang/Object;
.source "LocalAdAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/LocalAd;

.field final synthetic b:Lcom/yelp/android/ui/activities/reviewpage/ab;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/ab;Lcom/yelp/android/serializable/LocalAd;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/ac;->b:Lcom/yelp/android/ui/activities/reviewpage/ab;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviewpage/ac;->a:Lcom/yelp/android/serializable/LocalAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 71
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->AdBusinessClick:Lcom/yelp/android/analytics/iris/EventIri;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ac;->a:Lcom/yelp/android/serializable/LocalAd;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ac;->b:Lcom/yelp/android/ui/activities/reviewpage/ab;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/reviewpage/ab;->a(Lcom/yelp/android/ui/activities/reviewpage/ab;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/yelp/android/serializable/LocalAd;->getIriParams(Lcom/yelp/android/serializable/YelpBusiness;Z)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 76
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ac;->a:Lcom/yelp/android/serializable/LocalAd;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalAd;->getLocalAdType()Lcom/yelp/android/serializable/LocalAdType;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/LocalAdType;->REVIEW:Lcom/yelp/android/serializable/LocalAdType;

    if-ne v0, v1, :cond_0

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ac;->a:Lcom/yelp/android/serializable/LocalAd;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/LocalAd;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ac;->a:Lcom/yelp/android/serializable/LocalAd;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/LocalAd;->getReview()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusinessReview;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 87
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ac;->a:Lcom/yelp/android/serializable/LocalAd;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/LocalAd;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
