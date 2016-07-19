.class public Lcom/yelp/android/appdata/webrequests/cp;
.super Lcom/yelp/android/appdata/webrequests/core/b;
.source "LoginRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/core/b",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/serializable/j;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final g:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "account/login_secure"

    invoke-direct {p0, v0, v1, p3}, Lcom/yelp/android/appdata/webrequests/core/b;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 17
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/cp;->a:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/cp;->g:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "email"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/cp;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const-string/jumbo v0, "password"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/cp;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-static {p1}, Lcom/yelp/android/serializable/h;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/j;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/cp;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/j;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/cp;->a:Ljava/lang/String;

    return-object v0
.end method
