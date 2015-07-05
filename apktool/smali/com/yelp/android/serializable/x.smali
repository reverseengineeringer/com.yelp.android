.class final Lcom/yelp/android/serializable/x;
.super Ljava/lang/Object;
.source "CheckInFeedEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/yelp/android/serializable/CheckInFeedEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/CheckInFeedEntry;
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/yelp/android/serializable/CheckInFeedEntry;

    invoke-direct {v0, p1}, Lcom/yelp/android/serializable/CheckInFeedEntry;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/CheckInFeedEntry;
    .locals 1

    .prologue
    .line 103
    new-array v0, p1, [Lcom/yelp/android/serializable/CheckInFeedEntry;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/x;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/CheckInFeedEntry;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/x;->a(I)[Lcom/yelp/android/serializable/CheckInFeedEntry;

    move-result-object v0

    return-object v0
.end method
