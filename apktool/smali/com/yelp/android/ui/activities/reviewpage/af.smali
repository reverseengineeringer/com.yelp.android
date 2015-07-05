.class final Lcom/yelp/android/ui/activities/reviewpage/af;
.super Ljava/lang/Object;
.source "LocaleCount.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/yelp/android/ui/activities/reviewpage/LocaleCount;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/ui/activities/reviewpage/LocaleCount;
    .locals 3

    .prologue
    .line 32
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/LocaleCount;

    invoke-static {p1}, Lcom/yelp/android/serializable/YelpBusinessReview;->readLocaleFromParcel(Landroid/os/Parcel;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/reviewpage/LocaleCount;-><init>(Ljava/util/Locale;I)V

    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/ui/activities/reviewpage/LocaleCount;
    .locals 1

    .prologue
    .line 38
    new-array v0, p1, [Lcom/yelp/android/ui/activities/reviewpage/LocaleCount;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/af;->a(Landroid/os/Parcel;)Lcom/yelp/android/ui/activities/reviewpage/LocaleCount;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/af;->a(I)[Lcom/yelp/android/ui/activities/reviewpage/LocaleCount;

    move-result-object v0

    return-object v0
.end method
