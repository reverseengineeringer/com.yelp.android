.class public Lcom/yelp/android/appdata/webrequests/bt;
.super Lcom/yelp/android/appdata/webrequests/core/c;
.source "FacebookAccountSaveRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/TimeUnit;JLcom/yelp/android/appdata/webrequests/core/c$a;)V
    .locals 4

    .prologue
    .line 29
    const-string/jumbo v0, "account/facebook/save"

    invoke-direct {p0, v0, p8}, Lcom/yelp/android/appdata/webrequests/core/c;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 30
    const-wide/16 v0, 0x0

    cmp-long v0, p6, v0

    if-lez v0, :cond_0

    .line 31
    const-string/jumbo v0, "access_token_expiry"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p6, p7, p5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/yelp/android/appdata/webrequests/bt;->b(Ljava/lang/String;J)V

    .line 35
    :cond_0
    const-string/jumbo v0, "permissions"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/bt;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string/jumbo v0, "api_key"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/bt;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string/jumbo v0, "access_token"

    invoke-virtual {p0, v0, p4}, Lcom/yelp/android/appdata/webrequests/bt;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string/jumbo v0, "fbuid"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/bt;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method
