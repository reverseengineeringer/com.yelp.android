.class Lcom/yelp/android/ui/activities/profile/w;
.super Ljava/lang/Object;
.source "UserProfileFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/serializable/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/w;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/User;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/User;",
            ")V"
        }
    .end annotation

    .prologue
    .line 487
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/w;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->a(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;)Lcom/yelp/android/ui/activities/profile/z;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/yelp/android/ui/activities/profile/z;->a(Lcom/yelp/android/serializable/User;)V

    .line 488
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/w;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->j()V

    .line 489
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/w;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->b(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;)V

    .line 490
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/w;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->b(Lcom/yelp/android/serializable/User;)V

    .line 491
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
    .line 495
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/w;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->a(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 496
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 483
    check-cast p2, Lcom/yelp/android/serializable/User;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/profile/w;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/User;)V

    return-void
.end method
