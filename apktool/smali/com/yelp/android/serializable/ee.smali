.class final Lcom/yelp/android/serializable/ee;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "YelpCheckIn.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/YelpCheckIn;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/YelpCheckIn;
    .locals 1

    .prologue
    .line 289
    new-instance v0, Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-direct {v0}, Lcom/yelp/android/serializable/YelpCheckIn;-><init>()V

    .line 290
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/YelpCheckIn;->readFromParcel(Landroid/os/Parcel;)V

    .line 291
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/YelpCheckIn;
    .locals 1

    .prologue
    .line 301
    new-instance v0, Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-direct {v0}, Lcom/yelp/android/serializable/YelpCheckIn;-><init>()V

    .line 302
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/YelpCheckIn;->readFromJson(Lorg/json/JSONObject;)V

    .line 303
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/YelpCheckIn;
    .locals 1

    .prologue
    .line 296
    new-array v0, p1, [Lcom/yelp/android/serializable/YelpCheckIn;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 286
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ee;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/YelpCheckIn;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 286
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ee;->a(I)[Lcom/yelp/android/serializable/YelpCheckIn;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 286
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ee;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/YelpCheckIn;

    move-result-object v0

    return-object v0
.end method
