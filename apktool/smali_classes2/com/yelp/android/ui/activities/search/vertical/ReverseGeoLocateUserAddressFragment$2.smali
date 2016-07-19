.class Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment$2;
.super Lcom/yelp/android/appdata/webrequests/k$b;
.source "ReverseGeoLocateUserAddressFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/k$b",
        "<",
        "Lcom/yelp/android/appdata/webrequests/dr$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment$2;->a:Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/k$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/dr$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/dr$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment$2;->a:Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;->e(Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;)V

    .line 93
    iget-boolean v0, p2, Lcom/yelp/android/appdata/webrequests/dr$a;->b:Z

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/dr$a;->a:Lcom/yelp/android/serializable/Location;

    .line 95
    new-instance v1, Lcom/yelp/android/serializable/PlatformDeliveryAddress;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Location;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Location;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Location;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/yelp/android/serializable/PlatformDeliveryAddress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment$2;->a:Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;->f(Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;)Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;->setAddress(Lcom/yelp/android/serializable/PlatformDeliveryAddress;)V

    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment$2;->a:Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;->g(Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;)Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment$2;->a:Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;->g(Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;)Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->a(Lcom/yelp/android/serializable/PlatformDeliveryAddress;)V

    .line 106
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment$2;->a:Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;->c(Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;)V

    .line 74
    const/4 v0, 0x0

    return v0
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
    .line 79
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment$2;->a:Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;->d(Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;)V

    .line 80
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->A()Lcom/yelp/android/ui/util/ao;

    move-result-object v0

    const v1, 0x7f070616

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/ui/util/ao;->a(II)V

    .line 84
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 70
    check-cast p2, Lcom/yelp/android/appdata/webrequests/dr$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment$2;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/dr$a;)V

    return-void
.end method
