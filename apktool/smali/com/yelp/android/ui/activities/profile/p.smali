.class Lcom/yelp/android/ui/activities/profile/p;
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
        "Lcom/yelp/android/appdata/webrequests/gw;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/profile/MoreAboutUser;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/profile/MoreAboutUser;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/p;->a:Lcom/yelp/android/ui/activities/profile/MoreAboutUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/gw;)V
    .locals 2
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
    .line 355
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/p;->a:Lcom/yelp/android/ui/activities/profile/MoreAboutUser;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->hideLoadingDialog()V

    .line 356
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/p;->a:Lcom/yelp/android/ui/activities/profile/MoreAboutUser;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->c(Lcom/yelp/android/ui/activities/profile/MoreAboutUser;)Lcom/yelp/android/appdata/webrequests/gx;

    .line 357
    invoke-static {}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a()Landroid/content/Intent;

    move-result-object v0

    .line 358
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/p;->a:Lcom/yelp/android/ui/activities/profile/MoreAboutUser;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/p;->a:Lcom/yelp/android/ui/activities/profile/MoreAboutUser;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->sendBroadcast(Landroid/content/Intent;)V

    .line 360
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
    .line 349
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/p;->a:Lcom/yelp/android/ui/activities/profile/MoreAboutUser;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 350
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 346
    check-cast p2, Lcom/yelp/android/appdata/webrequests/gw;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/profile/p;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/gw;)V

    return-void
.end method
