.class Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$12;
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
    .line 2102
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$12;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-direct {p0, p2}, Lcom/yelp/android/util/BasicBroadcastReceiver;-><init>([Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 2105
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 2106
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$12;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$12;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2109
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$12;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->b(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 2111
    :cond_0
    return-void
.end method
