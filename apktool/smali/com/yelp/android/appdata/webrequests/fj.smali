.class public Lcom/yelp/android/appdata/webrequests/fj;
.super Lcom/yelp/android/av/g;
.source "ReviewTranslateRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Ljava/util/Locale;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Locale;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 17
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "review/translate"

    invoke-direct {p0, v0, v1, p3}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 18
    const-string/jumbo v0, "review_ids"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/fj;->addUrlParam(Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 19
    const-string/jumbo v0, "translate_to_lang"

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/fj;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    const-string/jumbo v0, "translated_review_texts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 25
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 26
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 27
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 29
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 32
    :cond_0
    return-object v2
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/fj;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
