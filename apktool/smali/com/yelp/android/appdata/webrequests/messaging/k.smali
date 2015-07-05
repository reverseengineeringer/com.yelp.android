.class public Lcom/yelp/android/appdata/webrequests/messaging/k;
.super Lcom/yelp/android/av/g;
.source "MessageTheBusinessRequest.java"


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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "business/message/save"

    invoke-direct {p0, v0, v1, p3}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 14
    const-string/jumbo v0, "business_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/messaging/k;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const-string/jumbo v0, "message"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/messaging/k;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string/jumbo v0, "confirmation_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/messaging/k;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
