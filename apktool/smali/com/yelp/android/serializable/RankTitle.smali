.class public Lcom/yelp/android/serializable/RankTitle;
.super Ljava/lang/Object;
.source "RankTitle.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yelp/android/serializable/RankTitle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mLocationCount:I

.field private final mLocationNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 156
    new-instance v0, Lcom/yelp/android/serializable/cf;

    invoke-direct {v0}, Lcom/yelp/android/serializable/cf;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/RankTitle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/yelp/android/serializable/RankTitle;->mLocationNames:Ljava/util/List;

    .line 144
    iput p2, p0, Lcom/yelp/android/serializable/RankTitle;->mLocationCount:I

    .line 145
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public getLocationCount()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/yelp/android/serializable/RankTitle;->mLocationCount:I

    return v0
.end method

.method public getLocationNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/yelp/android/serializable/RankTitle;->mLocationNames:Ljava/util/List;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/yelp/android/serializable/RankTitle;->mLocationNames:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 171
    iget v0, p0, Lcom/yelp/android/serializable/RankTitle;->mLocationCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    return-void
.end method
