.class Lcom/yelp/android/ui/activities/nearby/z;
.super Lcom/yelp/android/appdata/webrequests/j;
.source "NearbyPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/j",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/yelp/android/serializable/NearbyRow;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)V
    .locals 0

    .prologue
    .line 656
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/z;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/NearbyRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 659
    new-instance v0, Lcom/yelp/android/analytics/h;

    invoke-direct {v0}, Lcom/yelp/android/analytics/h;-><init>()V

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->NearbyShownSuggestions:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {v0, v1}, Lcom/yelp/android/analytics/h;->a(Lcom/yelp/android/analytics/iris/b;)Lcom/yelp/android/analytics/h;

    move-result-object v0

    check-cast p1, Lcom/yelp/android/av/g;

    invoke-virtual {p1}, Lcom/yelp/android/av/g;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/analytics/h;->a(Ljava/lang/String;)Lcom/yelp/android/analytics/h;

    move-result-object v0

    .line 662
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/analytics/h;->a()Lcom/yelp/android/analytics/g;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/b;)V

    .line 664
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/z;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->b(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 665
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/z;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Ljava/util/List;)V

    .line 666
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 670
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/z;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    sget-object v1, Lcom/yelp/android/util/ErrorType;->LOCATION_SERVICES_DISABLED:Lcom/yelp/android/util/ErrorType;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Lcom/yelp/android/util/ErrorType;)V

    .line 671
    const/4 v0, 0x0

    return v0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 676
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/z;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-static {p2}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Lcom/yelp/android/util/ErrorType;)V

    .line 677
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 656
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/nearby/z;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V

    return-void
.end method
