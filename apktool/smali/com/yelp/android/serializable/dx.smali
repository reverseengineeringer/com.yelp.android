.class final Lcom/yelp/android/serializable/dx;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "YelpBusiness.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/YelpBusiness;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 275
    new-instance v0, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {v0}, Lcom/yelp/android/serializable/YelpBusiness;-><init>()V

    .line 276
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/YelpBusiness;->readFromParcel(Landroid/os/Parcel;)V

    .line 277
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 287
    new-instance v0, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {v0}, Lcom/yelp/android/serializable/YelpBusiness;-><init>()V

    .line 288
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/YelpBusiness;->readFromJson(Lorg/json/JSONObject;)V

    .line 289
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 282
    new-array v0, p1, [Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/dx;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/dx;->a(I)[Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/dx;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    return-object v0
.end method
