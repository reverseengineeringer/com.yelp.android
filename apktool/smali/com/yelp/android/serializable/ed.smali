.class final Lcom/yelp/android/serializable/ed;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "YelpBusinessReviewInsight.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/YelpBusinessReviewInsight;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/YelpBusinessReviewInsight;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/yelp/android/serializable/YelpBusinessReviewInsight;

    invoke-direct {v0}, Lcom/yelp/android/serializable/YelpBusinessReviewInsight;-><init>()V

    .line 20
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/YelpBusinessReviewInsight;->readFromParcel(Landroid/os/Parcel;)V

    .line 21
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/YelpBusinessReviewInsight;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/yelp/android/serializable/YelpBusinessReviewInsight;

    invoke-direct {v0}, Lcom/yelp/android/serializable/YelpBusinessReviewInsight;-><init>()V

    .line 27
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/YelpBusinessReviewInsight;->readFromJson(Lorg/json/JSONObject;)V

    .line 28
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/YelpBusinessReviewInsight;
    .locals 1

    .prologue
    .line 15
    new-array v0, p1, [Lcom/yelp/android/serializable/YelpBusinessReviewInsight;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ed;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/YelpBusinessReviewInsight;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ed;->a(I)[Lcom/yelp/android/serializable/YelpBusinessReviewInsight;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ed;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/YelpBusinessReviewInsight;

    move-result-object v0

    return-object v0
.end method