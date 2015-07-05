.class abstract Lcom/yelp/android/serializable/_YelpBusinessAddresses;
.super Ljava/lang/Object;
.source "_YelpBusinessAddresses.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mAddress:Lcom/yelp/android/serializable/YelpDetailedAddress;

.field protected mLanguage:Ljava/lang/String;

.field protected mLocality:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/YelpDetailedAddress;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/yelp/android/serializable/_YelpBusinessAddresses;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/yelp/android/serializable/_YelpBusinessAddresses;->mLanguage:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/yelp/android/serializable/_YelpBusinessAddresses;->mLocality:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/yelp/android/serializable/_YelpBusinessAddresses;->mAddress:Lcom/yelp/android/serializable/YelpDetailedAddress;

    .line 23
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Lcom/yelp/android/serializable/YelpDetailedAddress;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessAddresses;->mAddress:Lcom/yelp/android/serializable/YelpDetailedAddress;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessAddresses;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getLocality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessAddresses;->mLocality:Ljava/lang/String;

    return-object v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 57
    const-string/jumbo v0, "language"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    const-string/jumbo v0, "language"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessAddresses;->mLanguage:Ljava/lang/String;

    .line 60
    :cond_0
    const-string/jumbo v0, "locality"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    const-string/jumbo v0, "locality"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessAddresses;->mLocality:Ljava/lang/String;

    .line 63
    :cond_1
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessAddresses;->mLanguage:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessAddresses;->mLocality:Ljava/lang/String;

    .line 53
    const-class v0, Lcom/yelp/android/serializable/YelpDetailedAddress;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpDetailedAddress;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessAddresses;->mAddress:Lcom/yelp/android/serializable/YelpDetailedAddress;

    .line 54
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessAddresses;->mLanguage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessAddresses;->mLocality:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessAddresses;->mAddress:Lcom/yelp/android/serializable/YelpDetailedAddress;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 48
    return-void
.end method
