.class public Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest;
.super Lcom/yelp/android/av/g;
.source "BusinessObjectFlagRequest.java"


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
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/business/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;->mediaType:Ljava/lang/String;
    invoke-static {p1}, Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;->access$000(Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/flag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p4}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;->mediaType:Ljava/lang/String;
    invoke-static {p1}, Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;->access$000(Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string/jumbo v0, "message"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "success_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
