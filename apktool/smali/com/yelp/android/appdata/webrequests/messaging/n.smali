.class public Lcom/yelp/android/appdata/webrequests/messaging/n;
.super Lcom/yelp/android/av/h;
.source "UserBlockRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/yelp/android/av/i;)V
    .locals 1

    .prologue
    .line 10
    if-eqz p2, :cond_0

    const-string/jumbo v0, "biz_user/block"

    :goto_0
    invoke-direct {p0, v0, p3}, Lcom/yelp/android/av/h;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 11
    if-eqz p2, :cond_1

    const-string/jumbo v0, "biz_user_id"

    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/messaging/n;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void

    .line 10
    :cond_0
    const-string/jumbo v0, "user/block"

    goto :goto_0

    .line 11
    :cond_1
    const-string/jumbo v0, "user_id"

    goto :goto_1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    const-string/jumbo v0, "UserBlockRequest"

    return-object v0
.end method
