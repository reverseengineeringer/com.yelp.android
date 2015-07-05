.class Lcom/yelp/android/ui/activities/nearby/ab;
.super Lcom/yelp/android/appdata/webrequests/j;
.source "NearbyPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/j",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/yelp/android/serializable/YelpCheckIn;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)V
    .locals 0

    .prologue
    .line 700
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/ab;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpCheckIn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 703
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ab;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->d(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 704
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ab;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Ljava/util/List;)V

    .line 705
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 709
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ab;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    sget-object v1, Lcom/yelp/android/util/ErrorType;->LOCATION_SERVICES_DISABLED:Lcom/yelp/android/util/ErrorType;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Lcom/yelp/android/util/ErrorType;)V

    .line 710
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
    .line 715
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ab;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-static {p2}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Lcom/yelp/android/util/ErrorType;)V

    .line 716
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 700
    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/nearby/ab;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/ArrayList;)V

    return-void
.end method
