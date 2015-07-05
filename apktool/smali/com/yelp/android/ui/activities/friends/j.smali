.class Lcom/yelp/android/ui/activities/friends/j;
.super Ljava/lang/Object;
.source "FindFriendsFBContactsFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/appdata/webrequests/cm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friends/j;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/cm;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/cm;",
            ")V"
        }
    .end annotation

    .prologue
    .line 431
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/cm;->b()Ljava/util/Map;

    move-result-object v0

    .line 432
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/cm;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 433
    new-instance v2, Lcom/yelp/android/ui/activities/friends/k;

    invoke-direct {v2, p0, v0, v1}, Lcom/yelp/android/ui/activities/friends/k;-><init>(Lcom/yelp/android/ui/activities/friends/j;Ljava/util/Map;Ljava/util/ArrayList;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/activities/friends/k;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 460
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 5
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
    .line 410
    :try_start_0
    instance-of v1, p2, Lcom/yelp/android/appdata/webrequests/ApiException;

    if-eqz v1, :cond_0

    .line 411
    move-object v0, p2

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ApiException;

    move-object v1, v0

    .line 412
    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/ApiException;->getResultCode()I

    move-result v2

    const/16 v3, 0x402

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/ApiException;->getServerMessage()Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "missing_permissions"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;->USER_FRIEND:Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 418
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/j;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->i(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Lcom/yelp/android/ui/activities/FacebookConnectManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->e()V

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/j;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-virtual {v1, p2}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 423
    :catch_0
    move-exception v1

    .line 424
    iget-object v2, p0, Lcom/yelp/android/ui/activities/friends/j;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Friend Finder Error Server Message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 405
    check-cast p2, Lcom/yelp/android/appdata/webrequests/cm;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/friends/j;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/cm;)V

    return-void
.end method
