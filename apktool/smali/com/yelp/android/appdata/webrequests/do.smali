.class public Lcom/yelp/android/appdata/webrequests/do;
.super Lcom/yelp/android/av/g;
.source "MuteUserNotificationPreferencesRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/serializable/User;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/serializable/User;

.field private final b:Z


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/m;Lcom/yelp/android/serializable/User;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;",
            "Lcom/yelp/android/serializable/User;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 24
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "account/user/save"

    invoke-direct {p0, v0, v1, p1}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 25
    const-string/jumbo v0, "user_id"

    invoke-virtual {p2}, Lcom/yelp/android/serializable/User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/do;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string/jumbo v1, "alert"

    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/appdata/webrequests/do;->addPostParam(Ljava/lang/String;Z)V

    .line 27
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/do;->a:Lcom/yelp/android/serializable/User;

    .line 28
    iput-boolean p3, p0, Lcom/yelp/android/appdata/webrequests/do;->b:Z

    .line 29
    return-void

    .line 26
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/User;
    .locals 2

    .prologue
    .line 33
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/do;->a:Lcom/yelp/android/serializable/User;

    iget-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/do;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/User;->setSendingNotifications(Z)V

    .line 34
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/do;->a:Lcom/yelp/android/serializable/User;

    return-object v0

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/do;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/User;

    move-result-object v0

    return-object v0
.end method
