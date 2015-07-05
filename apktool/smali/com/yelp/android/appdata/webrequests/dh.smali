.class Lcom/yelp/android/appdata/webrequests/dh;
.super Ljava/lang/Object;
.source "LoginManager.java"

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
.field final synthetic a:Lcom/yelp/android/appdata/webrequests/dc;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/webrequests/dc;)V
    .locals 0

    .prologue
    .line 691
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/dh;->a:Lcom/yelp/android/appdata/webrequests/dc;

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
    .line 695
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dh;->a:Lcom/yelp/android/appdata/webrequests/dc;

    invoke-virtual {v0, p2}, Lcom/yelp/android/appdata/webrequests/dc;->b(Lcom/yelp/android/serializable/User;)V

    .line 696
    return-void
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
    .line 701
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dh;->a:Lcom/yelp/android/appdata/webrequests/dc;

    invoke-static {v0}, Lcom/yelp/android/appdata/webrequests/dc;->b(Lcom/yelp/android/appdata/webrequests/dc;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 702
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dh;->a:Lcom/yelp/android/appdata/webrequests/dc;

    invoke-static {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c(Lcom/yelp/android/appdata/webrequests/dc;)V

    .line 703
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dh;->a:Lcom/yelp/android/appdata/webrequests/dc;

    invoke-static {v0}, Lcom/yelp/android/appdata/webrequests/dc;->d(Lcom/yelp/android/appdata/webrequests/dc;)I

    .line 710
    :cond_0
    :goto_0
    return-void

    .line 705
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dh;->a:Lcom/yelp/android/appdata/webrequests/dc;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/appdata/webrequests/dc;I)I

    .line 706
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dh;->a:Lcom/yelp/android/appdata/webrequests/dc;

    invoke-static {v0}, Lcom/yelp/android/appdata/webrequests/dc;->e(Lcom/yelp/android/appdata/webrequests/dc;)Lcom/yelp/android/serializable/User;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dh;->a:Lcom/yelp/android/appdata/webrequests/dc;

    invoke-static {v0}, Lcom/yelp/android/appdata/webrequests/dc;->e(Lcom/yelp/android/appdata/webrequests/dc;)Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->isFullUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 707
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "user_failed_to_fetch"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/AppData;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 691
    check-cast p2, Lcom/yelp/android/serializable/User;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/appdata/webrequests/dh;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/User;)V

    return-void
.end method
