.class final Lcom/yelp/android/serializable/k;
.super Ljava/lang/Object;
.source "BookmarkFeedEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/yelp/android/serializable/BookmarkFeedEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/BookmarkFeedEntry;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/yelp/android/serializable/BookmarkFeedEntry;

    invoke-direct {v0, p1}, Lcom/yelp/android/serializable/BookmarkFeedEntry;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/BookmarkFeedEntry;
    .locals 1

    .prologue
    .line 105
    new-array v0, p1, [Lcom/yelp/android/serializable/BookmarkFeedEntry;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/k;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/BookmarkFeedEntry;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/k;->a(I)[Lcom/yelp/android/serializable/BookmarkFeedEntry;

    move-result-object v0

    return-object v0
.end method
