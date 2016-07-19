.class abstract Lcom/yelp/android/serializable/_DisplayGenericSearchFilter;
.super Ljava/lang/Object;
.source "_DisplayGenericSearchFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected a:Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;

.field protected b:Lcom/yelp/android/serializable/GenericSearchFilter;

.field protected c:Ljava/lang/String;

.field protected d:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 99
    const-class v0, Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;

    iput-object v0, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilter;->a:Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;

    .line 101
    const-class v0, Lcom/yelp/android/serializable/GenericSearchFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/GenericSearchFilter;

    iput-object v0, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilter;->b:Lcom/yelp/android/serializable/GenericSearchFilter;

    .line 102
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilter;->c:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 104
    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilter;->d:Z

    .line 105
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
    .line 108
    const-string/jumbo v0, "params"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    sget-object v0, Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "params"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;

    iput-object v0, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilter;->a:Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;

    .line 113
    :cond_0
    const-string/jumbo v0, "filter"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    sget-object v0, Lcom/yelp/android/serializable/GenericSearchFilter;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "filter"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/GenericSearchFilter;

    iput-object v0, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilter;->b:Lcom/yelp/android/serializable/GenericSearchFilter;

    .line 116
    :cond_1
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 117
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilter;->c:Ljava/lang/String;

    .line 119
    :cond_2
    const-string/jumbo v0, "is_popular"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilter;->d:Z

    .line 120
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 39
    if-nez p1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v0

    .line 43
    :cond_1
    if-ne p1, p0, :cond_2

    .line 44
    const/4 v0, 0x1

    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 51
    check-cast p1, Lcom/yelp/android/serializable/_DisplayGenericSearchFilter;

    .line 53
    new-instance v0, Lcom/yelp/android/dc/b;

    invoke-direct {v0}, Lcom/yelp/android/dc/b;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilter;->a:Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;

    iget-object v2, p1, Lcom/yelp/android/serializable/_DisplayGenericSearchFilter;->a:Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilter;->b:Lcom/yelp/android/serializable/GenericSearchFilter;

    iget-object v2, p1, Lcom/yelp/android/serializable/_DisplayGenericSearchFilter;->b:Lcom/yelp/android/serializable/GenericSearchFilter;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilter;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_DisplayGenericSearchFilter;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilter;->d:Z

    iget-boolean v2, p1, Lcom/yelp/android/serializable/_DisplayGenericSearchFilter;->d:Z

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(ZZ)Lcom/yelp/android/dc/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/b;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilter;->d:Z

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilter;->c:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lcom/yelp/android/serializable/GenericSearchFilter;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilter;->b:Lcom/yelp/android/serializable/GenericSearchFilter;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/yelp/android/dc/c;

    invoke-direct {v0}, Lcom/yelp/android/dc/c;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilter;->a:Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilter;->b:Lcom/yelp/android/serializable/GenericSearchFilter;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilter;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilter;->d:Z

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Z)Lcom/yelp/android/dc/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/c;->a()I

    move-result v0

    return v0
.end method

.method public i()Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilter;->a:Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    iget-object v0, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilter;->a:Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 93
    iget-object v0, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilter;->b:Lcom/yelp/android/serializable/GenericSearchFilter;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 94
    iget-object v0, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilter;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 95
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_DisplayGenericSearchFilter;->d:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 96
    return-void
.end method
