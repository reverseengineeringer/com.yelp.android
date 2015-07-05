.class final Lcom/yelp/android/serializable/du;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "YelpAddresses.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/YelpAddresses;",
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
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/YelpAddresses;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/yelp/android/serializable/YelpAddresses;

    invoke-direct {v0}, Lcom/yelp/android/serializable/YelpAddresses;-><init>()V

    .line 27
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/YelpAddresses;->readFromParcel(Landroid/os/Parcel;)V

    .line 28
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/YelpAddresses;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/yelp/android/serializable/YelpAddresses;

    invoke-direct {v0}, Lcom/yelp/android/serializable/YelpAddresses;-><init>()V

    .line 34
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/YelpAddresses;->readFromJson(Lorg/json/JSONObject;)V

    .line 35
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/YelpAddresses;
    .locals 1

    .prologue
    .line 22
    new-array v0, p1, [Lcom/yelp/android/serializable/YelpAddresses;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/du;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/YelpAddresses;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/du;->a(I)[Lcom/yelp/android/serializable/YelpAddresses;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/du;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/YelpAddresses;

    move-result-object v0

    return-object v0
.end method
