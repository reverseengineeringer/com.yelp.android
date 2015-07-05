.class final Lcom/yelp/android/serializable/bk;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "NearbyResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/NearbyResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/NearbyResult;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/yelp/android/serializable/NearbyResult;

    invoke-direct {v0}, Lcom/yelp/android/serializable/NearbyResult;-><init>()V

    .line 29
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/NearbyResult;->readFromParcel(Landroid/os/Parcel;)V

    .line 30
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/NearbyResult;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/yelp/android/serializable/NearbyResult;

    invoke-direct {v0}, Lcom/yelp/android/serializable/NearbyResult;-><init>()V

    .line 36
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/NearbyResult;->readFromJson(Lorg/json/JSONObject;)V

    .line 37
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/NearbyResult;
    .locals 1

    .prologue
    .line 24
    new-array v0, p1, [Lcom/yelp/android/serializable/NearbyResult;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/bk;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/NearbyResult;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/bk;->a(I)[Lcom/yelp/android/serializable/NearbyResult;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/bk;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/NearbyResult;

    move-result-object v0

    return-object v0
.end method
