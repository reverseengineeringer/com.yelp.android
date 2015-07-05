.class public Lcom/yelp/android/serializable/YelpBusinessReview;
.super Lcom/yelp/android/serializable/_YelpBusinessReview;
.source "YelpBusinessReview.java"

# interfaces
.implements Lcom/yelp/android/serializable/Complimentable;
.implements Lcom/yelp/android/serializable/m;


# static fields
.field public static final CREATOR:Lcom/yelp/android/serializable/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/serializable/ah",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAttachedMedia:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/IdentifiableMedia;",
            ">;"
        }
    .end annotation
.end field

.field private mDisabledFeatureSet:Lcom/yelp/android/serializable/FeatureSet;

.field private mDisplayTranslatedText:Z

.field private mFeedback:Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

.field private mIsUserElite:Z

.field private mLocale:Ljava/util/Locale;

.field private mUserFeedback:Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 403
    new-instance v0, Lcom/yelp/android/serializable/ea;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ea;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/YelpBusinessReview;->CREATOR:Lcom/yelp/android/serializable/ah;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;-><init>()V

    .line 36
    new-instance v0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    invoke-direct {v0, v1, v1, v1}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;-><init>(III)V

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mFeedback:Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    .line 37
    new-instance v0, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;

    invoke-direct {v0, v1, v1, v1}, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;-><init>(ZZZ)V

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mUserFeedback:Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;

    .line 38
    new-instance v0, Lcom/yelp/android/serializable/FeatureSet;

    invoke-direct {v0}, Lcom/yelp/android/serializable/FeatureSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mDisabledFeatureSet:Lcom/yelp/android/serializable/FeatureSet;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mLocale:Ljava/util/Locale;

    .line 40
    iput-boolean v1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mDisplayTranslatedText:Z

    .line 41
    iput-boolean v1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mIsUserElite:Z

    .line 42
    return-void
.end method

