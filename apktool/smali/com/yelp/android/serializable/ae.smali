.class final Lcom/yelp/android/serializable/ae;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "DealPurchase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/DealPurchase;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/DealPurchase;
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lcom/yelp/android/serializable/DealPurchase;

    invoke-direct {v0}, Lcom/yelp/android/serializable/DealPurchase;-><init>()V

    .line 125
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/DealPurchase;->readFromParcel(Landroid/os/Parcel;)V

    .line 126
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/DealPurchase;
    .locals 1

    .prologue
    .line 131
    new-instance v0, Lcom/yelp/android/serializable/DealPurchase;

    invoke-direct {v0}, Lcom/yelp/android/serializable/DealPurchase;-><init>()V

    .line 132
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/DealPurchase;->readFromJson(Lorg/json/JSONObject;)V

    .line 133
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/DealPurchase;
    .locals 1

    .prologue
    .line 119
    new-array v0, p1, [Lcom/yelp/android/serializable/DealPurchase;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ae;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/DealPurchase;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ae;->a(I)[Lcom/yelp/android/serializable/DealPurchase;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ae;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/DealPurchase;

    move-result-object v0

    return-object v0
.end method
