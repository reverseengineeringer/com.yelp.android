.class final Lcom/yelp/android/serializable/cn;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "Review.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/Review;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Review;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/yelp/android/serializable/Review;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Review;-><init>()V

    .line 18
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Review;->readFromParcel(Landroid/os/Parcel;)V

    .line 19
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Review;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/yelp/android/serializable/Review;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Review;-><init>()V

    .line 25
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Review;->readFromJson(Lorg/json/JSONObject;)V

    .line 26
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/Review;
    .locals 1

    .prologue
    .line 13
    new-array v0, p1, [Lcom/yelp/android/serializable/Review;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/cn;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Review;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/cn;->a(I)[Lcom/yelp/android/serializable/Review;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/cn;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Review;

    move-result-object v0

    return-object v0
.end method
