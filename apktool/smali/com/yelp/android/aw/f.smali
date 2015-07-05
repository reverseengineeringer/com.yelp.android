.class public abstract Lcom/yelp/android/aw/f;
.super Lcom/yelp/android/av/g;
.source "TalkMessageRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/aw/h;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/aw/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 20
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/aw/h;
    .locals 4

    .prologue
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    const-string/jumbo v1, "topic_messages"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 26
    const-string/jumbo v0, "topic_messages"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/TalkMessage;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v1, v0

    .line 30
    :goto_0
    const-string/jumbo v0, "topic_message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/yelp/android/serializable/TalkMessage;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v2, "topic_message"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/TalkMessage;

    .line 32
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 38
    const-string/jumbo v2, "revision"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 39
    const-string/jumbo v0, "revision"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    :cond_1
    :goto_1
    new-instance v2, Lcom/yelp/android/aw/h;

    const-string/jumbo v3, "new_reply_count"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v1, v3, v0}, Lcom/yelp/android/aw/h;-><init>(Ljava/util/List;ILjava/lang/String;)V

    return-object v2

    .line 40
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 42
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/TalkMessage;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/TalkMessage;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/yelp/android/aw/f;->a(Lorg/json/JSONObject;)Lcom/yelp/android/aw/h;

    move-result-object v0

    return-object v0
.end method
