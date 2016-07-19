.class public Lcom/yelp/android/appdata/webrequests/messaging/o;
.super Lcom/yelp/android/appdata/webrequests/core/c;
.source "UserUnblockRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/yelp/android/appdata/webrequests/core/c$a;)V
    .locals 1

    .prologue
    .line 9
    if-eqz p2, :cond_0

    const-string/jumbo v0, "biz_user/unblock"

    :goto_0
    invoke-direct {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/core/c;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 10
    if-eqz p2, :cond_1

    const-string/jumbo v0, "biz_user_id"

    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/messaging/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    return-void

    .line 9
    :cond_0
    const-string/jumbo v0, "user/unblock"

    goto :goto_0

    .line 10
    :cond_1
    const-string/jumbo v0, "user_id"

    goto :goto_1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    const-string/jumbo v0, "UserUnblockRequest"

    return-object v0
.end method
