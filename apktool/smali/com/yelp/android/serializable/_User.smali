.class abstract Lcom/yelp/android/serializable/_User;
.super Ljava/lang/Object;
.source "_User.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mBadgeCount:I

.field protected mBookmarkCount:I

.field protected mCheckIn:Lcom/yelp/android/serializable/YelpCheckIn;

.field protected mCheckInCount:I

.field protected mCheckInOfferCount:I

.field protected mComplimentCount:I

.field protected mDealCount:I

.field protected mDisabledFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mDraftCount:I

.field protected mEliteYears:[I

.field protected mFirstName:Ljava/lang/String;

.field protected mFirstToReviewCount:I

.field protected mFirstToTipCount:I

.field protected mFormat:I

.field protected mFriendCount:I

.field protected mGenderString:Ljava/lang/String;

.field protected mHeadline:Ljava/lang/String;

.field protected mId:Ljava/lang/String;

.field protected mIsFriend:Z

.field protected mIsFriendRequestPending:Z

.field protected mIsSendingNotifications:Z

.field protected mLastInitial:Ljava/lang/String;

.field protected mLastName:Ljava/lang/String;

.field protected mLocalPhotoCount:I

.field protected mLocation:Ljava/lang/String;

.field protected mLoves:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mMemberSince:Ljava/util/Date;

.field protected mNickname:Ljava/lang/String;

.field protected mPhotos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Photo;",
            ">;"
        }
    .end annotation
.end field

.field protected mReviewCount:I

.field protected mSubscribedEventsCount:I

.field protected mTipCount:I

.field protected mTipOfTheDayCount:I

.field protected mUnreadMessageCount:I

.field protected mUserPhotoCount:I

