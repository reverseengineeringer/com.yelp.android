.class public Lcom/yelp/android/serializable/Ranking;
.super Lcom/yelp/android/serializable/_Ranking;
.source "Ranking.java"

# interfaces
.implements Lcom/yelp/android/serializable/DisplayableAsUserBadge;


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/Ranking;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsEliteUser:Z

.field private mRankString:Ljava/lang/String;

.field private mRankStringVerbose:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/yelp/android/serializable/cg;

    invoke-direct {v0}, Lcom/yelp/android/serializable/cg;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/Ranking;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Ranking;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_Ranking;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getBusinessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_Ranking;->getBusinessName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCount()I
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_Ranking;->getCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDateCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_Ranking;->getDateCreated()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getFriendCount()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/yelp/android/serializable/Ranking;->mUserFriendCount:I

    return v0
.end method

.method public getMediaCount()I
    .locals 2

    .prologue
    .line 63
    iget v0, p0, Lcom/yelp/android/serializable/Ranking;->mUserPhotoCount:I

    iget v1, p0, Lcom/yelp/android/serializable/Ranking;->mUserVideoCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getPhotoCount()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/yelp/android/serializable/Ranking;->mUserPhotoCount:I

    return v0
.end method

.method public bridge synthetic getRank()I
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_Ranking;->getRank()I

    move-result v0

    return v0
.end method

.method public getRankString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/serializable/Ranking;->mRankString:Ljava/lang/String;

    return-object v0
.end method

.method public getRankStringVerbose()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yelp/android/serializable/Ranking;->mRankStringVerbose:Ljava/lang/String;

    return-object v0
.end method

.method public getReviewCount()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/yelp/android/serializable/Ranking;->mUserReviewCount:I

    return v0
.end method

.method public bridge synthetic getUserEliteYears()[I
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_Ranking;->getUserEliteYears()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUserFriendCount()I
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_Ranking;->getUserFriendCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_Ranking;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_Ranking;->getUserName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUserPhotoCount()I
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_Ranking;->getUserPhotoCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getUserPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_Ranking;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUserReviewCount()I
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_Ranking;->getUserReviewCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getUserVideoCount()I
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_Ranking;->getUserVideoCount()I

    move-result v0

    return v0
.end method

.method public getVideoCount()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/yelp/android/serializable/Ranking;->mUserVideoCount:I

    return v0
.end method

.method public isEliteUser()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/yelp/android/serializable/Ranking;->mIsEliteUser:Z

    return v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 96
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Ranking;->readFromJson(Lorg/json/JSONObject;)V

    .line 97
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    .line 98
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Ranking;->getRank()I

    move-result v1

    .line 99
    const v2, 0x7f070132

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Lcom/yelp/android/appdata/AppData;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yelp/android/serializable/Ranking;->mRankString:Ljava/lang/String;

    .line 100
    const v2, 0x7f070133

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-virtual {v0, v2, v3}, Lcom/yelp/android/appdata/AppData;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Ranking;->mRankStringVerbose:Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Ranking;->getUserEliteYears()[I

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/services/r;->a([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/Ranking;->mIsEliteUser:Z

    .line 103
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Ranking;->readFromParcel(Landroid/os/Parcel;)V

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Ranking;->mRankString:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 91
    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/Ranking;->mIsEliteUser:Z

    .line 92
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_Ranking;->writeToParcel(Landroid/os/Parcel;I)V

    .line 82
    iget-object v0, p0, Lcom/yelp/android/serializable/Ranking;->mRankString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/yelp/android/serializable/Ranking;->mIsEliteUser:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 84
    return-void
.end method
