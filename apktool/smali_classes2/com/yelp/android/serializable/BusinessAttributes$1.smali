.class final Lcom/yelp/android/serializable/BusinessAttributes$1;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "BusinessAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/BusinessAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/BusinessAttributes;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method

.method private a(Lorg/json/JSONObject;Lcom/yelp/parcelgen/JsonParser$DualCreator;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Landroid/os/Parcelable;",
            ">(",
            "Lorg/json/JSONObject;",
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<TE;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 89
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 90
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 92
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 93
    invoke-virtual {p2, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 94
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 96
    :cond_0
    return-object v2
.end method

.method private a(Lorg/json/JSONObject;Lcom/yelp/android/serializable/BusinessAttributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 101
    const-string/jumbo v0, "alternate_addresses"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    const-string/jumbo v0, "alternate_addresses"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 103
    sget-object v1, Lcom/yelp/android/serializable/AddressAttribute;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/serializable/BusinessAttributes$1;->a(Lorg/json/JSONObject;Lcom/yelp/parcelgen/JsonParser$DualCreator;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/yelp/android/serializable/BusinessAttributes;->a(Lcom/yelp/android/serializable/BusinessAttributes;Ljava/util/Map;)Ljava/util/Map;

    .line 106
    :cond_0
    return-void
.end method

.method private b(Lorg/json/JSONObject;Lcom/yelp/android/serializable/BusinessAttributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 110
    const-string/jumbo v0, "alternate_names"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    const-string/jumbo v0, "alternate_names"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 112
    sget-object v1, Lcom/yelp/android/serializable/BusinessAttribute;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/serializable/BusinessAttributes$1;->a(Lorg/json/JSONObject;Lcom/yelp/parcelgen/JsonParser$DualCreator;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/yelp/android/serializable/BusinessAttributes;->b(Lcom/yelp/android/serializable/BusinessAttributes;Ljava/util/Map;)Ljava/util/Map;

    .line 115
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/BusinessAttributes;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/yelp/android/serializable/BusinessAttributes;

    invoke-direct {v0}, Lcom/yelp/android/serializable/BusinessAttributes;-><init>()V

    .line 74
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/BusinessAttributes;->a(Landroid/os/Parcel;)V

    .line 75
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/BusinessAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Lcom/yelp/android/serializable/BusinessAttributes;

    invoke-direct {v0}, Lcom/yelp/android/serializable/BusinessAttributes;-><init>()V

    .line 81
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/BusinessAttributes;->a(Lorg/json/JSONObject;)V

    .line 82
    invoke-direct {p0, p1, v0}, Lcom/yelp/android/serializable/BusinessAttributes$1;->a(Lorg/json/JSONObject;Lcom/yelp/android/serializable/BusinessAttributes;)V

    .line 83
    invoke-direct {p0, p1, v0}, Lcom/yelp/android/serializable/BusinessAttributes$1;->b(Lorg/json/JSONObject;Lcom/yelp/android/serializable/BusinessAttributes;)V

    .line 84
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/BusinessAttributes;
    .locals 1

    .prologue
    .line 69
    new-array v0, p1, [Lcom/yelp/android/serializable/BusinessAttributes;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/BusinessAttributes$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/BusinessAttributes;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/BusinessAttributes$1;->a(I)[Lcom/yelp/android/serializable/BusinessAttributes;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/BusinessAttributes$1;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/BusinessAttributes;

    move-result-object v0

    return-object v0
.end method
