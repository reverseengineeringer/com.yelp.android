.class final Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation$1;
.super Ljava/lang/Object;
.source "YelpCheckIn.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;
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
        "Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;

    invoke-direct {v0, p1}, Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;
    .locals 1

    .prologue
    .line 70
    new-array v0, p1, [Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation$1;->a(I)[Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;

    move-result-object v0

    return-object v0
.end method
