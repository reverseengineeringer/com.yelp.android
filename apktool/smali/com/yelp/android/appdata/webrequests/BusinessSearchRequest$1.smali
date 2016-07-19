.class final Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$1;
.super Ljava/lang/Object;
.source "BusinessSearchRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;
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
        "Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 544
    new-instance v1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-direct {v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;-><init>()V

    .line 545
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->g(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 546
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->e(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 547
    invoke-static {}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;->values()[Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 548
    invoke-static {}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->values()[Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 549
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->b(Z)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 550
    const-class v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Filter;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Lcom/yelp/android/serializable/Filter;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 553
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->b(I)V

    .line 554
    const-class v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->b(Landroid/location/Location;)Lcom/yelp/android/appdata/webrequests/k;

    .line 557
    const-class v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Category;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Lcom/yelp/android/serializable/Category;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 560
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 561
    if-lez v0, :cond_0

    .line 562
    new-array v0, v0, [D

    .line 563
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readDoubleArray([D)V

    .line 564
    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a([D)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 567
    :cond_0
    return-object v1

    .line 549
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)[Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;
    .locals 1

    .prologue
    .line 572
    new-array v0, p1, [Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 541
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 541
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$1;->a(I)[Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    return-object v0
.end method
