.class public Lcom/yelp/android/serializable/h;
.super Ljava/lang/Object;
.source "YelpJsonUtil.java"


# direct methods
.method public static a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/j;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 120
    new-instance v10, Lcom/yelp/android/serializable/i;

    const-string/jumbo v0, "message"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/yelp/android/serializable/i;-><init>(Lorg/json/JSONObject;)V

    .line 123
    const-string/jumbo v0, "gender"

    const-string/jumbo v1, "m"

    invoke-static {v0, v1, p0}, Lcom/yelp/android/serializable/h;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v11

    .line 125
    new-instance v0, Lcom/yelp/android/serializable/j;

    const-string/jumbo v1, "first_name"

    invoke-static {v1, p0}, Lcom/yelp/android/serializable/h;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "last_name"

    invoke-static {v2, p0}, Lcom/yelp/android/serializable/h;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "name"

    invoke-static {v3, p0}, Lcom/yelp/android/serializable/h;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "name_without_period"

    invoke-static {v4, p0}, Lcom/yelp/android/serializable/h;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "user_id"

    invoke-static {v5, p0}, Lcom/yelp/android/serializable/h;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "is_confirmed"

    invoke-static {v6, p0}, Lcom/yelp/android/serializable/h;->c(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v6

    const-string/jumbo v7, "elite_years"

    invoke-static {v7, p0}, Lcom/yelp/android/serializable/h;->e(Ljava/lang/String;Lorg/json/JSONObject;)[I

    move-result-object v7

    invoke-static {v7}, Lcom/yelp/android/services/f;->a([I)Z

    move-result v7

    const-string/jumbo v8, "email"

    invoke-static {v8, p0}, Lcom/yelp/android/serializable/h;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "location"

    invoke-static {v9, p0}, Lcom/yelp/android/serializable/h;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v12, "f"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    const/4 v11, 0x1

    :goto_0
    sget v12, Lcom/yelp/android/serializable/j;->a:I

    invoke-direct/range {v0 .. v12}, Lcom/yelp/android/serializable/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/i;ZI)V

    .line 141
    return-object v0

    .line 125
    :cond_0
    const/4 v11, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    invoke-virtual {p2, p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 17
    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 19
    :try_start_0
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 21
    :cond_0
    const-string/jumbo v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :cond_1
    :goto_0
    return-object v0

    .line 24
    :catch_0
    move-exception v0

    .line 27
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBookmark;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 116
    sget-object v0, Lcom/yelp/android/serializable/YelpBookmark;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {p0, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Lorg/json/JSONObject;)I
    .locals 1

    .prologue
    .line 60
    if-eqz p1, :cond_0

    .line 62
    :try_start_0
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 66
    :goto_0
    return v0

    .line 63
    :catch_0
    move-exception v0

    .line 66
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 1

    .prologue
    .line 80
    if-eqz p1, :cond_0

    .line 82
    :try_start_0
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 86
    :goto_0
    return v0

    .line 83
    :catch_0
    move-exception v0

    .line 86
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Lorg/json/JSONObject;)D
    .locals 2

    .prologue
    .line 90
    if-eqz p1, :cond_0

    .line 92
    :try_start_0
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 96
    :goto_0
    return-wide v0

    .line 93
    :catch_0
    move-exception v0

    .line 96
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Lorg/json/JSONObject;)[I
    .locals 5

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    if-eqz p1, :cond_0

    .line 103
    :try_start_0
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 104
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 105
    new-array v0, v3, [I

    .line 106
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 107
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    aput v4, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    :catch_0
    move-exception v1

    .line 112
    :cond_0
    return-object v0
.end method
