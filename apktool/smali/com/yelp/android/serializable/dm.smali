.class final Lcom/yelp/android/serializable/dm;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/yelp/android/serializable/User$EliteYear;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/User$EliteYear;
    .locals 3

    .prologue
    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Lcom/yelp/android/serializable/User$EliteYear$TYPE;->getTypeByOrdinal(I)Lcom/yelp/android/serializable/User$EliteYear$TYPE;

    move-result-object v1

    .line 205
    new-instance v2, Lcom/yelp/android/serializable/User$EliteYear;

    invoke-direct {v2, v0, v1}, Lcom/yelp/android/serializable/User$EliteYear;-><init>(ILcom/yelp/android/serializable/User$EliteYear$TYPE;)V

    return-object v2
.end method

.method public a(I)[Lcom/yelp/android/serializable/User$EliteYear;
    .locals 1

    .prologue
    .line 210
    new-array v0, p1, [Lcom/yelp/android/serializable/User$EliteYear;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/dm;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/User$EliteYear;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/dm;->a(I)[Lcom/yelp/android/serializable/User$EliteYear;

    move-result-object v0

    return-object v0
.end method
