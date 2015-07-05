.class final Lcom/yelp/android/serializable/el;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "YelpDetailedAddress.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/YelpDetailedAddress;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/YelpDetailedAddress;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/yelp/android/serializable/YelpDetailedAddress;

    invoke-direct {v0}, Lcom/yelp/android/serializable/YelpDetailedAddress;-><init>()V

    .line 21
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/YelpDetailedAddress;->readFromParcel(Landroid/os/Parcel;)V

    .line 22
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/YelpDetailedAddress;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/yelp/android/serializable/YelpDetailedAddress;

    invoke-direct {v0}, Lcom/yelp/android/serializable/YelpDetailedAddress;-><init>()V

    .line 28
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/YelpDetailedAddress;->readFromJson(Lorg/json/JSONObject;)V

    .line 29
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/YelpDetailedAddress;
    .locals 1

    .prologue
    .line 16
    new-array v0, p1, [Lcom/yelp/android/serializable/YelpDetailedAddress;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/el;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/YelpDetailedAddress;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/el;->a(I)[Lcom/yelp/android/serializable/YelpDetailedAddress;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/el;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/YelpDetailedAddress;

    move-result-object v0

    return-object v0
.end method
