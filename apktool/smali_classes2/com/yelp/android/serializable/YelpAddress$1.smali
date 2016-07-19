.class final Lcom/yelp/android/serializable/YelpAddress$1;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "YelpAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/YelpAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/YelpAddress;",
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
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/YelpAddress;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/yelp/android/serializable/YelpAddress;

    invoke-direct {v0}, Lcom/yelp/android/serializable/YelpAddress;-><init>()V

    .line 29
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/YelpAddress;->a(Landroid/os/Parcel;)V

    .line 30
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/YelpAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lcom/yelp/android/serializable/YelpAddress;

    invoke-direct {v0}, Lcom/yelp/android/serializable/YelpAddress;-><init>()V

    .line 36
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/YelpAddress;->a(Lorg/json/JSONObject;)V

    .line 37
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/YelpAddress;
    .locals 1

    .prologue
    .line 24
    new-array v0, p1, [Lcom/yelp/android/serializable/YelpAddress;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/YelpAddress$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/YelpAddress;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/YelpAddress$1;->a(I)[Lcom/yelp/android/serializable/YelpAddress;

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
    .line 21
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/YelpAddress$1;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/YelpAddress;

    move-result-object v0

    return-object v0
.end method
