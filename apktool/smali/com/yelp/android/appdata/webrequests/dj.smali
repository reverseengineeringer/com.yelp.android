.class public Lcom/yelp/android/appdata/webrequests/dj;
.super Lcom/yelp/android/av/g;
.source "LoginRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/serializable/eq;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/serializable/eq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "account/login_secure"

    invoke-direct {p0, v0, v1, p4}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 22
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/dj;->a:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/dj;->b:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "email"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/dj;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string/jumbo v0, "password"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/dj;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const-string/jumbo v0, "device_token"

    invoke-static {p3}, Lcom/yelp/android/services/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/dj;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/eq;
    .locals 1

    .prologue
    .line 37
    invoke-static {p1}, Lcom/yelp/android/serializable/en;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/eq;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dj;->a:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/dj;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/eq;

    move-result-object v0

    return-object v0
.end method
