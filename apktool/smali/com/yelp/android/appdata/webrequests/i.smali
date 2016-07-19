.class public Lcom/yelp/android/appdata/webrequests/i;
.super Lcom/yelp/android/appdata/webrequests/core/c;
.source "AddFriendRequest.java"


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/core/c$a;Lcom/yelp/android/serializable/User;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 24
    const-string/jumbo v0, "user/add_friend"

    invoke-direct {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/core/c;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 25
    const-string/jumbo v0, "user_id"

    invoke-virtual {p2}, Lcom/yelp/android/serializable/User;->ae()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string/jumbo v0, "message"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method
