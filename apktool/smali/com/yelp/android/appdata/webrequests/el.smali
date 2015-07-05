.class public Lcom/yelp/android/appdata/webrequests/el;
.super Lcom/yelp/android/av/g;
.source "ResendConfirmationEmailRequest.java"


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
    .line 11
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "account/resend_email_confirmation"

    invoke-direct {p0, v0, v1, p1}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 12
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 17
    const/4 v0, 0x0

    .line 18
    const-string/jumbo v1, "email"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 19
    const-string/jumbo v0, "email"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    :cond_0
    return-object v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/el;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected processErrorMessage(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 27
    const-string/jumbo v0, "code"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x192

    if-eq v0, v1, :cond_0

    .line 28
    invoke-super {p0, p1, p2}, Lcom/yelp/android/av/g;->processErrorMessage(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 30
    :cond_0
    return-void
.end method
