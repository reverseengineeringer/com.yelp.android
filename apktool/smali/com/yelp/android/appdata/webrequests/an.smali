.class public Lcom/yelp/android/appdata/webrequests/an;
.super Lcom/yelp/android/appdata/webrequests/core/c;
.source "ClearFacebookSettingsRequest.java"


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/core/c$a;)V
    .locals 1

    .prologue
    .line 8
    const-string/jumbo v0, "account/facebook/clear"

    invoke-direct {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/core/c;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 9
    return-void
.end method
