.class final Lcom/yelp/android/appdata/webrequests/ad;
.super Ljava/lang/Object;
.source "BusinessSearchRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
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
    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 523
    new-instance v1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-direct {v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;-><init>()V

    .line 524
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setSearchTerms(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 525
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setTermNear(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 526
    invoke-static {}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;->values()[Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setFormatMode(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 527
    invoke-static {}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->values()[Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setSearchMode(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 528
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 529
    const-class v3, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchOption;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 530
    # getter for: Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mSearchOptions:Ljava/util/EnumSet;
    invoke-static {v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->access$200(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 531
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setUnFoldedResults(Z)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 532
    const-class v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Filter;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setFilter(Lcom/yelp/android/serializable/Filter;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 534
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setLimit(I)V

    .line 535
    const-class v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setLocation(Landroid/location/Location;)Lcom/yelp/android/appdata/webrequests/h;

    .line 537
    const-class v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Category;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setCategory(Lcom/yelp/android/serializable/Category;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 539
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 540
    if-lez v0, :cond_0

    .line 541
    new-array v0, v0, [D

    .line 542
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readDoubleArray([D)V

    .line 543
    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setRegion([D)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 546
    :cond_0
    return-object v1

    .line 531
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)[Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;
    .locals 1

    .prologue
    .line 551
    new-array v0, p1, [Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 520
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/ad;->a(Landroid/os/Parcel;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 520
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/ad;->a(I)[Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    return-object v0
.end method
