.class Lcom/yelp/android/ui/activities/search/i;
.super Lcom/yelp/android/util/BasicBroadcastReceiver;
.source "SearchBusinessesByList.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 1232
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/i;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-direct {p0, p2}, Lcom/yelp/android/util/BasicBroadcastReceiver;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 1235
    const-string/jumbo v0, "business_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1236
    const-string/jumbo v0, "offer"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Offer;

    .line 1238
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->getState()Lcom/yelp/android/serializable/Offer$OfferState;

    move-result-object v1

    sget-object v3, Lcom/yelp/android/serializable/Offer$OfferState;->USED:Lcom/yelp/android/serializable/Offer$OfferState;

    if-ne v1, v3, :cond_2

    .line 1240
    :cond_0
    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/i;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/ap;->l()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1241
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/i;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/ap;->l()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v1

    invoke-interface {v1}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getBusinessSearchResults()Ljava/util/List;

    move-result-object v1

    .line 1243
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/BusinessSearchResult;

    .line 1244
    invoke-virtual {v1}, Lcom/yelp/android/serializable/BusinessSearchResult;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    .line 1245
    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1246
    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/YelpBusiness;->setCheckInOffer(Lcom/yelp/android/serializable/Offer;)V

    .line 1252
    :cond_2
    return-void
.end method
