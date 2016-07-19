.class final Lcom/yelp/android/serializable/YelpBusinessReview$2;
.super Lcom/yelp/android/serializable/a;
.source "YelpBusinessReview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/YelpBusinessReview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/serializable/a",
        "<",
        "Lcom/yelp/android/serializable/YelpBusinessReview;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 480
    invoke-direct {p0}, Lcom/yelp/android/serializable/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/YelpBusinessReview;
    .locals 1

    .prologue
    .line 484
    new-instance v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-direct {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;-><init>()V

    .line 485
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/YelpBusinessReview;->b(Landroid/os/Parcel;)V

    .line 486
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/YelpBusinessReview;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 496
    new-instance v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-direct {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;-><init>()V

    .line 497
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/YelpBusinessReview;->a(Lorg/json/JSONObject;)V

    .line 498
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/YelpBusinessReview;
    .locals 1

    .prologue
    .line 491
    new-array v0, p1, [Lcom/yelp/android/serializable/YelpBusinessReview;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/YelpBusinessReview$2;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/YelpBusinessReview$2;->a(I)[Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 480
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/YelpBusinessReview$2;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    return-object v0
.end method
