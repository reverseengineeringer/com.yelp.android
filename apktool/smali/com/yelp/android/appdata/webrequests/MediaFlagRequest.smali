.class public Lcom/yelp/android/appdata/webrequests/MediaFlagRequest;
.super Lcom/yelp/android/appdata/webrequests/core/b;
.source "MediaFlagRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/core/b",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    iget-object v1, p1, Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;->apiPath:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p4}, Lcom/yelp/android/appdata/webrequests/core/b;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 33
    iget-object v0, p1, Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;->idParam:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/MediaFlagRequest;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string/jumbo v0, "message"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/MediaFlagRequest;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 39
    const-string/jumbo v0, "success_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

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
    .line 11
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/MediaFlagRequest;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
