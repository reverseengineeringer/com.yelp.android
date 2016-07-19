.class Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$10;
.super Ljava/lang/Object;
.source "SearchBusinessesByMap.java"

# interfaces
.implements Lcom/yelp/android/ui/map/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/ui/map/e$a",
        "<",
        "Lcom/yelp/android/serializable/BusinessSearchResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)V
    .locals 0

    .prologue
    .line 689
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$10;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/BusinessSearchResult;)V
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$10;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a(Lcom/yelp/android/serializable/BusinessSearchResult;)V

    .line 694
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 689
    check-cast p1, Lcom/yelp/android/serializable/BusinessSearchResult;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$10;->a(Lcom/yelp/android/serializable/BusinessSearchResult;)V

    return-void
.end method

.method public b(Lcom/yelp/android/serializable/BusinessSearchResult;)V
    .locals 4

    .prologue
    .line 698
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$10;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->h(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SearchResultLocalAd;

    .line 699
    invoke-virtual {p1}, Lcom/yelp/android/serializable/BusinessSearchResult;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    .line 700
    invoke-virtual {v0}, Lcom/yelp/android/serializable/SearchResultLocalAd;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/yelp/android/serializable/YelpBusiness;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 701
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->AdSearchMapImpression:Lcom/yelp/android/analytics/iris/EventIri;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/yelp/android/serializable/SearchResultLocalAd;->a(Z)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 703
    sget-object v0, Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest$OfflineAttributionEventType;->AD_IMPRESSION:Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest$OfflineAttributionEventType;

    invoke-static {v2, v0}, Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest;->a(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest$OfflineAttributionEventType;)Z

    .line 708
    :cond_1
    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 689
    check-cast p1, Lcom/yelp/android/serializable/BusinessSearchResult;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$10;->b(Lcom/yelp/android/serializable/BusinessSearchResult;)V

    return-void
.end method
