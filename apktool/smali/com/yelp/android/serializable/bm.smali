.class final Lcom/yelp/android/serializable/bm;
.super Lcom/yelp/android/serializable/ah;
.source "Offer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/serializable/ah",
        "<",
        "Lcom/yelp/android/serializable/Offer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/yelp/android/serializable/ah;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Offer;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/yelp/android/serializable/Offer;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Offer;-><init>()V

    .line 74
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Offer;->readFromParcel(Landroid/os/Parcel;)V

    .line 75
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Offer;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/yelp/android/serializable/Offer;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Offer;-><init>()V

    .line 81
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Offer;->readFromJson(Lorg/json/JSONObject;)V

    .line 82
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/Offer;
    .locals 1

    .prologue
    .line 68
    new-array v0, p1, [Lcom/yelp/android/serializable/Offer;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/bm;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Offer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/bm;->a(I)[Lcom/yelp/android/serializable/Offer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/bm;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Offer;

    move-result-object v0

    return-object v0
.end method
