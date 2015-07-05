.class final Lcom/yelp/android/serializable/dt;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "YelpAddress.java"


# annotations
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
    .line 19
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/YelpAddress;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/yelp/android/serializable/YelpAddress;

    invoke-direct {v0}, Lcom/yelp/android/serializable/YelpAddress;-><init>()V

    .line 27
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/YelpAddress;->readFromParcel(Landroid/os/Parcel;)V

    .line 28
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/YelpAddress;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/yelp/android/serializable/YelpAddress;

    invoke-direct {v0}, Lcom/yelp/android/serializable/YelpAddress;-><init>()V

    .line 34
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/YelpAddress;->readFromJson(Lorg/json/JSONObject;)V

    .line 35
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/YelpAddress;
    .locals 1

    .prologue
    .line 22
    new-array v0, p1, [Lcom/yelp/android/serializable/YelpAddress;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/dt;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/YelpAddress;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/dt;->a(I)[Lcom/yelp/android/serializable/YelpAddress;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/dt;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/YelpAddress;

    move-result-object v0

    return-object v0
.end method
