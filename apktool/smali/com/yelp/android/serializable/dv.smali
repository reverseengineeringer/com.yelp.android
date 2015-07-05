.class final Lcom/yelp/android/serializable/dv;
.super Ljava/lang/Object;
.source "YelpBookmark.java"

# interfaces
.implements Lcom/yelp/android/serializable/ba;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/serializable/ba",
        "<",
        "Lcom/yelp/android/serializable/YelpBookmark;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONArray;I)Lcom/yelp/android/serializable/YelpBookmark;
    .locals 3

    .prologue
    .line 27
    :try_start_0
    new-instance v0, Lcom/yelp/android/serializable/YelpBookmark;

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/serializable/YelpBookmark;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    return-object v0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    const-string/jumbo v1, "YelpBookmark"

    const-string/jumbo v2, "Exception creating Bookmark"

    invoke-static {v1, v2, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)[Lcom/yelp/android/serializable/YelpBookmark;
    .locals 1

    .prologue
    .line 21
    new-array v0, p1, [Lcom/yelp/android/serializable/YelpBookmark;

    return-object v0
.end method

.method public synthetic b(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/dv;->a(I)[Lcom/yelp/android/serializable/YelpBookmark;

    move-result-object v0

    return-object v0
.end method

.method public synthetic make(Lorg/json/JSONArray;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/serializable/dv;->a(Lorg/json/JSONArray;I)Lcom/yelp/android/serializable/YelpBookmark;

    move-result-object v0

    return-object v0
.end method
