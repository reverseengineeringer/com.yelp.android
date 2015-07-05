.class public Lcom/yelp/android/serializable/Location;
.super Lcom/yelp/android/serializable/_Location;
.source "Location.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/Location;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/yelp/android/serializable/bc;

    invoke-direct {v0}, Lcom/yelp/android/serializable/bc;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/Location;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Location;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_Location;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_Location;->getCity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_Location;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_Location;->getDisplay()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLatLng()Lcom/google/android/gms/maps/model/LatLng;
    .locals 6

    .prologue
    .line 35
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v0
.end method

.method public bridge synthetic getLatitude()D
    .locals 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_Location;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getLongitude()D
    .locals 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_Location;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Location;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Location;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_Location;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
