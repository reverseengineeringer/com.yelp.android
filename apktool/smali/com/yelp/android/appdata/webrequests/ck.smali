.class public Lcom/yelp/android/appdata/webrequests/ck;
.super Lcom/yelp/android/appdata/webrequests/core/b;
.source "ListTipsRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/appdata/webrequests/ck$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/core/b",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/appdata/webrequests/ck$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/util/Locale;ZLcom/yelp/android/appdata/webrequests/ApiRequest$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Locale;",
            "Z",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ck$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "quicktips/list"

    invoke-direct {p0, v0, v1, p6}, Lcom/yelp/android/appdata/webrequests/core/b;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 33
    if-nez p6, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You cannot have a null callback ... how will you get your results!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    if-gez p2, :cond_1

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Offset cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_1
    if-gtz p3, :cond_2

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "limit cannot be negative or zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "BusinessId cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_3
    const-string/jumbo v0, "business_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/ck;->a(Ljava/lang/String;I)V

    .line 48
    const-string/jumbo v0, "limit"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/ck;->a(Ljava/lang/String;I)V

    .line 49
    const-string/jumbo v1, "owned"

    if-eqz p5, :cond_4

    const-string/jumbo v0, "1"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/appdata/webrequests/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string/jumbo v0, "lang"

    invoke-virtual {p4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iput-object p4, p0, Lcom/yelp/android/appdata/webrequests/ck;->a:Ljava/util/Locale;

    .line 52
    return-void

    .line 49
    :cond_4
    const-string/jumbo v0, "0"

    goto :goto_0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/ck$a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 56
    const-string/jumbo v0, "quicktips"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Tip;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v1

    .line 58
    const-string/jumbo v0, "language_quick_tip_counts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 59
    new-instance v3, Ljava/util/TreeMap;

    new-instance v0, Lcom/yelp/android/appdata/LocaleSettings$b;

    invoke-direct {v0}, Lcom/yelp/android/appdata/LocaleSettings$b;-><init>()V

    invoke-direct {v3, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 61
    if-eqz v2, :cond_0

    .line 62
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    new-instance v5, Ljava/util/Locale;

    iget-object v6, p0, Lcom/yelp/android/appdata/webrequests/ck;->a:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 69
    :cond_0
    const-string/jumbo v0, "languages"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/parcelgen/JsonUtil;->getStringList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    .line 70
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 72
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 75
    :cond_1
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ck$a;

    iget-object v4, p0, Lcom/yelp/android/appdata/webrequests/ck;->a:Ljava/util/Locale;

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/yelp/android/appdata/webrequests/ck$a;-><init>(Ljava/util/List;Ljava/util/Locale;Ljava/util/Map;Ljava/util/List;)V

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
    .line 21
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/ck;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/ck$a;

    move-result-object v0

    return-object v0
.end method
