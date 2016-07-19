.class public Lcom/yelp/android/appdata/webrequests/b;
.super Lcom/yelp/android/appdata/webrequests/core/c;
.source "AccountConfirmRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/core/c$a;)V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/yelp/android/appdata/webrequests/b;-><init>(Ljava/lang/String;ZLcom/yelp/android/appdata/webrequests/core/c$a;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/yelp/android/appdata/webrequests/core/c$a;)V
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "account/confirm"

    invoke-direct {p0, v0, v1, p3}, Lcom/yelp/android/appdata/webrequests/core/c;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 18
    const-string/jumbo v0, "email_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string/jumbo v0, "send_welcome_email"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/b;->b(Ljava/lang/String;Z)V

    .line 20
    return-void
.end method
