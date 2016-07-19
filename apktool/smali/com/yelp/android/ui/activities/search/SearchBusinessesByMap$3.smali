.class Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$3;
.super Lcom/yelp/android/util/BasicBroadcastReceiver;
.source "SearchBusinessesByMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;


# direct methods
.method varargs constructor <init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;[Landroid/content/IntentFilter;)V
    .locals 0

    .prologue
    .line 947
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$3;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-direct {p0, p2}, Lcom/yelp/android/util/BasicBroadcastReceiver;-><init>([Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 950
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 951
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$3;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$3;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$3;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v1

    invoke-interface {v1}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 956
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$3;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v1

    invoke-interface {v1}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->b()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/yelp/android/serializable/BusinessSearchResult;->a(Ljava/util/List;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 960
    :cond_0
    return-void
.end method
