.class public Lcom/yelp/android/appdata/webrequests/gd;
.super Lcom/yelp/android/av/g;
.source "TwitterOAuthGetTokenRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "account/twitter/get_request_token"

    invoke-direct {p0, v0, v1, p1}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 14
    const-string/jumbo v0, "oauth_callback"

    const-string/jumbo v1, "yelp:///twitter_oauth"

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/gd;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string/jumbo v0, "oauth_token"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/gd;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
