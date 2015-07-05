.class final Lcom/yelp/android/serializable/dh;
.super Ljava/lang/Object;
.source "TipFeedEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/yelp/android/serializable/TipFeedEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/TipFeedEntry;
    .locals 1

    .prologue
    .line 177
    new-instance v0, Lcom/yelp/android/serializable/TipFeedEntry;

    invoke-direct {v0, p1}, Lcom/yelp/android/serializable/TipFeedEntry;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/TipFeedEntry;
    .locals 1

    .prologue
    .line 182
    new-array v0, p1, [Lcom/yelp/android/serializable/TipFeedEntry;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/dh;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/TipFeedEntry;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/dh;->a(I)[Lcom/yelp/android/serializable/TipFeedEntry;

    move-result-object v0

    return-object v0
.end method
