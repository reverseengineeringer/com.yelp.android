.class final Lcom/yelp/android/serializable/cr;
.super Ljava/lang/Object;
.source "ReviewFeedEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/yelp/android/serializable/ReviewFeedEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/ReviewFeedEntry;
    .locals 1

    .prologue
    .line 215
    new-instance v0, Lcom/yelp/android/serializable/ReviewFeedEntry;

    invoke-direct {v0, p1}, Lcom/yelp/android/serializable/ReviewFeedEntry;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/ReviewFeedEntry;
    .locals 1

    .prologue
    .line 220
    new-array v0, p1, [Lcom/yelp/android/serializable/ReviewFeedEntry;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/cr;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/ReviewFeedEntry;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/cr;->a(I)[Lcom/yelp/android/serializable/ReviewFeedEntry;

    move-result-object v0

    return-object v0
.end method