.method public static readLocaleFromParcel(Landroid/os/Parcel;)Ljava/util/Locale;
    .locals 4

    .prologue
    .line 217
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 218
    if-nez v1, :cond_0

    .line 219
    const/4 v0, 0x0

    .line 221
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Locale;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupAttachedMediaSorted()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/IdentifiableMedia;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mAttachedMedia:Ljava/util/List;

    .line 76
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mAttachedMedia:Ljava/util/List;

    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mPhotos:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 77
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mAttachedMedia:Ljava/util/List;

    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mVideos:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 78
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mAttachedMedia:Ljava/util/List;

    new-instance v1, Lcom/yelp/android/serializable/dz;

    invoke-direct {v1, p0}, Lcom/yelp/android/serializable/dz;-><init>(Lcom/yelp/android/serializable/YelpBusinessReview;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 83
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mAttachedMedia:Ljava/util/List;

    return-object v0
.end method

.method public static writeLocaleToParcel(Landroid/os/Parcel;Ljava/util/Locale;)V
    .locals 1

    .prologue
    .line 207
    if-nez p1, :cond_0

    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    :goto_0
    return-void

    .line 210
    :cond_0
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public arePhotosPopulated()Z
    .locals 2

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getPhotos()Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 436
    if-ne p0, p1, :cond_1

    .line 448
    :cond_0
    :goto_0
    return v0

    .line 438
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 439
    goto :goto_0

    .line 440
    :cond_2
    instance-of v2, p1, Lcom/yelp/android/serializable/YelpBusinessReview;

    if-nez v2, :cond_3

    move v0, v1

    .line 441
    goto :goto_0

    .line 442
    :cond_3
    check-cast p1, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 443
    iget-object v2, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mId:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 444
    iget-object v2, p1, Lcom/yelp/android/serializable/YelpBusinessReview;->mId:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 445
    goto :goto_0

    .line 446
    :cond_4
    iget-object v2, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mId:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/serializable/YelpBusinessReview;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 447
    goto :goto_0
.end method

.method public getAttachedMediaCount()I
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mPhotos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mVideos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getAttachedMediaSorted()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/IdentifiableMedia;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mAttachedMedia:Ljava/util/List;

    if-nez v0, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->setupAttachedMediaSorted()Ljava/util/List;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mAttachedMedia:Ljava/util/List;

    return-object v0
.end method

.method public getAttachedPhotoCount()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mPhotos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAttachedVideoCount()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mVideos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getBusinessId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->getBusinessId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBusinessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->getBusinessName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBusinessOwnerReply()Lcom/yelp/android/serializable/BusinessOwnerReply;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->getBusinessOwnerReply()Lcom/yelp/android/serializable/BusinessOwnerReply;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBusinessPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->getBusinessPhotoUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDateModified()Ljava/util/Date;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->getDateModified()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getFeedback()Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mFeedback:Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    return-object v0
.end method

.method public bridge synthetic getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public bridge synthetic getPhotos()Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->getPhotos()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPreviousReviews()Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->getPreviousReviews()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRating()I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->getRating()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTextAttributed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->getTextAttributed()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTextExcerpt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->getTextExcerpt()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTranslatedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->getTranslatedText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;
    .locals 1

    .prologue
    .line 453
    sget-object v0, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->REVIEW:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    return-object v0
.end method

.method public bridge synthetic getUpdatableAfter()J
    .locals 2

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->getUpdatableAfter()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getUserCheckInCount()I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->getUserCheckInCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getUserDisabledFeatures()Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->getUserDisabledFeatures()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUserEliteYears()[I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->getUserEliteYears()[I

    move-result-object v0

    return-object v0
.end method

.method public getUserFeedback()Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mUserFeedback:Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;

    return-object v0
.end method

.method public bridge synthetic getUserFriendCount()I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->getUserFriendCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserLocationRank()Lcom/yelp/android/serializable/RankTitle$Rank;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getUserRankTitleText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/RankTitle$Rank;->rankForString(Ljava/lang/String;)Lcom/yelp/android/serializable/RankTitle$Rank;

    move-result-object v0

    return-object v0
.end method

.method public getUserMediaCount()I
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getUserVideoCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getUserPhotoCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->getUserName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUserPhotoCount()I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->getUserPhotoCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getUserPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUserRankTitleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->getUserRankTitleText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUserReviewCount()I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->getUserReviewCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getUserVideoCount()I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->getUserVideoCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getVideos()Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->getVideos()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 427
    .line 429
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 431
    return v0

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isFeatureDisabled(Lcom/yelp/android/serializable/FeatureSet$Feature;)Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mDisabledFeatureSet:Lcom/yelp/android/serializable/FeatureSet;

    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/FeatureSet;->contains(Lcom/yelp/android/serializable/FeatureSet$Feature;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isFirstReview()Z
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->isFirstReview()Z

    move-result v0

    return v0
.end method

.method public isUpdatableByCurrentUser()Z
    .locals 4

    .prologue
    .line 145
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dc;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getUpdatableAfter()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Lcom/yelp/android/util/o;->f(D)D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserElite()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mIsUserElite:Z

    return v0
.end method

.method public bridge synthetic isUserFollowed()Z
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->isUserFollowed()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isUserFriend()Z
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->isUserFriend()Z

    move-result v0

    return v0
.end method

.method public populateDataFromUser(Lcom/yelp/android/serializable/User;)V
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getFriendCount()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mUserFriendCount:I

    .line 156
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getReviewCount()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mUserReviewCount:I

    .line 157
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->isEliteUser()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mIsUserElite:Z

    .line 158
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mUserId:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mUserName:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mUserPhotoUrl:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 169
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_YelpBusinessReview;->readFromJson(Lorg/json/JSONObject;)V

    .line 171
    const-string/jumbo v0, "feedback"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_0

    .line 174
    new-instance v1, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    const-string/jumbo v2, "useful"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const-string/jumbo v3, "funny"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const-string/jumbo v4, "cool"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;-><init>(III)V

    iput-object v1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mFeedback:Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    .line 180
    :cond_0
    const-string/jumbo v0, "user_feedback"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_1

    .line 183
    new-instance v1, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;

    const-string/jumbo v2, "useful"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v3, "funny"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string/jumbo v4, "cool"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;-><init>(ZZZ)V

    iput-object v1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mUserFeedback:Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;

    .line 188
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getUserEliteYears()[I

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/services/r;->a([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mIsUserElite:Z

    .line 189
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mDisabledFeatureSet:Lcom/yelp/android/serializable/FeatureSet;

    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mUserDisabledFeatures:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/FeatureSet;->setFeatures(Ljava/util/List;)V

    .line 190
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 226
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_YelpBusinessReview;->readFromParcel(Landroid/os/Parcel;)V

    .line 227
    sget-object v0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mFeedback:Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    .line 228
    sget-object v0, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mUserFeedback:Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;

    .line 229
    const-class v0, Lcom/yelp/android/serializable/FeatureSet;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeatureSet;

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mDisabledFeatureSet:Lcom/yelp/android/serializable/FeatureSet;

    .line 230
    invoke-static {p1}, Lcom/yelp/android/serializable/YelpBusinessReview;->readLocaleFromParcel(Landroid/os/Parcel;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mLocale:Ljava/util/Locale;

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 232
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mDisplayTranslatedText:Z

    .line 233
    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mIsUserElite:Z

    .line 234
    return-void
.end method

.method public setDateModified(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mDateModified:Ljava/util/Date;

    .line 105
    return-void
.end method

.method public setDisplayTranslatedText(Z)V
    .locals 0

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mDisplayTranslatedText:Z

    .line 133
    return-void
.end method

.method public setFeedback(Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mFeedback:Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    .line 121
    return-void
.end method

.method public setFirstToReview(Z)V
    .locals 0

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mIsFirstReview:Z

    .line 137
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mLocale:Ljava/util/Locale;

    .line 109
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mText:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setTranslatedText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mTranslatedText:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setUserFeedback(Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mUserFeedback:Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;

    .line 117
    return-void
.end method

.method public shouldDisplayTranslation()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mDisplayTranslatedText:Z

    return v0
.end method

.method public updatePhoto(Lcom/yelp/android/serializable/Photo;)V
    .locals 2

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->arePhotosPopulated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mPhotos:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/util/cr;->a(Ljava/util/List;Lcom/yelp/android/serializable/ay;)I

    move-result v0

    .line 466
    if-ltz v0, :cond_0

    .line 467
    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mPhotos:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 470
    :cond_0
    return-void
.end method

.method public writeJSON()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 194
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mUserFeedback:Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;

    if-eqz v1, :cond_0

    .line 196
    const-string/jumbo v1, "user_feedback"

    iget-object v2, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mUserFeedback:Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->writeJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mFeedback:Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    if-eqz v1, :cond_1

    .line 199
    const-string/jumbo v1, "feedback"

    iget-object v2, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mFeedback:Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->writeJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    :cond_1
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 238
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_YelpBusinessReview;->writeToParcel(Landroid/os/Parcel;I)V

    .line 239
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mFeedback:Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    invoke-virtual {v0, p1, v2}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->writeToParcel(Landroid/os/Parcel;I)V

    .line 240
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mUserFeedback:Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;

    invoke-virtual {v0, p1, v2}, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->writeToParcel(Landroid/os/Parcel;I)V

    .line 241
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mDisabledFeatureSet:Lcom/yelp/android/serializable/FeatureSet;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 242
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mLocale:Ljava/util/Locale;

    invoke-static {p1, v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->writeLocaleToParcel(Landroid/os/Parcel;Ljava/util/Locale;)V

    .line 243
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mDisplayTranslatedText:Z

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->mIsUserElite:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 247
    return-void
.end method
