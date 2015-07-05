.class final Lcom/yelp/android/serializable/eg;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "YelpDeal.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/YelpDeal;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/YelpDeal;
    .locals 1

    .prologue
    .line 262
    new-instance v0, Lcom/yelp/android/serializable/YelpDeal;

    invoke-direct {v0}, Lcom/yelp/android/serializable/YelpDeal;-><init>()V

    .line 263
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/YelpDeal;->readFromParcel(Landroid/os/Parcel;)V

    .line 264
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/YelpDeal;
    .locals 1

    .prologue
    .line 269
    new-instance v0, Lcom/yelp/android/serializable/YelpDeal;

    invoke-direct {v0}, Lcom/yelp/android/serializable/YelpDeal;-><init>()V

    .line 270
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/YelpDeal;->readFromJson(Lorg/json/JSONObject;)V

    .line 271
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/YelpDeal;
    .locals 1

    .prologue
    .line 257
    new-array v0, p1, [Lcom/yelp/android/serializable/YelpDeal;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 253
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/eg;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/YelpDeal;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 253
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/eg;->a(I)[Lcom/yelp/android/serializable/YelpDeal;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 253
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/eg;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/YelpDeal;

    move-result-object v0

    return-object v0
.end method
