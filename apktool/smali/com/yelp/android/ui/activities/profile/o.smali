.class Lcom/yelp/android/ui/activities/profile/o;
.super Ljava/lang/Object;
.source "MoreAboutUser.java"

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
.field final synthetic a:Lcom/yelp/android/ui/activities/profile/MoreAboutUser;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/profile/MoreAboutUser;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/o;->a:Lcom/yelp/android/ui/activities/profile/MoreAboutUser;

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
    .line 336
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/o;->a:Lcom/yelp/android/ui/activities/profile/MoreAboutUser;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->a(Lcom/yelp/android/ui/activities/profile/MoreAboutUser;Lcom/yelp/android/serializable/User;)Lcom/yelp/android/serializable/User;

    .line 337
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/o;->a:Lcom/yelp/android/ui/activities/profile/MoreAboutUser;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->a(Lcom/yelp/android/ui/activities/profile/MoreAboutUser;)V

    .line 338
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    .line 339
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/o;->a:Lcom/yelp/android/ui/activities/profile/MoreAboutUser;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->b(Lcom/yelp/android/ui/activities/profile/MoreAboutUser;)Lcom/yelp/android/serializable/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/serializable/User;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/o;->a:Lcom/yelp/android/ui/activities/profile/MoreAboutUser;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->b(Lcom/yelp/android/ui/activities/profile/MoreAboutUser;)Lcom/yelp/android/serializable/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dc;->b(Lcom/yelp/android/serializable/User;)V

    .line 342
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
    .line 331
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/o;->a:Lcom/yelp/android/ui/activities/profile/MoreAboutUser;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 332
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 327
    check-cast p2, Lcom/yelp/android/serializable/User;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/profile/o;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/User;)V

    return-void
.end method
