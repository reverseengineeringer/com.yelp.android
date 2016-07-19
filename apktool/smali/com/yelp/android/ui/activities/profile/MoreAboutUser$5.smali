.class Lcom/yelp/android/ui/activities/profile/MoreAboutUser$5;
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
        "Lcom/yelp/android/appdata/webrequests/fk$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/profile/MoreAboutUser;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/profile/MoreAboutUser;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser$5;->a:Lcom/yelp/android/ui/activities/profile/MoreAboutUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/fk$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/fk$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 421
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser$5;->a:Lcom/yelp/android/ui/activities/profile/MoreAboutUser;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->hideLoadingDialog()V

    .line 422
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser$5;->a:Lcom/yelp/android/ui/activities/profile/MoreAboutUser;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->c(Lcom/yelp/android/ui/activities/profile/MoreAboutUser;)V

    .line 423
    invoke-static {}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a()Landroid/content/Intent;

    move-result-object v0

    .line 424
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser$5;->a:Lcom/yelp/android/ui/activities/profile/MoreAboutUser;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->sendBroadcast(Landroid/content/Intent;)V

    .line 425
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
    .line 415
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/MoreAboutUser$5;->a:Lcom/yelp/android/ui/activities/profile/MoreAboutUser;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 416
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 412
    check-cast p2, Lcom/yelp/android/appdata/webrequests/fk$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser$5;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/fk$a;)V

    return-void
.end method
