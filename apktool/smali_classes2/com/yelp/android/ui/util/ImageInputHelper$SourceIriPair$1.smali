.class final Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair$1;
.super Ljava/lang/Object;
.source "ImageInputHelper.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;
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
        "Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;
    .locals 2

    .prologue
    .line 785
    new-instance v0, Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;-><init>(Landroid/os/Parcel;Lcom/yelp/android/ui/util/ImageInputHelper$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;
    .locals 1

    .prologue
    .line 790
    new-array v0, p1, [Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 781
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 781
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair$1;->a(I)[Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;

    move-result-object v0

    return-object v0
.end method
