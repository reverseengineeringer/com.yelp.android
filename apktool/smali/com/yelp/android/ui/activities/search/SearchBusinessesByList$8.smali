.class Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$8;
.super Lcom/yelp/android/util/BasicBroadcastReceiver;
.source "SearchBusinessesByList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;


# direct methods
.method varargs constructor <init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;[Landroid/content/IntentFilter;)V
    .locals 0

    .prologue
    .line 1934
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$8;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-direct {p0, p2}, Lcom/yelp/android/util/BasicBroadcastReceiver;-><init>([Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 1937
    const-string/jumbo v0, "business_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1938
    const-string/jumbo v0, "offer"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Offer;

    .line 1940
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->l()Lcom/yelp/android/serializable/Offer$OfferState;

    move-result-object v1

    sget-object v3, Lcom/yelp/android/serializable/Offer$OfferState;->USED:Lcom/yelp/android/serializable/Offer$OfferState;

    if-ne v1, v3, :cond_2

    .line 1942
    :cond_0
    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$8;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1943
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$8;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v1

    invoke-interface {v1}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->b()Ljava/util/List;

    move-result-object v1

    .line 1946
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/BusinessSearchResult;

    .line 1947
    invoke-virtual {v1}, Lcom/yelp/android/serializable/BusinessSearchResult;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    .line 1948
    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1949
    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/YelpBusiness;->a(Lcom/yelp/android/serializable/Offer;)V

    .line 1955
    :cond_2
    return-void
.end method
