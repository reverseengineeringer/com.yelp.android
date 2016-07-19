.class final Lcom/yelp/android/serializable/RankLocation$2;
.super Ljava/lang/Object;
.source "RankLocation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/RankLocation;
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
        "Lcom/yelp/android/serializable/RankLocation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/RankLocation;
    .locals 6

    .prologue
    .line 58
    new-instance v0, Lcom/yelp/android/serializable/RankLocation;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/yelp/android/serializable/RankTitle$Rank;->rankForString(Ljava/lang/String;)Lcom/yelp/android/serializable/RankTitle$Rank;

    move-result-object v4

    const-class v5, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/serializable/RankLocation;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/yelp/android/serializable/RankTitle$Rank;Lcom/yelp/android/serializable/YelpBusiness;)V

    return-object v0
.end method

.method public final a(I)[Lcom/yelp/android/serializable/RankLocation;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/yelp/android/serializable/RankLocation;->a:Lcom/yelp/android/serializable/c;

    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/c;->a(I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/RankLocation;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/RankLocation$2;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/RankLocation;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/RankLocation$2;->a(I)[Lcom/yelp/android/serializable/RankLocation;

    move-result-object v0

    return-object v0
.end method
