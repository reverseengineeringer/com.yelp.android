.class Lcom/yelp/android/ui/activities/search/y;
.super Ljava/lang/Object;
.source "SearchBusinessesByMap.java"

# interfaces
.implements Lcom/yelp/android/ui/map/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/ui/map/f",
        "<",
        "Lcom/yelp/android/serializable/YelpBusiness;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)V
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/y;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 3

    .prologue
    .line 539
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/y;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->g(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/LocalAd;

    .line 540
    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalAd;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/yelp/android/serializable/YelpBusiness;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 541
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->AdSearchMapClick:Lcom/yelp/android/analytics/iris/EventIri;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/LocalAd;->getIriParams(Z)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/y;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 547
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/y;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/y;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-static {v2, p1, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Landroid/content/Intent;

    move-result-object v0

    const/16 v2, 0x3ed

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->startActivityForResult(Landroid/content/Intent;I)V

    .line 550
    return-void

    .line 546
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/y;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->p()Lcom/yelp/android/appdata/webrequests/SearchRequest;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 534
    check-cast p1, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/search/y;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    return-void
.end method

.method public b(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 3

    .prologue
    .line 554
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/y;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->g(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/LocalAd;

    .line 555
    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalAd;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/yelp/android/serializable/YelpBusiness;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 556
    sget-object v1, Lcom/yelp/android/analytics/iris/AutoIri;->AdSearchMapImpression:Lcom/yelp/android/analytics/iris/AutoIri;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/LocalAd;->getIriParams(Z)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 560
    :cond_1
    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 534
    check-cast p1, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/search/y;->b(Lcom/yelp/android/serializable/YelpBusiness;)V

    return-void
.end method
