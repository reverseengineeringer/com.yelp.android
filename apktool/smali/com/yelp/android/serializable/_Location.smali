.class abstract Lcom/yelp/android/serializable/_Location;
.super Ljava/lang/Object;
.source "_Location.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mCity:Ljava/lang/String;

.field protected mCountry:Ljava/lang/String;

.field protected mDisplay:Ljava/lang/String;

.field protected mLatitude:D

.field protected mLongitude:D


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DD)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Location;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/yelp/android/serializable/_Location;->mDisplay:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/yelp/android/serializable/_Location;->mCountry:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/yelp/android/serializable/_Location;->mCity:Ljava/lang/String;

    .line 26
    iput-wide p4, p0, Lcom/yelp/android/serializable/_Location;->mLatitude:D

    .line 27
    iput-wide p6, p0, Lcom/yelp/android/serializable/_Location;->mLongitude:D

    .line 28
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/serializable/_Location;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/serializable/_Location;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yelp/android/serializable/_Location;->mDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/yelp/android/serializable/_Location;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/yelp/android/serializable/_Location;->mLongitude:D

    return-wide v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 72
    const-string/jumbo v0, "display"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    const-string/jumbo v0, "display"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Location;->mDisplay:Ljava/lang/String;

    .line 75
    :cond_0
    const-string/jumbo v0, "country"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    const-string/jumbo v0, "country"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Location;->mCountry:Ljava/lang/String;

    .line 78
    :cond_1
    const-string/jumbo v0, "city"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 79
    const-string/jumbo v0, "city"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Location;->mCity:Ljava/lang/String;

    .line 81
    :cond_2
    const-string/jumbo v0, "latitude"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_Location;->mLatitude:D

    .line 82
    const-string/jumbo v0, "longitude"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_Location;->mLongitude:D

    .line 83
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Location;->mDisplay:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Location;->mCountry:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Location;->mCity:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_Location;->mLatitude:D

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_Location;->mLongitude:D

    .line 69
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yelp/android/serializable/_Location;->mDisplay:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/yelp/android/serializable/_Location;->mCountry:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/yelp/android/serializable/_Location;->mCity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-wide v0, p0, Lcom/yelp/android/serializable/_Location;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 60
    iget-wide v0, p0, Lcom/yelp/android/serializable/_Location;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 61
    return-void
.end method
