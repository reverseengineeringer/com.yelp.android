.class final Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback$1;
.super Ljava/lang/Object;
.source "YelpBusinessReview.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;
    .locals 5

    .prologue
    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 396
    new-instance v1, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v0, v0, v4

    invoke-direct {v1, v2, v3, v0}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;-><init>(III)V

    return-object v1
.end method

.method public a(I)[Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;
    .locals 1

    .prologue
    .line 401
    new-array v0, p1, [Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 392
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 392
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback$1;->a(I)[Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    move-result-object v0

    return-object v0
.end method
