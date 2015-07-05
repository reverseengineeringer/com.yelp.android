.class public Lcom/yelp/parcelgen/JsonUtil;
.super Ljava/lang/Object;
.source "JsonUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStringArray(Lorg/json/JSONArray;)[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 78
    if-nez p0, :cond_1

    new-array v0, v1, [Ljava/lang/String;

    .line 88
    :cond_0
    return-object v0

    .line 80
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 81
    new-array v0, v2, [Ljava/lang/String;

    .line 82
    :goto_0
    if-ge v1, v2, :cond_0

    .line 83
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 84
    if-eqz v3, :cond_2

    .line 85
    aput-object v3, v0, v1

    .line 82
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getStringList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {p0}, Lcom/yelp/parcelgen/JsonUtil;->getStringArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v0

    .line 101
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONArray;",
            "Lcom/yelp/parcelgen/JsonParser",
            "<TE;>;)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 30
    if-nez p0, :cond_1

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    :cond_0
    return-object v0

    .line 33
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 36
    invoke-virtual {p1}, Lcom/yelp/parcelgen/JsonParser;->getElementType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 37
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/yelp/parcelgen/JsonParser;->parse(Lorg/json/JSONArray;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 40
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 42
    :cond_3
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/yelp/parcelgen/JsonParser;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 58
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-object v0

    .line 61
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 62
    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 65
    goto :goto_0
.end method
