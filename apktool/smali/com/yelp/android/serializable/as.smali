.class final Lcom/yelp/android/serializable/as;
.super Ljava/lang/Object;
.source "Filter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/yelp/android/serializable/Filter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Filter;
    .locals 9

    .prologue
    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/EnumSet;

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 375
    const-class v0, Lcom/yelp/android/serializable/AttributeFilters;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/yelp/android/serializable/AttributeFilters;

    .line 378
    new-instance v0, Lcom/yelp/android/serializable/Filter;

    new-instance v3, Lcom/yelp/android/serializable/at;

    invoke-direct {v3, v4, v6, v7}, Lcom/yelp/android/serializable/at;-><init>(Ljava/lang/String;D)V

    invoke-static {}, Lcom/yelp/android/serializable/Filter$Sort;->values()[Lcom/yelp/android/serializable/Filter$Sort;

    move-result-object v4

    aget-object v4, v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/serializable/Filter;-><init>(Ljava/util/EnumSet;Ljava/util/Calendar;Lcom/yelp/android/serializable/at;Lcom/yelp/android/serializable/Filter$Sort;Lcom/yelp/android/serializable/AttributeFilters;)V

    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/Filter;
    .locals 1

    .prologue
    .line 384
    new-array v0, p1, [Lcom/yelp/android/serializable/Filter;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/as;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Filter;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/as;->a(I)[Lcom/yelp/android/serializable/Filter;

    move-result-object v0

    return-object v0
.end method
