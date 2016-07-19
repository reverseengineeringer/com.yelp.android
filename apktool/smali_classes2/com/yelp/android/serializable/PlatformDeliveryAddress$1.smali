.class final Lcom/yelp/android/serializable/PlatformDeliveryAddress$1;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "PlatformDeliveryAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/PlatformDeliveryAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/PlatformDeliveryAddress;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/PlatformDeliveryAddress;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/yelp/android/serializable/PlatformDeliveryAddress;

    invoke-direct {v0}, Lcom/yelp/android/serializable/PlatformDeliveryAddress;-><init>()V

    .line 34
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/PlatformDeliveryAddress;->a(Landroid/os/Parcel;)V

    .line 35
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/PlatformDeliveryAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lcom/yelp/android/serializable/PlatformDeliveryAddress;

    invoke-direct {v0}, Lcom/yelp/android/serializable/PlatformDeliveryAddress;-><init>()V

    .line 41
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/PlatformDeliveryAddress;->a(Lorg/json/JSONObject;)V

    .line 42
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/PlatformDeliveryAddress;
    .locals 1

    .prologue
    .line 29
    new-array v0, p1, [Lcom/yelp/android/serializable/PlatformDeliveryAddress;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/PlatformDeliveryAddress$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/PlatformDeliveryAddress;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/PlatformDeliveryAddress$1;->a(I)[Lcom/yelp/android/serializable/PlatformDeliveryAddress;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/PlatformDeliveryAddress$1;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/PlatformDeliveryAddress;

    move-result-object v0

    return-object v0
.end method
