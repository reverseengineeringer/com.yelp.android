.class public Lcom/yelp/android/appdata/webrequests/cg;
.super Lcom/yelp/android/appdata/webrequests/core/c;
.source "LineAccountLinkRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/core/c$a;)V
    .locals 1

    .prologue
    .line 12
    const-string/jumbo v0, "account/line/link"

    invoke-direct {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/core/c;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 13
    const-string/jumbo v0, "access_token"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/cg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    const-string/jumbo v0, "line_user_id"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/cg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method
