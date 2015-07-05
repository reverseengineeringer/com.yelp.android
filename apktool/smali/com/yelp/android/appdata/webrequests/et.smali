.class public Lcom/yelp/android/appdata/webrequests/et;
.super Lcom/yelp/android/av/g;
.source "ReviewFlagRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 11
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "/review/flag"

    invoke-direct {p0, v0, v1, p4}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 12
    const-string/jumbo v0, "review_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/et;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    const-string/jumbo v0, "reason"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/et;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    const-string/jumbo v0, "message"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/et;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string/jumbo v0, "success_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/et;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
