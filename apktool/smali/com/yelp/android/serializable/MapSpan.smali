.class public Lcom/yelp/android/serializable/MapSpan;
.super Ljava/lang/Object;
.source "MapSpan.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/MapSpan;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mLat:D

.field protected mLatDelta:D

.field protected mLon:D

.field protected mLonDelta:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/yelp/android/serializable/bd;

    invoke-direct {v0}, Lcom/yelp/android/serializable/bd;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/MapSpan;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method protected constructor <init>(DDDD)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide p1, p0, Lcom/yelp/android/serializable/MapSpan;->mLat:D

    .line 20
    iput-wide p3, p0, Lcom/yelp/android/serializable/MapSpan;->mLon:D

    .line 21
    iput-wide p5, p0, Lcom/yelp/android/serializable/MapSpan;->mLonDelta:D

    .line 22
    iput-wide p7, p0, Lcom/yelp/android/serializable/MapSpan;->mLatDelta:D

    .line 23
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public getLat()D
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/yelp/android/serializable/MapSpan;->mLat:D

    return-wide v0
.end method

.method public getLatDelta()D
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/yelp/android/serializable/MapSpan;->mLatDelta:D

    return-wide v0
.end method

.method public getLon()D
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/yelp/android/serializable/MapSpan;->mLon:D

    return-wide v0
.end method

.method public getLonDelta()D
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/yelp/android/serializable/MapSpan;->mLonDelta:D

    return-wide v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 83
    const-string/jumbo v0, "center"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 84
    const-string/jumbo v1, "span"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 85
    const-string/jumbo v2, "latitude"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/yelp/android/serializable/MapSpan;->mLat:D

    .line 86
    const-string/jumbo v2, "longitude"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/yelp/android/serializable/MapSpan;->mLon:D

    .line 87
    const-string/jumbo v0, "longitude_delta"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/yelp/android/serializable/MapSpan;->mLonDelta:D

    .line 88
    const-string/jumbo v0, "latitude_delta"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/MapSpan;->mLatDelta:D

    .line 89
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/MapSpan;->mLat:D

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/MapSpan;->mLon:D

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/MapSpan;->mLonDelta:D

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/MapSpan;->mLatDelta:D

    .line 80
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/yelp/android/serializable/MapSpan;->mLat:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 70
    iget-wide v0, p0, Lcom/yelp/android/serializable/MapSpan;->mLon:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 71
    iget-wide v0, p0, Lcom/yelp/android/serializable/MapSpan;->mLonDelta:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 72
    iget-wide v0, p0, Lcom/yelp/android/serializable/MapSpan;->mLatDelta:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 73
    return-void
.end method
