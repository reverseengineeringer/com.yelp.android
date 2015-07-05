.class Lcom/yelp/android/ui/activities/profile/v;
.super Ljava/lang/Object;
.source "UserMediaGrid.java"

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
.field final synthetic a:Lcom/yelp/android/ui/activities/profile/UserMediaGrid;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/profile/UserMediaGrid;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/v;->a:Lcom/yelp/android/ui/activities/profile/UserMediaGrid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/gw;)V
    .locals 3
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
    .line 121
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/v;->a:Lcom/yelp/android/ui/activities/profile/UserMediaGrid;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/gw;->a()Lcom/yelp/android/serializable/Photo;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/gw;->b()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/profile/UserMediaGrid;->a(Lcom/yelp/android/ui/activities/profile/UserMediaGrid;Lcom/yelp/android/serializable/Media;Z)V

    .line 122
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/v;->a:Lcom/yelp/android/ui/activities/profile/UserMediaGrid;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/UserMediaGrid;->hideLoadingDialog()V

    .line 123
    invoke-static {}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a()Landroid/content/Intent;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/v;->a:Lcom/yelp/android/ui/activities/profile/UserMediaGrid;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/profile/UserMediaGrid;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/v;->a:Lcom/yelp/android/ui/activities/profile/UserMediaGrid;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/profile/UserMediaGrid;->sendBroadcast(Landroid/content/Intent;)V

    .line 126
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
    .line 114
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/v;->a:Lcom/yelp/android/ui/activities/profile/UserMediaGrid;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/UserMediaGrid;->hideLoadingDialog()V

    .line 115
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/v;->a:Lcom/yelp/android/ui/activities/profile/UserMediaGrid;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/activities/profile/UserMediaGrid;->onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 116
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 111
    check-cast p2, Lcom/yelp/android/appdata/webrequests/gw;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/profile/v;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/gw;)V

    return-void
.end method
