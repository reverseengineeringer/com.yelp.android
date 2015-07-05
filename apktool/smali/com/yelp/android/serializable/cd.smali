.class final Lcom/yelp/android/serializable/cd;
.super Lcom/yelp/android/serializable/az;
.source "RankLocation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/serializable/az",
        "<",
        "Lcom/yelp/android/serializable/RankLocation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/yelp/android/serializable/az;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/RankLocation;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 30
    if-nez p1, :cond_0

    .line 36
    :goto_0
    return-object v4

    .line 33
    :cond_0
    const-string/jumbo v0, "business"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 34
    sget-object v0, Lcom/yelp/android/serializable/YelpBusiness;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "business"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    move-object v5, v0

    .line 36
    :goto_1
    new-instance v0, Lcom/yelp/android/serializable/RankLocation;

    const-string/jumbo v1, "location_id"

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "location_name"

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "top_user_count"

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v6, "title"

    invoke-virtual {p1, v6, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/yelp/android/serializable/RankTitle$Rank;->rankForString(Ljava/lang/String;)Lcom/yelp/android/serializable/RankTitle$Rank;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/serializable/RankLocation;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/yelp/android/serializable/RankTitle$Rank;Lcom/yelp/android/serializable/YelpBusiness;)V

    move-object v4, v0

    goto :goto_0

    :cond_1
    move-object v5, v4

    goto :goto_1
.end method

.method public final a(I)[Lcom/yelp/android/serializable/RankLocation;
    .locals 1

    .prologue
    .line 46
    new-array v0, p1, [Lcom/yelp/android/serializable/RankLocation;

    return-object v0
.end method

.method public synthetic b(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/cd;->a(I)[Lcom/yelp/android/serializable/RankLocation;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/cd;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/RankLocation;

    move-result-object v0

    return-object v0
.end method
