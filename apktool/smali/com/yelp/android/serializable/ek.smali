.class final Lcom/yelp/android/serializable/ek;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "YelpDealOption.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/YelpDealOption;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/YelpDealOption;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/yelp/android/serializable/YelpDealOption;

    invoke-direct {v0}, Lcom/yelp/android/serializable/YelpDealOption;-><init>()V

    .line 48
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/YelpDealOption;->readFromParcel(Landroid/os/Parcel;)V

    .line 49
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/YelpDealOption;
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/yelp/android/serializable/YelpDealOption;

    invoke-direct {v0}, Lcom/yelp/android/serializable/YelpDealOption;-><init>()V

    .line 55
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/YelpDealOption;->readFromJson(Lorg/json/JSONObject;)V

    .line 56
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/YelpDealOption;
    .locals 1

    .prologue
    .line 43
    new-array v0, p1, [Lcom/yelp/android/serializable/YelpDealOption;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ek;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/YelpDealOption;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ek;->a(I)[Lcom/yelp/android/serializable/YelpDealOption;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ek;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/YelpDealOption;

    move-result-object v0

    return-object v0
.end method
