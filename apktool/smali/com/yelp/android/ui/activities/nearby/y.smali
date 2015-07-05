.class Lcom/yelp/android/ui/activities/nearby/y;
.super Lcom/yelp/android/appdata/webrequests/j;
.source "NearbyPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/j",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/yelp/android/serializable/RichSearchSuggestion;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)V
    .locals 0

    .prologue
    .line 629
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/y;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/RichSearchSuggestion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 632
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/y;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/nearby/y;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->b(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)Lcom/yelp/android/ui/activities/nearby/s;

    invoke-static {p2}, Lcom/yelp/android/ui/activities/nearby/s;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 633
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/y;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/y;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->c(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Ljava/util/List;)V

    .line 634
    return-void
.end method

.method public a()Z
    .locals 4

    .prologue
    .line 638
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/y;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    sget-object v1, Lcom/yelp/android/util/ErrorType;->LOCATION_SERVICES_DISABLED:Lcom/yelp/android/util/ErrorType;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Lcom/yelp/android/util/ErrorType;)V

    .line 641
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/y;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->b(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)Lcom/yelp/android/ui/activities/nearby/s;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/nearby/y;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/nearby/y;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->d(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)Lcom/yelp/android/appdata/webrequests/du;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Lcom/yelp/android/av/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/nearby/s;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 642
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/y;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->j()V

    .line 643
    const/4 v0, 0x0

    return v0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 4
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
    .line 648
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/y;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-static {p2}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Lcom/yelp/android/util/ErrorType;)V

    .line 651
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/y;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->b(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)Lcom/yelp/android/ui/activities/nearby/s;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/nearby/y;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/nearby/y;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->d(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)Lcom/yelp/android/appdata/webrequests/du;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Lcom/yelp/android/av/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/nearby/s;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 652
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/y;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->j()V

    .line 653
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 629
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/nearby/y;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V

    return-void
.end method
