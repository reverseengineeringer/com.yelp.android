.class Lcom/yelp/android/ui/activities/profile/MoreAboutUser$4;
.super Ljava/lang/Object;
.source "MoreAboutUser.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/profile/MoreAboutUser;
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
        "Lcom/yelp/android/serializable/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/profile/MoreAboutUser;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/profile/MoreAboutUser;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser$4;->a:Lcom/yelp/android/ui/activities/profile/MoreAboutUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/User;)V
    .locals 2
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
    .line 402
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser$4;->a:Lcom/yelp/android/ui/activities/profile/MoreAboutUser;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->a(Lcom/yelp/android/ui/activities/profile/MoreAboutUser;Lcom/yelp/android/serializable/User;)Lcom/yelp/android/serializable/User;

    .line 403
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser$4;->a:Lcom/yelp/android/ui/activities/profile/MoreAboutUser;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->b(Lcom/yelp/android/ui/activities/profile/MoreAboutUser;)V

    .line 404
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    .line 405
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser$4;->a:Lcom/yelp/android/ui/activities/profile/MoreAboutUser;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->a(Lcom/yelp/android/ui/activities/profile/MoreAboutUser;)Lcom/yelp/android/serializable/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/co;->a(Lcom/yelp/android/serializable/User;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser$4;->a:Lcom/yelp/android/ui/activities/profile/MoreAboutUser;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->a(Lcom/yelp/android/ui/activities/profile/MoreAboutUser;)Lcom/yelp/android/serializable/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/co;->b(Lcom/yelp/android/serializable/User;)V

    .line 408
    :cond_0
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
    .line 397
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser$4;->a:Lcom/yelp/android/ui/activities/profile/MoreAboutUser;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 398
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 393
    check-cast p2, Lcom/yelp/android/serializable/User;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser$4;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/User;)V

    return-void
.end method
