.class Lcom/yelp/android/ui/activities/profile/h;
.super Ljava/lang/Object;
.source "ActivityUserProfile.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/appdata/webrequests/gw;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/h;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/gw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/gw;",
            ")V"
        }
    .end annotation

    .prologue
    .line 434
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/h;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;)Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->h()V

    .line 435
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/h;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->hideLoadingDialog()V

    .line 436
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 1
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
    .line 428
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/h;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 429
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 424
    check-cast p2, Lcom/yelp/android/appdata/webrequests/gw;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/profile/h;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/gw;)V

    return-void
.end method
