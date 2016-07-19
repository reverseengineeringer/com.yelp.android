.class final Lcom/yelp/android/serializable/Offer$1;
.super Lcom/yelp/android/serializable/a;
.source "Offer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/Offer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/serializable/a",
        "<",
        "Lcom/yelp/android/serializable/Offer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/yelp/android/serializable/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Offer;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/yelp/android/serializable/Offer;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Offer;-><init>()V

    .line 77
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Offer;->a(Landroid/os/Parcel;)V

    .line 78
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Offer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Lcom/yelp/android/serializable/Offer;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Offer;-><init>()V

    .line 84
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Offer;->a(Lorg/json/JSONObject;)V

    .line 85
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/Offer;
    .locals 1

    .prologue
    .line 71
    new-array v0, p1, [Lcom/yelp/android/serializable/Offer;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/Offer$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Offer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/Offer$1;->a(I)[Lcom/yelp/android/serializable/Offer;

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
    .line 67
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/Offer$1;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Offer;

    move-result-object v0

    return-object v0
.end method
