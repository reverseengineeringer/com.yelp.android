.class public Lcom/yelp/android/appdata/webrequests/ci;
.super Lcom/yelp/android/av/g;
.source "ForgotPasswordRequest.java"


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
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/m;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 11
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "account/send_password_email_secure"

    invoke-direct {p0, v0, v1, p1}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 12
    const-string/jumbo v0, "email"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/ci;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 18
    const/4 v0, 0x0

    .line 19
    const-string/jumbo v1, "email"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 20
    const-string/jumbo v0, "email"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    :cond_0
    return-object v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/ci;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
