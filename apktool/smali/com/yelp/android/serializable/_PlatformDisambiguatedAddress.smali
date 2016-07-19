.class abstract Lcom/yelp/android/serializable/_PlatformDisambiguatedAddress;
.super Ljava/lang/Object;
.source "_PlatformDisambiguatedAddress.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected a:Lcom/yelp/android/serializable/PlatformDeliveryAddress;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 105
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 106
    iget-object v1, p0, Lcom/yelp/android/serializable/_PlatformDisambiguatedAddress;->a:Lcom/yelp/android/serializable/PlatformDeliveryAddress;

    if-eqz v1, :cond_0

    .line 107
    const-string/jumbo v1, "address"

    iget-object v2, p0, Lcom/yelp/android/serializable/_PlatformDisambiguatedAddress;->a:Lcom/yelp/android/serializable/PlatformDeliveryAddress;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/PlatformDeliveryAddress;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/serializable/_PlatformDisambiguatedAddress;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 110
    const-string/jumbo v1, "address_id"

    iget-object v2, p0, Lcom/yelp/android/serializable/_PlatformDisambiguatedAddress;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/serializable/_PlatformDisambiguatedAddress;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 113
    const-string/jumbo v1, "location_str"

    iget-object v2, p0, Lcom/yelp/android/serializable/_PlatformDisambiguatedAddress;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    :cond_2
    return-object v0
.end method

.method public a(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 87
    const-class v0, Lcom/yelp/android/serializable/PlatformDeliveryAddress;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PlatformDeliveryAddress;

    iput-object v0, p0, Lcom/yelp/android/serializable/_PlatformDisambiguatedAddress;->a:Lcom/yelp/android/serializable/PlatformDeliveryAddress;

    .line 88
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_PlatformDisambiguatedAddress;->b:Ljava/lang/String;

    .line 89
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_PlatformDisambiguatedAddress;->c:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 93
    const-string/jumbo v0, "address"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    sget-object v0, Lcom/yelp/android/serializable/PlatformDeliveryAddress;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "address"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PlatformDeliveryAddress;

    iput-object v0, p0, Lcom/yelp/android/serializable/_PlatformDisambiguatedAddress;->a:Lcom/yelp/android/serializable/PlatformDeliveryAddress;

    .line 96
    :cond_0
    const-string/jumbo v0, "address_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    const-string/jumbo v0, "address_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PlatformDisambiguatedAddress;->b:Ljava/lang/String;

    .line 99
    :cond_1
    const-string/jumbo v0, "location_str"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 100
    const-string/jumbo v0, "location_str"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PlatformDisambiguatedAddress;->c:Ljava/lang/String;

    .line 102
    :cond_2
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformDisambiguatedAddress;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformDisambiguatedAddress;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/yelp/android/serializable/PlatformDeliveryAddress;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformDisambiguatedAddress;->a:Lcom/yelp/android/serializable/PlatformDeliveryAddress;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 34
    if-nez p1, :cond_1

    .line 48
    :cond_0
    :goto_0
    return v0

    .line 38
    :cond_1
    if-ne p1, p0, :cond_2

    .line 39
    const/4 v0, 0x1

    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 46
    check-cast p1, Lcom/yelp/android/serializable/_PlatformDisambiguatedAddress;

    .line 48
    new-instance v0, Lcom/yelp/android/dc/b;

    invoke-direct {v0}, Lcom/yelp/android/dc/b;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/serializable/_PlatformDisambiguatedAddress;->a:Lcom/yelp/android/serializable/PlatformDeliveryAddress;

    iget-object v2, p1, Lcom/yelp/android/serializable/_PlatformDisambiguatedAddress;->a:Lcom/yelp/android/serializable/PlatformDeliveryAddress;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_PlatformDisambiguatedAddress;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_PlatformDisambiguatedAddress;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_PlatformDisambiguatedAddress;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_PlatformDisambiguatedAddress;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/b;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/yelp/android/dc/c;

    invoke-direct {v0}, Lcom/yelp/android/dc/c;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/serializable/_PlatformDisambiguatedAddress;->a:Lcom/yelp/android/serializable/PlatformDeliveryAddress;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_PlatformDisambiguatedAddress;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_PlatformDisambiguatedAddress;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/c;->a()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformDisambiguatedAddress;->a:Lcom/yelp/android/serializable/PlatformDeliveryAddress;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 82
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformDisambiguatedAddress;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformDisambiguatedAddress;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 84
    return-void
.end method
