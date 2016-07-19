.class Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$2;
.super Ljava/lang/Object;
.source "MoveBusinessPlacementFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<",
        "Lcom/yelp/android/serializable/Location;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$2;->a:Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/Location;)V
    .locals 4
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
    .line 277
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$2;->a:Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->l()V

    .line 278
    if-eqz p2, :cond_0

    .line 279
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$2;->a:Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Location;->a()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->a(Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 280
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$2;->a:Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->b(Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;)Landroid/location/Address;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Location;->c()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Address;->setLatitude(D)V

    .line 281
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$2;->a:Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->b(Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;)Landroid/location/Address;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Location;->b()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Address;->setLongitude(D)V

    .line 282
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$2;->a:Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "address"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$2;->a:Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->b(Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;)Landroid/location/Address;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 284
    :cond_0
    return-void
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
    .line 270
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$2;->a:Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->l()V

    .line 271
    invoke-static {p2}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/util/ErrorType;->getTextId()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(II)V

    .line 273
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 266
    check-cast p2, Lcom/yelp/android/serializable/Location;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$2;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/Location;)V

    return-void
.end method
