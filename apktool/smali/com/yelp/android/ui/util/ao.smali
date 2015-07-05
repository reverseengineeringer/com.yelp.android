.class final Lcom/yelp/android/ui/util/ao;
.super Ljava/lang/Object;
.source "ImageInputHelper.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;
    .locals 2

    .prologue
    .line 755
    new-instance v0, Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;-><init>(Landroid/os/Parcel;Lcom/yelp/android/ui/util/ai;)V

    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;
    .locals 1

    .prologue
    .line 760
    new-array v0, p1, [Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 751
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/util/ao;->a(Landroid/os/Parcel;)Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 751
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/util/ao;->a(I)[Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;

    move-result-object v0

    return-object v0
.end method
