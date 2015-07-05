.class final Lcom/yelp/android/serializable/bc;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "Location.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/Location;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Location;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/yelp/android/serializable/Location;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Location;-><init>()V

    .line 22
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Location;->readFromParcel(Landroid/os/Parcel;)V

    .line 23
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Location;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/yelp/android/serializable/Location;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Location;-><init>()V

    .line 29
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Location;->readFromJson(Lorg/json/JSONObject;)V

    .line 30
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/Location;
    .locals 1

    .prologue
    .line 17
    new-array v0, p1, [Lcom/yelp/android/serializable/Location;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/bc;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Location;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/bc;->a(I)[Lcom/yelp/android/serializable/Location;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/bc;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Location;

    move-result-object v0

    return-object v0
.end method
