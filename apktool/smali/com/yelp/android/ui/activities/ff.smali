.class Lcom/yelp/android/ui/activities/ff;
.super Ljava/lang/Object;
.source "FacebookConnectManager.java"

# interfaces
.implements Lcom/yelp/android/av/i;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/FacebookConnectManager;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V
    .locals 0

    .prologue
    .line 486
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ff;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .prologue
    .line 490
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ff;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->c(Lcom/yelp/android/ui/activities/FacebookConnectManager;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/ez;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/ez;->hideLoadingDialog()V

    .line 491
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ff;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Lcom/yelp/android/ui/activities/FacebookConnectManager;Z)Z

    .line 494
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->h()Lcom/yelp/android/appdata/RemoteConfigPreferences;

    move-result-object v0

    .line 496
    if-eqz v0, :cond_0

    .line 497
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a(Z)Lcom/yelp/android/appdata/RemoteConfigPreferences;

    .line 501
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ff;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Lcom/yelp/android/ui/activities/FacebookConnectManager;)Lcom/yelp/android/ui/activities/fg;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ff;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/fg;->a(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V

    .line 502
    return-void

    .line 499
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->f()V

    goto :goto_0
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
    .line 506
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ff;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Lcom/yelp/android/ui/activities/FacebookConnectManager;Ljava/lang/Throwable;)V

    .line 507
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 486
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/ff;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
