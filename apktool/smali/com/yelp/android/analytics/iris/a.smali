.class final Lcom/yelp/android/analytics/iris/a;
.super Ljava/lang/Object;
.source "EventIri.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/yelp/android/analytics/iris/EventIri;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/analytics/iris/EventIri;
    .locals 2

    .prologue
    .line 704
    invoke-static {}, Lcom/yelp/android/analytics/iris/EventIri;->values()[Lcom/yelp/android/analytics/iris/EventIri;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/analytics/iris/EventIri;
    .locals 1

    .prologue
    .line 709
    new-array v0, p1, [Lcom/yelp/android/analytics/iris/EventIri;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 701
    invoke-virtual {p0, p1}, Lcom/yelp/android/analytics/iris/a;->a(Landroid/os/Parcel;)Lcom/yelp/android/analytics/iris/EventIri;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 701
    invoke-virtual {p0, p1}, Lcom/yelp/android/analytics/iris/a;->a(I)[Lcom/yelp/android/analytics/iris/EventIri;

    move-result-object v0

    return-object v0
.end method
