.class final Lcom/yelp/android/serializable/aw;
.super Ljava/lang/Object;
.source "GenericFeedEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/yelp/android/serializable/GenericFeedEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/GenericFeedEntry;
    .locals 1

    .prologue
    .line 154
    new-instance v0, Lcom/yelp/android/serializable/GenericFeedEntry;

    invoke-direct {v0, p1}, Lcom/yelp/android/serializable/GenericFeedEntry;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/GenericFeedEntry;
    .locals 1

    .prologue
    .line 159
    new-array v0, p1, [Lcom/yelp/android/serializable/GenericFeedEntry;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/aw;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/GenericFeedEntry;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/aw;->a(I)[Lcom/yelp/android/serializable/GenericFeedEntry;

    move-result-object v0

    return-object v0
.end method
