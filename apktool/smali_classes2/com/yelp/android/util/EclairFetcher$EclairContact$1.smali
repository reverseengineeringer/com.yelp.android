.class final Lcom/yelp/android/util/EclairFetcher$EclairContact$1;
.super Ljava/lang/Object;
.source "EclairFetcher.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/util/EclairFetcher$EclairContact;
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
        "Lcom/yelp/android/util/EclairFetcher$EclairContact;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/util/EclairFetcher$EclairContact;
    .locals 2

    .prologue
    .line 334
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 335
    new-instance v1, Lcom/yelp/android/util/EclairFetcher$EclairContact;

    invoke-direct {v1, v0}, Lcom/yelp/android/util/EclairFetcher$EclairContact;-><init>(Landroid/net/Uri;)V

    .line 336
    invoke-virtual {v1, p1}, Lcom/yelp/android/util/EclairFetcher$EclairContact;->a(Landroid/os/Parcel;)V

    .line 337
    return-object v1
.end method

.method public a(I)[Lcom/yelp/android/util/EclairFetcher$EclairContact;
    .locals 1

    .prologue
    .line 342
    new-array v0, p1, [Lcom/yelp/android/util/EclairFetcher$EclairContact;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0, p1}, Lcom/yelp/android/util/EclairFetcher$EclairContact$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/util/EclairFetcher$EclairContact;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0, p1}, Lcom/yelp/android/util/EclairFetcher$EclairContact$1;->a(I)[Lcom/yelp/android/util/EclairFetcher$EclairContact;

    move-result-object v0

    return-object v0
.end method
