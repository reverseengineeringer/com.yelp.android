.class public Lcom/yelp/android/appdata/webrequests/ValidateCaptionRequest;
.super Lcom/yelp/android/av/h;
.source "ValidateCaptionRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ValidateCaptionRequest$ContentType;Lcom/yelp/android/av/i;)V
    .locals 2

    .prologue
    .line 9
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/ValidateCaptionRequest$ContentType;->getValidateUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/yelp/android/av/h;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 10
    const-string/jumbo v0, "caption"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/ValidateCaptionRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    return-void
.end method