.field protected mVideoCount:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method protected constructor <init>(Ljava/util/Date;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/YelpCheckIn;ZZZIIIIIIIIIIIIIIIIIII[I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Photo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/YelpCheckIn;",
            "ZZZIIIIIIIIIIIIIIIIIII[I)V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/yelp/android/serializable/_User;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/yelp/android/serializable/_User;->mMemberSince:Ljava/util/Date;

    .line 58
    iput-object p2, p0, Lcom/yelp/android/serializable/_User;->mPhotos:Ljava/util/List;

    .line 59
    iput-object p3, p0, Lcom/yelp/android/serializable/_User;->mDisabledFeatures:Ljava/util/List;

    .line 60
    iput-object p4, p0, Lcom/yelp/android/serializable/_User;->mLoves:Ljava/util/List;

    .line 61
    iput-object p5, p0, Lcom/yelp/android/serializable/_User;->mId:Ljava/lang/String;

    .line 62
    iput-object p6, p0, Lcom/yelp/android/serializable/_User;->mFirstName:Ljava/lang/String;

    .line 63
    iput-object p7, p0, Lcom/yelp/android/serializable/_User;->mNickname:Ljava/lang/String;

    .line 64
    iput-object p8, p0, Lcom/yelp/android/serializable/_User;->mLastInitial:Ljava/lang/String;

    .line 65
    iput-object p9, p0, Lcom/yelp/android/serializable/_User;->mLastName:Ljava/lang/String;

    .line 66
    iput-object p10, p0, Lcom/yelp/android/serializable/_User;->mLocation:Ljava/lang/String;

    .line 67
    iput-object p11, p0, Lcom/yelp/android/serializable/_User;->mHeadline:Ljava/lang/String;

    .line 68
    iput-object p12, p0, Lcom/yelp/android/serializable/_User;->mGenderString:Ljava/lang/String;

    .line 69
    iput-object p13, p0, Lcom/yelp/android/serializable/_User;->mCheckIn:Lcom/yelp/android/serializable/YelpCheckIn;

    .line 70
    iput-boolean p14, p0, Lcom/yelp/android/serializable/_User;->mIsFriend:Z

    .line 71
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_User;->mIsFriendRequestPending:Z

    .line 72
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_User;->mIsSendingNotifications:Z

    .line 73
    move/from16 v0, p17

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mFormat:I

    .line 74
    move/from16 v0, p18

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mFriendCount:I

    .line 75
    move/from16 v0, p19

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mCheckInOfferCount:I

    .line 76
    move/from16 v0, p20

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mReviewCount:I

    .line 77
    move/from16 v0, p21

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mBookmarkCount:I

    .line 78
    move/from16 v0, p22

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mCheckInCount:I

    .line 79
    move/from16 v0, p23

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mTipCount:I

    .line 80
    move/from16 v0, p24

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mBadgeCount:I

    .line 81
    move/from16 v0, p25

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mLocalPhotoCount:I

    .line 82
    move/from16 v0, p26

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mComplimentCount:I

    .line 83
    move/from16 v0, p27

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mDraftCount:I

    .line 84
    move/from16 v0, p28

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mUserPhotoCount:I

    .line 85
    move/from16 v0, p29

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mDealCount:I

    .line 86
    move/from16 v0, p30

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mFirstToReviewCount:I

    .line 87
    move/from16 v0, p31

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mFirstToTipCount:I

    .line 88
    move/from16 v0, p32

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mTipOfTheDayCount:I

    .line 89
    move/from16 v0, p33

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mUnreadMessageCount:I

    .line 90
    move/from16 v0, p34

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mVideoCount:I

    .line 91
    move/from16 v0, p35

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mSubscribedEventsCount:I

    .line 92
    move-object/from16 v0, p36

    iput-object v0, p0, Lcom/yelp/android/serializable/_User;->mEliteYears:[I

    .line 93
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public getBadgeCount()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/yelp/android/serializable/_User;->mBadgeCount:I

    return v0
.end method

.method public getBookmarkCount()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/yelp/android/serializable/_User;->mBookmarkCount:I

    return v0
.end method

.method public getCheckIn()Lcom/yelp/android/serializable/YelpCheckIn;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mCheckIn:Lcom/yelp/android/serializable/YelpCheckIn;

    return-object v0
.end method

.method public getCheckInCount()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/yelp/android/serializable/_User;->mCheckInCount:I

    return v0
.end method

.method public getCheckInOfferCount()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/yelp/android/serializable/_User;->mCheckInOfferCount:I

    return v0
.end method

.method public getComplimentCount()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/yelp/android/serializable/_User;->mComplimentCount:I

    return v0
.end method

.method public getDealCount()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/yelp/android/serializable/_User;->mDealCount:I

    return v0
.end method

.method public getDisabledFeatures()Ljava/util/List;
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
    .line 106
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mDisabledFeatures:Ljava/util/List;

    return-object v0
.end method

.method public getDraftCount()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/yelp/android/serializable/_User;->mDraftCount:I

    return v0
.end method

.method public getEliteYears()[I
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mEliteYears:[I

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mFirstName:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstToReviewCount()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/yelp/android/serializable/_User;->mFirstToReviewCount:I

    return v0
.end method

.method public getFirstToTipCount()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/yelp/android/serializable/_User;->mFirstToTipCount:I

    return v0
.end method

.method public getFormat()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/yelp/android/serializable/_User;->mFormat:I

    return v0
.end method

.method public getFriendCount()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/yelp/android/serializable/_User;->mFriendCount:I

    return v0
.end method

.method public getGenderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mGenderString:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadline()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mHeadline:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getLastInitial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mLastInitial:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mLastName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPhotoCount()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/yelp/android/serializable/_User;->mLocalPhotoCount:I

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getLoves()Ljava/util/List;
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
    .line 109
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mLoves:Ljava/util/List;

    return-object v0
.end method

.method public getMemberSince()Ljava/util/Date;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mMemberSince:Ljava/util/Date;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mNickname:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Photo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mPhotos:Ljava/util/List;

    return-object v0
.end method

.method public getReviewCount()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/yelp/android/serializable/_User;->mReviewCount:I

    return v0
.end method

.method public getSubscribedEventsCount()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/yelp/android/serializable/_User;->mSubscribedEventsCount:I

    return v0
.end method

.method public getTipCount()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/yelp/android/serializable/_User;->mTipCount:I

    return v0
.end method

.method public getTipOfTheDayCount()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/yelp/android/serializable/_User;->mTipOfTheDayCount:I

    return v0
.end method

.method public getUnreadMessageCount()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/yelp/android/serializable/_User;->mUnreadMessageCount:I

    return v0
.end method

.method public getUserPhotoCount()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/yelp/android/serializable/_User;->mUserPhotoCount:I

    return v0
.end method

.method public getVideoCount()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/yelp/android/serializable/_User;->mVideoCount:I

    return v0
.end method

.method public isFriend()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_User;->mIsFriend:Z

    return v0
.end method

.method public isFriendRequestPending()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_User;->mIsFriendRequestPending:Z

    return v0
.end method

.method public isSendingNotifications()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_User;->mIsSendingNotifications:Z

    return v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 295
    const-string/jumbo v0, "member_since"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    const-string/jumbo v0, "member_since"

    invoke-static {p1, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_User;->mMemberSince:Ljava/util/Date;

    .line 298
    :cond_0
    const-string/jumbo v0, "photos"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 299
    const-string/jumbo v0, "photos"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v2, Lcom/yelp/android/serializable/Photo;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v2}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_User;->mPhotos:Ljava/util/List;

    .line 303
    :goto_0
    const-string/jumbo v0, "disabled_features"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 304
    const-string/jumbo v0, "disabled_features"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/parcelgen/JsonUtil;->getStringList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_User;->mDisabledFeatures:Ljava/util/List;

    .line 308
    :goto_1
    const-string/jumbo v0, "loves"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 309
    const-string/jumbo v0, "loves"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/parcelgen/JsonUtil;->getStringList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_User;->mLoves:Ljava/util/List;

    .line 313
    :goto_2
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 314
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_User;->mId:Ljava/lang/String;

    .line 316
    :cond_1
    const-string/jumbo v0, "first_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 317
    const-string/jumbo v0, "first_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_User;->mFirstName:Ljava/lang/String;

    .line 319
    :cond_2
    const-string/jumbo v0, "nickname"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 320
    const-string/jumbo v0, "nickname"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_User;->mNickname:Ljava/lang/String;

    .line 322
    :cond_3
    const-string/jumbo v0, "last_initial"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 323
    const-string/jumbo v0, "last_initial"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_User;->mLastInitial:Ljava/lang/String;

    .line 325
    :cond_4
    const-string/jumbo v0, "last_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 326
    const-string/jumbo v0, "last_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_User;->mLastName:Ljava/lang/String;

    .line 328
    :cond_5
    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 329
    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_User;->mLocation:Ljava/lang/String;

    .line 331
    :cond_6
    const-string/jumbo v0, "tagline"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 332
    const-string/jumbo v0, "tagline"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_User;->mHeadline:Ljava/lang/String;

    .line 334
    :cond_7
    const-string/jumbo v0, "gender"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 335
    const-string/jumbo v0, "gender"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_User;->mGenderString:Ljava/lang/String;

    .line 337
    :cond_8
    const-string/jumbo v0, "check_in"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 338
    sget-object v0, Lcom/yelp/android/serializable/YelpCheckIn;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v2, "check_in"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    iput-object v0, p0, Lcom/yelp/android/serializable/_User;->mCheckIn:Lcom/yelp/android/serializable/YelpCheckIn;

    .line 340
    :cond_9
    const-string/jumbo v0, "is_friend"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_User;->mIsFriend:Z

    .line 341
    const-string/jumbo v0, "is_friend_request_pending"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_User;->mIsFriendRequestPending:Z

    .line 342
    const-string/jumbo v0, "alerts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_User;->mIsSendingNotifications:Z

    .line 343
    const-string/jumbo v0, "fmode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 344
    const-string/jumbo v0, "fmode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mFormat:I

    .line 348
    :goto_3
    const-string/jumbo v0, "friend_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 349
    const-string/jumbo v0, "friend_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mFriendCount:I

    .line 351
    :cond_a
    const-string/jumbo v0, "check_in_offer_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 352
    const-string/jumbo v0, "check_in_offer_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mCheckInOfferCount:I

    .line 354
    :cond_b
    const-string/jumbo v0, "review_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 355
    const-string/jumbo v0, "review_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mReviewCount:I

    .line 357
    :cond_c
    const-string/jumbo v0, "bookmark_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 358
    const-string/jumbo v0, "bookmark_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mBookmarkCount:I

    .line 360
    :cond_d
    const-string/jumbo v0, "check_in_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 361
    const-string/jumbo v0, "check_in_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mCheckInCount:I

    .line 363
    :cond_e
    const-string/jumbo v0, "quicktip_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 364
    const-string/jumbo v0, "quicktip_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mTipCount:I

    .line 366
    :cond_f
    const-string/jumbo v0, "badge_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 367
    const-string/jumbo v0, "badge_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mBadgeCount:I

    .line 369
    :cond_10
    const-string/jumbo v0, "business_photo_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 370
    const-string/jumbo v0, "business_photo_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mLocalPhotoCount:I

    .line 372
    :cond_11
    const-string/jumbo v0, "thanx_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 373
    const-string/jumbo v0, "thanx_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mComplimentCount:I

    .line 375
    :cond_12
    const-string/jumbo v0, "review_draft_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 376
    const-string/jumbo v0, "review_draft_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mDraftCount:I

    .line 378
    :cond_13
    const-string/jumbo v0, "user_photo_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 379
    const-string/jumbo v0, "user_photo_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mUserPhotoCount:I

    .line 381
    :cond_14
    const-string/jumbo v0, "deal_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 382
    const-string/jumbo v0, "deal_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mDealCount:I

    .line 384
    :cond_15
    const-string/jumbo v0, "first_to_review_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 385
    const-string/jumbo v0, "first_to_review_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mFirstToReviewCount:I

    .line 387
    :cond_16
    const-string/jumbo v0, "first_to_tip_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 388
    const-string/jumbo v0, "first_to_tip_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mFirstToTipCount:I

    .line 390
    :cond_17
    const-string/jumbo v0, "tip_of_the_day_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 391
    const-string/jumbo v0, "tip_of_the_day_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mTipOfTheDayCount:I

    .line 393
    :cond_18
    const-string/jumbo v0, "unread_message_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 394
    const-string/jumbo v0, "unread_message_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mUnreadMessageCount:I

    .line 398
    :goto_4
    const-string/jumbo v0, "video_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 399
    const-string/jumbo v0, "video_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mVideoCount:I

    .line 401
    :cond_19
    const-string/jumbo v0, "subscribed_events_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 402
    const-string/jumbo v0, "subscribed_events_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mSubscribedEventsCount:I

    .line 404
    :cond_1a
    const-string/jumbo v0, "elite_years"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 405
    const-string/jumbo v0, "elite_years"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 406
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 407
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/yelp/android/serializable/_User;->mEliteYears:[I

    move v0, v1

    .line 408
    :goto_5
    if-ge v0, v3, :cond_20

    .line 409
    iget-object v1, p0, Lcom/yelp/android/serializable/_User;->mEliteYears:[I

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    aput v4, v1, v0

    .line 408
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 301
    :cond_1b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_User;->mPhotos:Ljava/util/List;

    goto/16 :goto_0

    .line 306
    :cond_1c
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_User;->mDisabledFeatures:Ljava/util/List;

    goto/16 :goto_1

    .line 311
    :cond_1d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_User;->mLoves:Ljava/util/List;

    goto/16 :goto_2

    .line 346
    :cond_1e
    const/4 v0, -0x1

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mFormat:I

    goto/16 :goto_3

    .line 396
    :cond_1f
    iput v1, p0, Lcom/yelp/android/serializable/_User;->mUnreadMessageCount:I

    goto :goto_4

    .line 412
    :cond_20
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 252
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 253
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/yelp/android/serializable/_User;->mMemberSince:Ljava/util/Date;

    .line 255
    :cond_0
    sget-object v0, Lcom/yelp/android/serializable/Photo;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_User;->mPhotos:Ljava/util/List;

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_User;->mDisabledFeatures:Ljava/util/List;

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_User;->mLoves:Ljava/util/List;

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_User;->mId:Ljava/lang/String;

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_User;->mFirstName:Ljava/lang/String;

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_User;->mNickname:Ljava/lang/String;

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_User;->mLastInitial:Ljava/lang/String;

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_User;->mLastName:Ljava/lang/String;

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_User;->mLocation:Ljava/lang/String;

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_User;->mHeadline:Ljava/lang/String;

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_User;->mGenderString:Ljava/lang/String;

    .line 266
    const-class v0, Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    iput-object v0, p0, Lcom/yelp/android/serializable/_User;->mCheckIn:Lcom/yelp/android/serializable/YelpCheckIn;

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 268
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/yelp/android/serializable/_User;->mIsFriend:Z

    .line 269
    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/yelp/android/serializable/_User;->mIsFriendRequestPending:Z

    .line 270
    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_User;->mIsSendingNotifications:Z

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mFormat:I

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mFriendCount:I

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mCheckInOfferCount:I

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mReviewCount:I

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mBookmarkCount:I

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mCheckInCount:I

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mTipCount:I

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mBadgeCount:I

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mLocalPhotoCount:I

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mComplimentCount:I

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mDraftCount:I

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mUserPhotoCount:I

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mDealCount:I

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mFirstToReviewCount:I

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mFirstToTipCount:I

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mTipOfTheDayCount:I

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mUnreadMessageCount:I

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mVideoCount:I

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_User;->mSubscribedEventsCount:I

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_User;->mEliteYears:[I

    .line 292
    return-void
.end method

.method public writeJSON()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 415
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 416
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mMemberSince:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 417
    const-string/jumbo v0, "member_since"

    iget-object v2, p0, Lcom/yelp/android/serializable/_User;->mMemberSince:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mPhotos:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 420
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 421
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mPhotos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    .line 422
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 424
    :cond_1
    const-string/jumbo v0, "photos"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 426
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mDisabledFeatures:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 427
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 428
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mDisabledFeatures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 429
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 431
    :cond_3
    const-string/jumbo v0, "disabled_features"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 433
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mLoves:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 434
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 435
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mLoves:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 436
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 438
    :cond_5
    const-string/jumbo v0, "loves"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 440
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mId:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 441
    const-string/jumbo v0, "id"

    iget-object v2, p0, Lcom/yelp/android/serializable/_User;->mId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 443
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mFirstName:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 444
    const-string/jumbo v0, "first_name"

    iget-object v2, p0, Lcom/yelp/android/serializable/_User;->mFirstName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 446
    :cond_8
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mNickname:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 447
    const-string/jumbo v0, "nickname"

    iget-object v2, p0, Lcom/yelp/android/serializable/_User;->mNickname:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 449
    :cond_9
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mLastInitial:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 450
    const-string/jumbo v0, "last_initial"

    iget-object v2, p0, Lcom/yelp/android/serializable/_User;->mLastInitial:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 452
    :cond_a
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mLastName:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 453
    const-string/jumbo v0, "last_name"

    iget-object v2, p0, Lcom/yelp/android/serializable/_User;->mLastName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 455
    :cond_b
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mLocation:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 456
    const-string/jumbo v0, "location"

    iget-object v2, p0, Lcom/yelp/android/serializable/_User;->mLocation:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 458
    :cond_c
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mHeadline:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 459
    const-string/jumbo v0, "tagline"

    iget-object v2, p0, Lcom/yelp/android/serializable/_User;->mHeadline:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 461
    :cond_d
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mGenderString:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 462
    const-string/jumbo v0, "gender"

    iget-object v2, p0, Lcom/yelp/android/serializable/_User;->mGenderString:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 464
    :cond_e
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mCheckIn:Lcom/yelp/android/serializable/YelpCheckIn;

    if-eqz v0, :cond_f

    .line 465
    const-string/jumbo v0, "check_in"

    iget-object v2, p0, Lcom/yelp/android/serializable/_User;->mCheckIn:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpCheckIn;->writeJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 467
    :cond_f
    const-string/jumbo v0, "is_friend"

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_User;->mIsFriend:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 468
    const-string/jumbo v0, "is_friend_request_pending"

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_User;->mIsFriendRequestPending:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 469
    const-string/jumbo v0, "alerts"

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_User;->mIsSendingNotifications:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 470
    const-string/jumbo v0, "fmode"

    iget v2, p0, Lcom/yelp/android/serializable/_User;->mFormat:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 471
    const-string/jumbo v0, "friend_count"

    iget v2, p0, Lcom/yelp/android/serializable/_User;->mFriendCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 472
    const-string/jumbo v0, "check_in_offer_count"

    iget v2, p0, Lcom/yelp/android/serializable/_User;->mCheckInOfferCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 473
    const-string/jumbo v0, "review_count"

    iget v2, p0, Lcom/yelp/android/serializable/_User;->mReviewCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 474
    const-string/jumbo v0, "bookmark_count"

    iget v2, p0, Lcom/yelp/android/serializable/_User;->mBookmarkCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 475
    const-string/jumbo v0, "check_in_count"

    iget v2, p0, Lcom/yelp/android/serializable/_User;->mCheckInCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 476
    const-string/jumbo v0, "quicktip_count"

    iget v2, p0, Lcom/yelp/android/serializable/_User;->mTipCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 477
    const-string/jumbo v0, "badge_count"

    iget v2, p0, Lcom/yelp/android/serializable/_User;->mBadgeCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 478
    const-string/jumbo v0, "business_photo_count"

    iget v2, p0, Lcom/yelp/android/serializable/_User;->mLocalPhotoCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 479
    const-string/jumbo v0, "thanx_count"

    iget v2, p0, Lcom/yelp/android/serializable/_User;->mComplimentCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 480
    const-string/jumbo v0, "review_draft_count"

    iget v2, p0, Lcom/yelp/android/serializable/_User;->mDraftCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 481
    const-string/jumbo v0, "user_photo_count"

    iget v2, p0, Lcom/yelp/android/serializable/_User;->mUserPhotoCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 482
    const-string/jumbo v0, "deal_count"

    iget v2, p0, Lcom/yelp/android/serializable/_User;->mDealCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 483
    const-string/jumbo v0, "first_to_review_count"

    iget v2, p0, Lcom/yelp/android/serializable/_User;->mFirstToReviewCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 484
    const-string/jumbo v0, "first_to_tip_count"

    iget v2, p0, Lcom/yelp/android/serializable/_User;->mFirstToTipCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 485
    const-string/jumbo v0, "tip_of_the_day_count"

    iget v2, p0, Lcom/yelp/android/serializable/_User;->mTipOfTheDayCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 486
    const-string/jumbo v0, "unread_message_count"

    iget v2, p0, Lcom/yelp/android/serializable/_User;->mUnreadMessageCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 487
    const-string/jumbo v0, "video_count"

    iget v2, p0, Lcom/yelp/android/serializable/_User;->mVideoCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 488
    const-string/jumbo v0, "subscribed_events_count"

    iget v2, p0, Lcom/yelp/android/serializable/_User;->mSubscribedEventsCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 489
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mEliteYears:[I

    if-eqz v0, :cond_11

    .line 490
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 491
    iget-object v3, p0, Lcom/yelp/android/serializable/_User;->mEliteYears:[I

    array-length v4, v3

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v4, :cond_10

    aget v5, v3, v0

    .line 492
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 491
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 494
    :cond_10
    const-string/jumbo v0, "elite_years"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 496
    :cond_11
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 214
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mMemberSince:Ljava/util/Date;

    if-nez v0, :cond_0

    const-wide/32 v0, -0x80000000

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 215
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mPhotos:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 216
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mDisabledFeatures:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 217
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mLoves:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 218
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mFirstName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mNickname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mLastInitial:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mLastName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mHeadline:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mGenderString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mCheckIn:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 227
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_User;->mIsFriend:Z

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_User;->mIsFriendRequestPending:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_User;->mIsSendingNotifications:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 228
    iget v0, p0, Lcom/yelp/android/serializable/_User;->mFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    iget v0, p0, Lcom/yelp/android/serializable/_User;->mFriendCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget v0, p0, Lcom/yelp/android/serializable/_User;->mCheckInOfferCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget v0, p0, Lcom/yelp/android/serializable/_User;->mReviewCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    iget v0, p0, Lcom/yelp/android/serializable/_User;->mBookmarkCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    iget v0, p0, Lcom/yelp/android/serializable/_User;->mCheckInCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget v0, p0, Lcom/yelp/android/serializable/_User;->mTipCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget v0, p0, Lcom/yelp/android/serializable/_User;->mBadgeCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget v0, p0, Lcom/yelp/android/serializable/_User;->mLocalPhotoCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget v0, p0, Lcom/yelp/android/serializable/_User;->mComplimentCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    iget v0, p0, Lcom/yelp/android/serializable/_User;->mDraftCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget v0, p0, Lcom/yelp/android/serializable/_User;->mUserPhotoCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget v0, p0, Lcom/yelp/android/serializable/_User;->mDealCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget v0, p0, Lcom/yelp/android/serializable/_User;->mFirstToReviewCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget v0, p0, Lcom/yelp/android/serializable/_User;->mFirstToTipCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget v0, p0, Lcom/yelp/android/serializable/_User;->mTipOfTheDayCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    iget v0, p0, Lcom/yelp/android/serializable/_User;->mUnreadMessageCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget v0, p0, Lcom/yelp/android/serializable/_User;->mVideoCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    iget v0, p0, Lcom/yelp/android/serializable/_User;->mSubscribedEventsCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mEliteYears:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 248
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/_User;->mMemberSince:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto/16 :goto_0
.end method
