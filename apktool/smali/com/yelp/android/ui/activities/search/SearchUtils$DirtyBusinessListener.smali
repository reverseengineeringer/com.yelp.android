.class public Lcom/yelp/android/ui/activities/search/SearchUtils$DirtyBusinessListener;
.super Lcom/yelp/android/util/BasicBroadcastReceiver;
.source "SearchUtils.java"


# instance fields
.field private final a:Lcom/yelp/android/appdata/ap;


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/ap;)V
    .locals 1

    .prologue
    .line 74
    const-string/jumbo v0, "com.yelp.android.business.update"

    invoke-static {v0}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/util/BasicBroadcastReceiver;-><init>(Ljava/util/Collection;)V

    .line 76
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchUtils$DirtyBusinessListener;->a:Lcom/yelp/android/appdata/ap;

    .line 77
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 81
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 82
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchUtils$DirtyBusinessListener;->a:Lcom/yelp/android/appdata/ap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchUtils$DirtyBusinessListener;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/ap;->l()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchUtils$DirtyBusinessListener;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/ap;->l()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v1

    invoke-interface {v1}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getBusinessSearchResults()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/yelp/android/serializable/BusinessSearchResult;->replaceBusiness(Ljava/util/List;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 87
    :cond_0
    return-void
.end method
