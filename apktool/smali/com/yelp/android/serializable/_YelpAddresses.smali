.class abstract Lcom/yelp/android/serializable/_YelpAddresses;
.super Ljava/lang/Object;
.source "_YelpAddresses.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mPrimaryLanguage:Lcom/yelp/android/serializable/YelpAddress;

.field protected mSecondaryLanguage:Lcom/yelp/android/serializable/YelpAddress;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method protected constructor <init>(Lcom/yelp/android/serializable/YelpAddress;Lcom/yelp/android/serializable/YelpAddress;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/yelp/android/serializable/_YelpAddresses;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/yelp/android/serializable/_YelpAddresses;->mPrimaryLanguage:Lcom/yelp/android/serializable/YelpAddress;

    .line 21
    iput-object p2, p0, Lcom/yelp/android/serializable/_YelpAddresses;->mSecondaryLanguage:Lcom/yelp/android/serializable/YelpAddress;

    .line 22
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public getPrimaryLanguage()Lcom/yelp/android/serializable/YelpAddress;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpAddresses;->mPrimaryLanguage:Lcom/yelp/android/serializable/YelpAddress;

    return-object v0
.end method

.method public getSecondaryLanguage()Lcom/yelp/android/serializable/YelpAddress;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpAddresses;->mSecondaryLanguage:Lcom/yelp/android/serializable/YelpAddress;

    return-object v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 51
    const-string/jumbo v0, "primary_language"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    sget-object v0, Lcom/yelp/android/serializable/YelpAddress;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "primary_language"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpAddress;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpAddresses;->mPrimaryLanguage:Lcom/yelp/android/serializable/YelpAddress;

    .line 54
    :cond_0
    const-string/jumbo v0, "secondary_language"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    sget-object v0, Lcom/yelp/android/serializable/YelpAddress;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "secondary_language"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpAddress;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpAddresses;->mSecondaryLanguage:Lcom/yelp/android/serializable/YelpAddress;

    .line 57
    :cond_1
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/yelp/android/serializable/YelpAddress;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpAddress;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpAddresses;->mPrimaryLanguage:Lcom/yelp/android/serializable/YelpAddress;

    .line 47
    const-class v0, Lcom/yelp/android/serializable/YelpAddress;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpAddress;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpAddresses;->mSecondaryLanguage:Lcom/yelp/android/serializable/YelpAddress;

    .line 48
    return-void
.end method

.method public writeJSON()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 60
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 61
    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpAddresses;->mPrimaryLanguage:Lcom/yelp/android/serializable/YelpAddress;

    if-eqz v1, :cond_0

    .line 62
    const-string/jumbo v1, "primary_language"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpAddresses;->mPrimaryLanguage:Lcom/yelp/android/serializable/YelpAddress;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpAddress;->writeJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpAddresses;->mSecondaryLanguage:Lcom/yelp/android/serializable/YelpAddress;

    if-eqz v1, :cond_1

    .line 65
    const-string/jumbo v1, "secondary_language"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpAddresses;->mSecondaryLanguage:Lcom/yelp/android/serializable/YelpAddress;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpAddress;->writeJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    :cond_1
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpAddresses;->mPrimaryLanguage:Lcom/yelp/android/serializable/YelpAddress;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 42
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpAddresses;->mSecondaryLanguage:Lcom/yelp/android/serializable/YelpAddress;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 43
    return-void
.end method
