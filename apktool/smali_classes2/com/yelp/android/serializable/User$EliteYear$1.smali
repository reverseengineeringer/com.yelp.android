.class final Lcom/yelp/android/serializable/User$EliteYear$1;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/User$EliteYear;
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
        "Lcom/yelp/android/serializable/User$EliteYear;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/User$EliteYear;
    .locals 3

    .prologue
    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Lcom/yelp/android/serializable/User$EliteYear$TYPE;->getTypeByOrdinal(I)Lcom/yelp/android/serializable/User$EliteYear$TYPE;

    move-result-object v1

    .line 240
    new-instance v2, Lcom/yelp/android/serializable/User$EliteYear;

    invoke-direct {v2, v0, v1}, Lcom/yelp/android/serializable/User$EliteYear;-><init>(ILcom/yelp/android/serializable/User$EliteYear$TYPE;)V

    return-object v2
.end method

.method public a(I)[Lcom/yelp/android/serializable/User$EliteYear;
    .locals 1

    .prologue
    .line 245
    new-array v0, p1, [Lcom/yelp/android/serializable/User$EliteYear;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/User$EliteYear$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/User$EliteYear;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/User$EliteYear$1;->a(I)[Lcom/yelp/android/serializable/User$EliteYear;

    move-result-object v0

    return-object v0
.end method
