.class final Lcom/yelp/android/ui/util/am;
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
        "Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;
    .locals 2

    .prologue
    .line 126
    invoke-static {}, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->values()[Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;
    .locals 1

    .prologue
    .line 131
    new-array v0, p1, [Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/util/am;->a(Landroid/os/Parcel;)Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/util/am;->a(I)[Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    move-result-object v0

    return-object v0
.end method
