.class public Lcom/yelp/android/appdata/webrequests/a;
.super Lcom/yelp/android/appdata/webrequests/core/c;
.source "AccountClaimTokenRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 11
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "account/claim_token"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/core/c;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 12
    const-string/jumbo v0, "claim_nonce"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return-void
.end method
