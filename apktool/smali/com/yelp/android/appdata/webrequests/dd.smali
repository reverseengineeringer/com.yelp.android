.class Lcom/yelp/android/appdata/webrequests/dd;
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
        "Lcom/yelp/android/appdata/RemoteConfigPreferences;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/webrequests/dc;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/webrequests/dc;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/dd;->a:Lcom/yelp/android/appdata/webrequests/dc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/RemoteConfigPreferences;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/RemoteConfigPreferences;",
            ")V"
        }
    .end annotation

    .prologue
    .line 174
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/appdata/RemoteConfigPreferences;)V

    .line 175
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dd;->a:Lcom/yelp/android/appdata/webrequests/dc;

    invoke-static {v0, p2}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/appdata/webrequests/dc;Lcom/yelp/android/appdata/RemoteConfigPreferences;)Lcom/yelp/android/appdata/RemoteConfigPreferences;

    .line 177
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dd;->a:Lcom/yelp/android/appdata/webrequests/dc;

    invoke-static {v0}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/appdata/webrequests/dc;)Lcom/yelp/android/appdata/webrequests/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dd;->a:Lcom/yelp/android/appdata/webrequests/dc;

    invoke-static {v0}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/appdata/webrequests/dc;)Lcom/yelp/android/appdata/webrequests/m;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/yelp/android/appdata/webrequests/m;->onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dd;->a:Lcom/yelp/android/appdata/webrequests/dc;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/appdata/webrequests/dc;Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/m;

    .line 181
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.yelp.android.intent.new_account_config"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/AppData;->sendBroadcast(Landroid/content/Intent;)V

    .line 182
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2
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
    .line 166
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dd;->a:Lcom/yelp/android/appdata/webrequests/dc;

    invoke-static {v0}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/appdata/webrequests/dc;)Lcom/yelp/android/appdata/webrequests/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dd;->a:Lcom/yelp/android/appdata/webrequests/dc;

    invoke-static {v0}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/appdata/webrequests/dc;)Lcom/yelp/android/appdata/webrequests/m;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/yelp/android/appdata/webrequests/m;->onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 168
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dd;->a:Lcom/yelp/android/appdata/webrequests/dc;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/appdata/webrequests/dc;Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/m;

    .line 170
    :cond_0
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 162
    check-cast p2, Lcom/yelp/android/appdata/RemoteConfigPreferences;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/appdata/webrequests/dd;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/RemoteConfigPreferences;)V

    return-void
.end method
