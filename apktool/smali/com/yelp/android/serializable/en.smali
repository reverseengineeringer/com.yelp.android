.class public Lcom/yelp/android/serializable/en;
.super Ljava/lang/Object;
.source "YelpJsonUtil.java"


# direct methods
.method public static a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/eq;
    .locals 11

    .prologue
    .line 189
    new-instance v8, Lcom/yelp/android/serializable/ep;

    const-string/jumbo v0, "message"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/yelp/android/serializable/ep;-><init>(Lorg/json/JSONObject;)V

    .line 192
    const-string/jumbo v0, "gender"

    const-string/jumbo v1, "m"

    invoke-static {v0, v1, p0}, Lcom/yelp/android/serializable/en;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    .line 194
    new-instance v0, Lcom/yelp/android/serializable/eq;

    const-string/jumbo v1, "first_name"

    invoke-static {v1, p0}, Lcom/yelp/android/serializable/en;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "last_name"

    invoke-static {v2, p0}, Lcom/yelp/android/serializable/en;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "user_id"

    invoke-static {v3, p0}, Lcom/yelp/android/serializable/en;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "is_confirmed"

    invoke-static {v4, p0}, Lcom/yelp/android/serializable/en;->c(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v4

    const-string/jumbo v5, "elite_years"

    invoke-static {v5, p0}, Lcom/yelp/android/serializable/en;->e(Ljava/lang/String;Lorg/json/JSONObject;)[I

    move-result-object v5

    invoke-static {v5}, Lcom/yelp/android/services/r;->a([I)Z

    move-result v5

    const-string/jumbo v6, "email"

    invoke-static {v6, p0}, Lcom/yelp/android/serializable/en;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "location"

    invoke-static {v7, p0}, Lcom/yelp/android/serializable/en;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "f"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v9, 0x1

    :goto_0
    sget v10, Lcom/yelp/android/serializable/eq;->a:I

    invoke-direct/range {v0 .. v10}, Lcom/yelp/android/serializable/eq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/ep;ZI)V

    .line 206
    return-object v0

    .line 194
    :cond_0
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p2, p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 42
    :try_start_0
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    :cond_0
    const-string/jumbo v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :cond_1
    :goto_0
    return-object v0

    .line 47
    :catch_0
    move-exception v0

    .line 50
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 2
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

    .prologue
    .line 185
    new-instance v0, Lcom/yelp/android/serializable/eo;

    sget-object v1, Lcom/yelp/android/serializable/YelpBookmark;->LAZY_CREATOR:Lcom/yelp/android/serializable/ba;

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/serializable/eo;-><init>(Lorg/json/JSONArray;Lcom/yelp/android/serializable/ba;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;Lorg/json/JSONObject;)I
    .locals 1

    .prologue
    .line 99
    if-eqz p1, :cond_0

    .line 101
    :try_start_0
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 105
    :goto_0
    return v0

    .line 102
    :catch_0
    move-exception v0

    .line 105
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 1

    .prologue
    .line 121
    if-eqz p1, :cond_0

    .line 123
    :try_start_0
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 127
    :goto_0
    return v0

    .line 124
    :catch_0
    move-exception v0

    .line 127
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Lorg/json/JSONObject;)D
    .locals 2

    .prologue
    .line 144
    if-eqz p1, :cond_0

    .line 146
    :try_start_0
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 150
    :goto_0
    return-wide v0

    .line 147
    :catch_0
    move-exception v0

    .line 150
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Lorg/json/JSONObject;)[I
    .locals 5

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 155
    if-eqz p1, :cond_0

    .line 157
    :try_start_0
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 158
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 159
    new-array v0, v3, [I

    .line 160
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 161
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    aput v4, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    :catch_0
    move-exception v1

    .line 165
    :cond_0
    return-object v0
.end method
