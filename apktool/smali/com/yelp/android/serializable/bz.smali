.class final Lcom/yelp/android/serializable/bz;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "PreviousReview.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/PreviousReview;",
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
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/PreviousReview;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/yelp/android/serializable/PreviousReview;

    invoke-direct {v0}, Lcom/yelp/android/serializable/PreviousReview;-><init>()V

    .line 22
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/PreviousReview;->readFromParcel(Landroid/os/Parcel;)V

    .line 23
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/PreviousReview;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/yelp/android/serializable/PreviousReview;

    invoke-direct {v0}, Lcom/yelp/android/serializable/PreviousReview;-><init>()V

    .line 29
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/PreviousReview;->readFromJson(Lorg/json/JSONObject;)V

    .line 30
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/PreviousReview;
    .locals 1

    .prologue
    .line 16
    new-array v0, p1, [Lcom/yelp/android/serializable/PreviousReview;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/bz;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/PreviousReview;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/bz;->a(I)[Lcom/yelp/android/serializable/PreviousReview;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/bz;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/PreviousReview;

    move-result-object v0

    return-object v0
.end method
