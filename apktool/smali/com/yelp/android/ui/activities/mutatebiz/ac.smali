.class Lcom/yelp/android/ui/activities/mutatebiz/ac;
.super Ljava/lang/Object;
.source "MoveBusinessPlacementFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/serializable/Location;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ac;->a:Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/Location;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/Location;",
            ")V"
        }
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ac;->a:Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;->c(Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;)Lcom/yelp/android/ui/util/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ac;->a:Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;

    new-instance v1, Lcom/yelp/android/ui/util/f;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/yelp/android/ui/util/f;-><init>(Ljava/lang/Object;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;->a(Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;Lcom/yelp/android/ui/util/f;)Lcom/yelp/android/ui/util/f;

    .line 397
    :goto_0
    return-void

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ac;->a:Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;->c(Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;)Lcom/yelp/android/ui/util/g;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/yelp/android/ui/util/g;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 3
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
    .line 383
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ac;->a:Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;->c(Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;)Lcom/yelp/android/ui/util/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ac;->a:Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;

    new-instance v1, Lcom/yelp/android/ui/util/f;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2}, Lcom/yelp/android/ui/util/f;-><init>(Ljava/lang/Object;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;->a(Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;Lcom/yelp/android/ui/util/f;)Lcom/yelp/android/ui/util/f;

    .line 388
    :goto_0
    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ac;->a:Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;->c(Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;)Lcom/yelp/android/ui/util/g;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/yelp/android/ui/util/g;->b(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    goto :goto_0
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 379
    check-cast p2, Lcom/yelp/android/serializable/Location;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/mutatebiz/ac;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/Location;)V

    return-void
.end method
