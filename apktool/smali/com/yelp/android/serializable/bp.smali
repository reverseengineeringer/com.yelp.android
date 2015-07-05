.class final Lcom/yelp/android/serializable/bp;
.super Lcom/yelp/android/serializable/ah;
.source "OfferRedemption.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/serializable/ah",
        "<",
        "Lcom/yelp/android/serializable/OfferRedemption;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/yelp/android/serializable/ah;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/OfferRedemption;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/yelp/android/serializable/OfferRedemption;

    invoke-direct {v0}, Lcom/yelp/android/serializable/OfferRedemption;-><init>()V

    .line 33
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/OfferRedemption;->readFromParcel(Landroid/os/Parcel;)V

    .line 34
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/OfferRedemption;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/yelp/android/serializable/OfferRedemption;

    invoke-direct {v0}, Lcom/yelp/android/serializable/OfferRedemption;-><init>()V

    .line 40
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/OfferRedemption;->readFromJson(Lorg/json/JSONObject;)V

    .line 41
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/OfferRedemption;
    .locals 1

    .prologue
    .line 28
    new-array v0, p1, [Lcom/yelp/android/serializable/OfferRedemption;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/bp;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/OfferRedemption;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/bp;->a(I)[Lcom/yelp/android/serializable/OfferRedemption;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/bp;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/OfferRedemption;

    move-result-object v0

    return-object v0
.end method
