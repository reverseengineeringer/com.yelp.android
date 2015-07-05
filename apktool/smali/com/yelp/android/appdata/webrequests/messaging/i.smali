.class public Lcom/yelp/android/appdata/webrequests/messaging/i;
.super Lcom/yelp/android/av/g;
.source "MessageTheBusinessInfoRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/appdata/webrequests/messaging/j;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/m;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/messaging/j;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "business/info/messaging"

    invoke-direct {p0, v0, v1, p1}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 17
    const-string/jumbo v0, "business_id"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/messaging/i;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/messaging/j;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lcom/yelp/android/appdata/webrequests/messaging/j;

    const-string/jumbo v1, "response_time_text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "show_warning_icon"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/messaging/j;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/messaging/i;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/messaging/j;

    move-result-object v0

    return-object v0
.end method
