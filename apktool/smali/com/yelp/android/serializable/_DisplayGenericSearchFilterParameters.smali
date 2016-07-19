.class abstract Lcom/yelp/android/serializable/_DisplayGenericSearchFilterParameters;
.super Ljava/lang/Object;
.source "_DisplayGenericSearchFilterParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected a:Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

.field protected b:Ljava/lang/String;

.field protected c:Z

.field protected d:[I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 101
    const-class v0, Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    iput-object v0, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilterParameters;->a:Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    .line 103
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilterParameters;->b:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 105
    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilterParameters;->c:Z

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilterParameters;->d:[I

    .line 107
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 110
    const-string/jumbo v0, "user_delivery_address"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    sget-object v0, Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "user_delivery_address"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    iput-object v0, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilterParameters;->a:Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    .line 115
    :cond_0
    const-string/jumbo v0, "promoted_label"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    const-string/jumbo v0, "promoted_label"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilterParameters;->b:Ljava/lang/String;

    .line 118
    :cond_1
    const-string/jumbo v0, "is_promoted"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilterParameters;->c:Z

    .line 119
    const-string/jumbo v0, "promoted_on_color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 120
    const-string/jumbo v0, "promoted_on_color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 121
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 122
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilterParameters;->d:[I

    .line 123
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    .line 124
    iget-object v3, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilterParameters;->d:[I

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    aput v4, v3, v0

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_2
    return-void
.end method

.method public b()[I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilterParameters;->d:[I

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilterParameters;->c:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilterParameters;->b:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public e()Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilterParameters;->a:Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 41
    if-nez p1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v0

    .line 45
    :cond_1
    if-ne p1, p0, :cond_2

    .line 46
    const/4 v0, 0x1

    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 53
    check-cast p1, Lcom/yelp/android/serializable/_DisplayGenericSearchFilterParameters;

    .line 55
    new-instance v0, Lcom/yelp/android/dc/b;

    invoke-direct {v0}, Lcom/yelp/android/dc/b;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilterParameters;->a:Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    iget-object v2, p1, Lcom/yelp/android/serializable/_DisplayGenericSearchFilterParameters;->a:Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilterParameters;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_DisplayGenericSearchFilterParameters;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilterParameters;->c:Z

    iget-boolean v2, p1, Lcom/yelp/android/serializable/_DisplayGenericSearchFilterParameters;->c:Z

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(ZZ)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilterParameters;->d:[I

    iget-object v2, p1, Lcom/yelp/android/serializable/_DisplayGenericSearchFilterParameters;->d:[I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a([I[I)Lcom/yelp/android/dc/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/b;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcom/yelp/android/dc/c;

    invoke-direct {v0}, Lcom/yelp/android/dc/c;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilterParameters;->a:Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilterParameters;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilterParameters;->c:Z

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Z)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilterParameters;->d:[I

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a([I)Lcom/yelp/android/dc/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/c;->a()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 94
    iget-object v0, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilterParameters;->a:Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 95
    iget-object v0, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilterParameters;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 96
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilterParameters;->c:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 97
    iget-object v0, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilterParameters;->d:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 98
    return-void
.end method
