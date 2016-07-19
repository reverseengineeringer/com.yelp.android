.class Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$8;
.super Ljava/lang/Object;
.source "FindFriendsFBContactsFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;
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
        "Lcom/yelp/android/appdata/webrequests/cc$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)V
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$8;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/cc$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/cc$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 566
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/cc$a;->b()Ljava/util/Map;

    move-result-object v0

    .line 567
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/cc$a;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 568
    new-instance v2, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$8$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$8$1;-><init>(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$8;Ljava/util/Map;Ljava/util/ArrayList;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$8$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 596
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
    .line 539
    :try_start_0
    instance-of v1, p2, Lcom/yelp/android/appdata/webrequests/ApiException;

    if-eqz v1, :cond_0

    .line 540
    move-object v0, p2

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ApiException;

    move-object v1, v0

    .line 541
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

    .line 551
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$8;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->m(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Lcom/yelp/android/ui/activities/FacebookConnectManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->e()V

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$8;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-virtual {v1, p2}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 556
    :catch_0
    move-exception v1

    .line 557
    iget-object v2, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$8;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

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
    .line 534
    check-cast p2, Lcom/yelp/android/appdata/webrequests/cc$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$8;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/cc$a;)V

    return-void
.end method
