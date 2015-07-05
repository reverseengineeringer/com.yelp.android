.class final Lcom/yelp/android/util/j;
.super Ljava/lang/Object;
.source "EclairFetcher.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
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
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/util/EclairFetcher$EclairContact;
    .locals 2

    .prologue
    .line 294
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 295
    new-instance v1, Lcom/yelp/android/util/EclairFetcher$EclairContact;

    invoke-direct {v1, v0}, Lcom/yelp/android/util/EclairFetcher$EclairContact;-><init>(Landroid/net/Uri;)V

    .line 296
    invoke-virtual {v1, p1}, Lcom/yelp/android/util/EclairFetcher$EclairContact;->readFromParcel(Landroid/os/Parcel;)V

    .line 297
    return-object v1
.end method

.method public a(I)[Lcom/yelp/android/util/EclairFetcher$EclairContact;
    .locals 1

    .prologue
    .line 302
    new-array v0, p1, [Lcom/yelp/android/util/EclairFetcher$EclairContact;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 291
    invoke-virtual {p0, p1}, Lcom/yelp/android/util/j;->a(Landroid/os/Parcel;)Lcom/yelp/android/util/EclairFetcher$EclairContact;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 291
    invoke-virtual {p0, p1}, Lcom/yelp/android/util/j;->a(I)[Lcom/yelp/android/util/EclairFetcher$EclairContact;

    move-result-object v0

    return-object v0
.end method
