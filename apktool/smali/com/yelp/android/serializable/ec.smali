.class final Lcom/yelp/android/serializable/ec;
.super Ljava/lang/Object;
.source "YelpBusinessReview.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;
    .locals 5

    .prologue
    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 393
    new-instance v1, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;

    const/4 v2, 0x0

    aget-boolean v2, v0, v2

    const/4 v3, 0x1

    aget-boolean v3, v0, v3

    const/4 v4, 0x2

    aget-boolean v0, v0, v4

    invoke-direct {v1, v2, v3, v0}, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;-><init>(ZZZ)V

    return-object v1
.end method

.method public a(I)[Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;
    .locals 1

    .prologue
    .line 398
    new-array v0, p1, [Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 389
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ec;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 389
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ec;->a(I)[Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;

    move-result-object v0

    return-object v0
.end method
