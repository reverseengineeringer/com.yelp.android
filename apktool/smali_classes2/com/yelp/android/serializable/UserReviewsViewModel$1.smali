.class final Lcom/yelp/android/serializable/UserReviewsViewModel$1;
.super Ljava/lang/Object;
.source "UserReviewsViewModel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/UserReviewsViewModel;
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
        "Lcom/yelp/android/serializable/UserReviewsViewModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/UserReviewsViewModel;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/yelp/android/serializable/UserReviewsViewModel;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yelp/android/serializable/UserReviewsViewModel;-><init>(Lcom/yelp/android/serializable/UserReviewsViewModel$1;)V

    .line 51
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/UserReviewsViewModel;->a(Landroid/os/Parcel;)V

    .line 52
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/UserReviewsViewModel;
    .locals 1

    .prologue
    .line 46
    new-array v0, p1, [Lcom/yelp/android/serializable/UserReviewsViewModel;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/UserReviewsViewModel$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/UserReviewsViewModel;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/UserReviewsViewModel$1;->a(I)[Lcom/yelp/android/serializable/UserReviewsViewModel;

    move-result-object v0

    return-object v0
.end method
