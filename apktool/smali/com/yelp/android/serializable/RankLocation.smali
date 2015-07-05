.class public Lcom/yelp/android/serializable/RankLocation;
.super Ljava/lang/Object;
.source "RankLocation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yelp/android/serializable/RankLocation;",
            ">;"
        }
    .end annotation
.end field

.field public static final LAZY_CREATOR:Lcom/yelp/android/serializable/az;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/serializable/az",
            "<",
            "Lcom/yelp/android/serializable/RankLocation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

.field private final mId:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mRank:Lcom/yelp/android/serializable/RankTitle$Rank;

.field private final mTopUserCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/yelp/android/serializable/cd;

    invoke-direct {v0}, Lcom/yelp/android/serializable/cd;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/RankLocation;->LAZY_CREATOR:Lcom/yelp/android/serializable/az;

    .line 50
    new-instance v0, Lcom/yelp/android/serializable/ce;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ce;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/RankLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/yelp/android/serializable/RankTitle$Rank;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/yelp/android/serializable/RankLocation;->mId:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/yelp/android/serializable/RankLocation;->mName:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/yelp/android/serializable/RankLocation;->mRank:Lcom/yelp/android/serializable/RankTitle$Rank;

    .line 22
    iput p3, p0, Lcom/yelp/android/serializable/RankLocation;->mTopUserCount:I

    .line 23
    iput-object p5, p0, Lcom/yelp/android/serializable/RankLocation;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    .line 24
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public getBusiness()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/yelp/android/serializable/RankLocation;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yelp/android/serializable/RankLocation;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yelp/android/serializable/RankLocation;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getRank()Lcom/yelp/android/serializable/RankTitle$Rank;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/yelp/android/serializable/RankLocation;->mRank:Lcom/yelp/android/serializable/RankTitle$Rank;

    return-object v0
.end method

.method public getTopUserCount()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/yelp/android/serializable/RankLocation;->mTopUserCount:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yelp/android/serializable/RankLocation;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/yelp/android/serializable/RankLocation;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget v0, p0, Lcom/yelp/android/serializable/RankLocation;->mTopUserCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-object v0, p0, Lcom/yelp/android/serializable/RankLocation;->mRank:Lcom/yelp/android/serializable/RankTitle$Rank;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/yelp/android/serializable/RankLocation;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 73
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/RankLocation;->mRank:Lcom/yelp/android/serializable/RankTitle$Rank;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RankTitle$Rank;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
