.class final Lcom/yelp/android/serializable/ea;
.super Lcom/yelp/android/serializable/ah;
.source "YelpBusinessReview.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/serializable/ah",
        "<",
        "Lcom/yelp/android/serializable/YelpBusinessReview;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 403
    invoke-direct {p0}, Lcom/yelp/android/serializable/ah;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/YelpBusinessReview;
    .locals 1

    .prologue
    .line 407
    new-instance v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-direct {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;-><init>()V

    .line 408
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/YelpBusinessReview;->readFromParcel(Landroid/os/Parcel;)V

    .line 409
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/YelpBusinessReview;
    .locals 1

    .prologue
    .line 419
    new-instance v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-direct {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;-><init>()V

    .line 420
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/YelpBusinessReview;->readFromJson(Lorg/json/JSONObject;)V

    .line 421
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/YelpBusinessReview;
    .locals 1

    .prologue
    .line 414
    new-array v0, p1, [Lcom/yelp/android/serializable/YelpBusinessReview;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 403
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ea;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 403
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ea;->a(I)[Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 403
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ea;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    return-object v0
.end method