.class public Lcom/yelp/android/appdata/webrequests/ey;
.super Lcom/yelp/android/av/g;
.source "ReviewListRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/appdata/webrequests/ez;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/util/Locale;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ez;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/yelp/android/appdata/webrequests/ey;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/util/Locale;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/util/Locale;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ez;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "reviews"

    invoke-direct {p0, v0, v1, p7}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 49
    const-string/jumbo v0, "business_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/ey;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string/jumbo v0, "limit"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/ey;->addUrlParam(Ljava/lang/String;I)V

    .line 51
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/ey;->addUrlParam(Ljava/lang/String;I)V

    .line 52
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    const-string/jumbo v0, "selected_review_id"

    invoke-virtual {p0, v0, p4}, Lcom/yelp/android/appdata/webrequests/ey;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_0
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    const-string/jumbo v0, "translate_to_lang"

    invoke-virtual {p0, v0, p6}, Lcom/yelp/android/appdata/webrequests/ey;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_1
    const-string/jumbo v0, "lang"

    invoke-virtual {p5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/ey;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iput-object p5, p0, Lcom/yelp/android/appdata/webrequests/ey;->a:Ljava/util/Locale;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/util/Locale;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Locale;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ez;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 33
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, v4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/yelp/android/appdata/webrequests/ey;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/util/Locale;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/util/Locale;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ez;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/yelp/android/appdata/webrequests/ey;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/util/Locale;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 44
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/ez;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 72
    const-string/jumbo v0, "reviews"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 73
    const-string/jumbo v0, "language_review_counts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 74
    const-string/jumbo v0, "languages"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 76
    const-string/jumbo v0, "not_recommended_review_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    const-string/jumbo v0, "not_recommended_review_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 79
    :goto_0
    new-instance v3, Ljava/util/TreeMap;

    new-instance v0, Lcom/yelp/android/appdata/z;

    invoke-direct {v0}, Lcom/yelp/android/appdata/z;-><init>()V

    invoke-direct {v3, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 81
    if-eqz v4, :cond_0

    .line 82
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    new-instance v8, Ljava/util/Locale;

    iget-object v9, p0, Lcom/yelp/android/appdata/webrequests/ey;->a:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v0, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v8, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 89
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 90
    if-eqz v6, :cond_1

    .line 91
    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 92
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    new-instance v7, Ljava/util/Locale;

    iget-object v8, p0, Lcom/yelp/android/appdata/webrequests/ey;->a:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 98
    :cond_1
    sget-object v0, Lcom/yelp/android/serializable/YelpBusinessReview;->CREATOR:Lcom/yelp/android/serializable/ah;

    invoke-static {v2, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v1

    .line 101
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ez;

    iget-object v2, p0, Lcom/yelp/android/appdata/webrequests/ey;->a:Ljava/util/Locale;

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/ez;-><init>(Ljava/util/List;Ljava/util/Locale;Ljava/util/Map;Ljava/util/List;I)V

    return-object v0

    :cond_2
    move v5, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ey;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ey;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot change a completed request"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    const-string/jumbo v0, "selected_review_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/ey;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/ey;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/ez;

    move-result-object v0

    return-object v0
.end method
