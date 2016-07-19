.class public Lcom/yelp/android/appdata/webrequests/ff;
.super Lcom/yelp/android/appdata/webrequests/core/c;
.source "UserFollowRequest.java"


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/User;Lcom/yelp/android/appdata/webrequests/core/c$a;)V
    .locals 2

    .prologue
    .line 9
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "user/follow"

    invoke-direct {p0, v0, v1, p2}, Lcom/yelp/android/appdata/webrequests/core/c;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 10
    const-string/jumbo v0, "user_id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/ff;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    return-void
.end method
