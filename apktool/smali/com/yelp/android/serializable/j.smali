.class final Lcom/yelp/android/serializable/j;
.super Ljava/lang/Object;
.source "BizPhotoFeedEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/yelp/android/serializable/BizPhotoFeedEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/BizPhotoFeedEntry;
    .locals 1

    .prologue
    .line 222
    new-instance v0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;

    invoke-direct {v0, p1}, Lcom/yelp/android/serializable/BizPhotoFeedEntry;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/BizPhotoFeedEntry;
    .locals 1

    .prologue
    .line 227
    new-array v0, p1, [Lcom/yelp/android/serializable/BizPhotoFeedEntry;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/j;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/BizPhotoFeedEntry;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/j;->a(I)[Lcom/yelp/android/serializable/BizPhotoFeedEntry;

    move-result-object v0

    return-object v0
.end method
