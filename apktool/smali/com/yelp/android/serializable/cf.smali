.class final Lcom/yelp/android/serializable/cf;
.super Ljava/lang/Object;
.source "RankTitle.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/yelp/android/serializable/RankTitle;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/RankTitle;
    .locals 3

    .prologue
    .line 159
    new-instance v0, Lcom/yelp/android/serializable/RankTitle;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/serializable/RankTitle;-><init>(Ljava/util/List;I)V

    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/RankTitle;
    .locals 1

    .prologue
    .line 164
    new-array v0, p1, [Lcom/yelp/android/serializable/RankTitle;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/cf;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/RankTitle;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/cf;->a(I)[Lcom/yelp/android/serializable/RankTitle;

    move-result-object v0

    return-object v0
.end method
