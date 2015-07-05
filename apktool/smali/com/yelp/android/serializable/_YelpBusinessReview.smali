.class abstract Lcom/yelp/android/serializable/_YelpBusinessReview;
.super Ljava/lang/Object;
.source "_YelpBusinessReview.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mBusinessId:Ljava/lang/String;

.field protected mBusinessName:Ljava/lang/String;

.field protected mBusinessOwnerReply:Lcom/yelp/android/serializable/BusinessOwnerReply;

.field protected mBusinessPhotoUrl:Ljava/lang/String;

.field protected mDateModified:Ljava/util/Date;

.field protected mId:Ljava/lang/String;

.field protected mIsFirstReview:Z

.field protected mIsUserFollowed:Z

.field protected mIsUserFriend:Z

.field protected mLanguage:Ljava/lang/String;

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

.field protected mPreviousReviews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/PreviousReview;",
            ">;"
        }
    .end annotation
.end field

.field protected mRating:I

.field protected mText:Ljava/lang/String;

.field protected mTextAttributed:Ljava/lang/String;

.field protected mTextExcerpt:Ljava/lang/String;

.field protected mTranslatedText:Ljava/lang/String;

.field protected mUpdatableAfter:J

.field protected mUserCheckInCount:I

.field protected mUserDisabledFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mUserEliteYears:[I

.field protected mUserFriendCount:I

.field protected mUserId:Ljava/lang/String;

.field protected mUserName:Ljava/lang/String;

.field protected mUserPhotoCount:I

.field protected mUserPhotoUrl:Ljava/lang/String;

.field protected mUserRankTitleText:Ljava/lang/String;

.field protected mUserReviewCount:I

.field protected mUserVideoCount:I

.field protected mVideos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Video;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method protected constructor <init>(Lcom/yelp/android/serializable/BusinessOwnerReply;Ljava/util/Date;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZIIIIII[IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/BusinessOwnerReply;",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Photo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/PreviousReview;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Video;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZIIIIII[IJ)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mBusinessOwnerReply:Lcom/yelp/android/serializable/BusinessOwnerReply;

    .line 52
    iput-object p2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mDateModified:Ljava/util/Date;

    .line 53
    iput-object p3, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mPhotos:Ljava/util/List;

    .line 54
    iput-object p4, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mPreviousReviews:Ljava/util/List;

    .line 55
    iput-object p5, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserDisabledFeatures:Ljava/util/List;

    .line 56
    iput-object p6, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mVideos:Ljava/util/List;

    .line 57
    iput-object p7, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mId:Ljava/lang/String;

    .line 58
    iput-object p8, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserId:Ljava/lang/String;

    .line 59
    iput-object p9, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mBusinessId:Ljava/lang/String;

    .line 60
    iput-object p10, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mText:Ljava/lang/String;

    .line 61
    iput-object p11, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mTextExcerpt:Ljava/lang/String;

    .line 62
    iput-object p12, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserName:Ljava/lang/String;

    .line 63
    iput-object p13, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserPhotoUrl:Ljava/lang/String;

    .line 64
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mBusinessName:Ljava/lang/String;

    .line 65
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mBusinessPhotoUrl:Ljava/lang/String;

    .line 66
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserRankTitleText:Ljava/lang/String;

    .line 67
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mTextAttributed:Ljava/lang/String;

    .line 68
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mTranslatedText:Ljava/lang/String;

    .line 69
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mLanguage:Ljava/lang/String;

    .line 70
    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mIsUserFriend:Z

    .line 71
    move/from16 v0, p21

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mIsUserFollowed:Z

    .line 72
    move/from16 v0, p22

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mIsFirstReview:Z

    .line 73
    move/from16 v0, p23

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mRating:I

    .line 74
    move/from16 v0, p24

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserReviewCount:I

    .line 75
    move/from16 v0, p25

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserFriendCount:I

    .line 76
    move/from16 v0, p26

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserCheckInCount:I

    .line 77
    move/from16 v0, p27

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserPhotoCount:I

    .line 78
    move/from16 v0, p28

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserVideoCount:I

    .line 79
    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserEliteYears:[I

    .line 80
    move-wide/from16 v0, p30

    iput-wide v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUpdatableAfter:J

    .line 81
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public getBusinessId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mBusinessId:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mBusinessName:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinessOwnerReply()Lcom/yelp/android/serializable/BusinessOwnerReply;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mBusinessOwnerReply:Lcom/yelp/android/serializable/BusinessOwnerReply;

    return-object v0
.end method

.method public getBusinessPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mBusinessPhotoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDateModified()Ljava/util/Date;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mDateModified:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mLanguage:Ljava/lang/String;

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
    .line 94
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mPhotos:Ljava/util/List;

    return-object v0
.end method

.method public getPreviousReviews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/PreviousReview;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mPreviousReviews:Ljava/util/List;

    return-object v0
.end method

.method public getRating()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mRating:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextAttributed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mTextAttributed:Ljava/lang/String;

    return-object v0
.end method

.method public getTextExcerpt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mTextExcerpt:Ljava/lang/String;

    return-object v0
.end method

.method public getTranslatedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mTranslatedText:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatableAfter()J
    .locals 2

    .prologue
    .line 175
    iget-wide v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUpdatableAfter:J

    return-wide v0
.end method

.method public getUserCheckInCount()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserCheckInCount:I

    return v0
.end method

.method public getUserDisabledFeatures()Ljava/util/List;
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
    .line 100
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserDisabledFeatures:Ljava/util/List;

    return-object v0
.end method

.method public getUserEliteYears()[I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserEliteYears:[I

    return-object v0
.end method

.method public getUserFriendCount()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserFriendCount:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPhotoCount()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserPhotoCount:I

    return v0
.end method

.method public getUserPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserPhotoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserRankTitleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserRankTitleText:Ljava/lang/String;

    return-object v0
.end method

.method public getUserReviewCount()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserReviewCount:I

    return v0
.end method

.method public getUserVideoCount()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserVideoCount:I

    return v0
.end method

.method public getVideos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Video;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mVideos:Ljava/util/List;

    return-object v0
.end method

.method public isFirstReview()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mIsFirstReview:Z

    return v0
.end method

.method public isUserFollowed()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mIsUserFollowed:Z

    return v0
.end method

.method public isUserFriend()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mIsUserFriend:Z

    return v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 253
    const-string/jumbo v0, "business_owner_reply"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    sget-object v0, Lcom/yelp/android/serializable/BusinessOwnerReply;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "business_owner_reply"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BusinessOwnerReply;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mBusinessOwnerReply:Lcom/yelp/android/serializable/BusinessOwnerReply;

    .line 256
    :cond_0
    const-string/jumbo v0, "time_modified"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    const-string/jumbo v0, "time_modified"

    invoke-static {p1, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mDateModified:Ljava/util/Date;

    .line 259
    :cond_1
    const-string/jumbo v0, "photos"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 260
    const-string/jumbo v0, "photos"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Photo;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mPhotos:Ljava/util/List;

    .line 264
    :goto_0
    const-string/jumbo v0, "previous_reviews"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 265
    const-string/jumbo v0, "previous_reviews"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/PreviousReview;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mPreviousReviews:Ljava/util/List;

    .line 269
    :goto_1
    const-string/jumbo v0, "user_disabled_features"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 270
    const-string/jumbo v0, "user_disabled_features"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/parcelgen/JsonUtil;->getStringList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserDisabledFeatures:Ljava/util/List;

    .line 274
    :goto_2
    const-string/jumbo v0, "videos"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 275
    const-string/jumbo v0, "videos"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Video;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mVideos:Ljava/util/List;

    .line 279
    :goto_3
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 280
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mId:Ljava/lang/String;

    .line 282
    :cond_2
    const-string/jumbo v0, "user_encid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 283
    const-string/jumbo v0, "user_encid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserId:Ljava/lang/String;

    .line 285
    :cond_3
    const-string/jumbo v0, "business_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 286
    const-string/jumbo v0, "business_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mBusinessId:Ljava/lang/String;

    .line 288
    :cond_4
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 289
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mText:Ljava/lang/String;

    .line 291
    :cond_5
    const-string/jumbo v0, "text_excerpt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 292
    const-string/jumbo v0, "text_excerpt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mTextExcerpt:Ljava/lang/String;

    .line 294
    :cond_6
    const-string/jumbo v0, "user_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 295
    const-string/jumbo v0, "user_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserName:Ljava/lang/String;

    .line 297
    :cond_7
    const-string/jumbo v0, "user_photo_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 298
    const-string/jumbo v0, "user_photo_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserPhotoUrl:Ljava/lang/String;

    .line 300
    :cond_8
    const-string/jumbo v0, "business_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 301
    const-string/jumbo v0, "business_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mBusinessName:Ljava/lang/String;

    .line 303
    :cond_9
    const-string/jumbo v0, "business_photo_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 304
    const-string/jumbo v0, "business_photo_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mBusinessPhotoUrl:Ljava/lang/String;

    .line 306
    :cond_a
    const-string/jumbo v0, "user_location_rank_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 307
    const-string/jumbo v0, "user_location_rank_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserRankTitleText:Ljava/lang/String;

    .line 309
    :cond_b
    const-string/jumbo v0, "text_attributed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 310
    const-string/jumbo v0, "text_attributed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mTextAttributed:Ljava/lang/String;

    .line 312
    :cond_c
    const-string/jumbo v0, "translated_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 313
    const-string/jumbo v0, "translated_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mTranslatedText:Ljava/lang/String;

    .line 315
    :cond_d
    const-string/jumbo v0, "language"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 316
    const-string/jumbo v0, "language"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mLanguage:Ljava/lang/String;

    .line 318
    :cond_e
    const-string/jumbo v0, "user_is_friend"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mIsUserFriend:Z

    .line 319
    const-string/jumbo v0, "user_is_followed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mIsUserFollowed:Z

    .line 320
    const-string/jumbo v0, "is_first_review"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mIsFirstReview:Z

    .line 321
    const-string/jumbo v0, "rating"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mRating:I

    .line 322
    const-string/jumbo v0, "user_review_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserReviewCount:I

    .line 323
    const-string/jumbo v0, "user_friend_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserFriendCount:I

    .line 324
    const-string/jumbo v0, "user_check_in_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserCheckInCount:I

    .line 325
    const-string/jumbo v0, "user_photo_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserPhotoCount:I

    .line 326
    const-string/jumbo v0, "user_video_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserVideoCount:I

    .line 327
    const-string/jumbo v0, "user_elite_years"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 328
    const-string/jumbo v0, "user_elite_years"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 329
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 330
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserEliteYears:[I

    .line 331
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_13

    .line 332
    iget-object v3, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserEliteYears:[I

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    aput v4, v3, v0

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 262
    :cond_f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mPhotos:Ljava/util/List;

    goto/16 :goto_0

    .line 267
    :cond_10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mPreviousReviews:Ljava/util/List;

    goto/16 :goto_1

    .line 272
    :cond_11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserDisabledFeatures:Ljava/util/List;

    goto/16 :goto_2

    .line 277
    :cond_12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mVideos:Ljava/util/List;

    goto/16 :goto_3

    .line 335
    :cond_13
    const-string/jumbo v0, "updatable_after"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUpdatableAfter:J

    .line 336
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 215
    const-class v0, Lcom/yelp/android/serializable/BusinessOwnerReply;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BusinessOwnerReply;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mBusinessOwnerReply:Lcom/yelp/android/serializable/BusinessOwnerReply;

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 217
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 218
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mDateModified:Ljava/util/Date;

    .line 220
    :cond_0
    sget-object v0, Lcom/yelp/android/serializable/Photo;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mPhotos:Ljava/util/List;

    .line 221
    sget-object v0, Lcom/yelp/android/serializable/PreviousReview;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mPreviousReviews:Ljava/util/List;

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserDisabledFeatures:Ljava/util/List;

    .line 223
    sget-object v0, Lcom/yelp/android/serializable/Video;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mVideos:Ljava/util/List;

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mId:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserId:Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mBusinessId:Ljava/lang/String;

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mText:Ljava/lang/String;

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mTextExcerpt:Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserName:Ljava/lang/String;

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserPhotoUrl:Ljava/lang/String;

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mBusinessName:Ljava/lang/String;

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mBusinessPhotoUrl:Ljava/lang/String;

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserRankTitleText:Ljava/lang/String;

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mTextAttributed:Ljava/lang/String;

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mTranslatedText:Ljava/lang/String;

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mLanguage:Ljava/lang/String;

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 238
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mIsUserFriend:Z

    .line 239
    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mIsUserFollowed:Z

    .line 240
    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mIsFirstReview:Z

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mRating:I

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserReviewCount:I

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserFriendCount:I

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserCheckInCount:I

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserPhotoCount:I

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserVideoCount:I

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserEliteYears:[I

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUpdatableAfter:J

    .line 250
    return-void
.end method

.method public writeJSON()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 339
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 340
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mBusinessOwnerReply:Lcom/yelp/android/serializable/BusinessOwnerReply;

    if-eqz v0, :cond_0

    .line 341
    const-string/jumbo v0, "business_owner_reply"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mBusinessOwnerReply:Lcom/yelp/android/serializable/BusinessOwnerReply;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/BusinessOwnerReply;->writeJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mDateModified:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 344
    const-string/jumbo v0, "time_modified"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mDateModified:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mPhotos:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 347
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 348
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mPhotos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    .line 349
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 351
    :cond_2
    const-string/jumbo v0, "photos"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 353
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mPreviousReviews:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 354
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 355
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mPreviousReviews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PreviousReview;

    .line 356
    invoke-virtual {v0}, Lcom/yelp/android/serializable/PreviousReview;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 358
    :cond_4
    const-string/jumbo v0, "previous_reviews"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 360
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserDisabledFeatures:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 361
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 362
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserDisabledFeatures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 363
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 365
    :cond_6
    const-string/jumbo v0, "user_disabled_features"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 367
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mVideos:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 368
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 369
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mVideos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Video;

    .line 370
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Video;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 372
    :cond_8
    const-string/jumbo v0, "videos"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 374
    :cond_9
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mId:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 375
    const-string/jumbo v0, "id"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 377
    :cond_a
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserId:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 378
    const-string/jumbo v0, "user_encid"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 380
    :cond_b
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mBusinessId:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 381
    const-string/jumbo v0, "business_id"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mBusinessId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 383
    :cond_c
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mText:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 384
    const-string/jumbo v0, "text"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mText:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 386
    :cond_d
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mTextExcerpt:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 387
    const-string/jumbo v0, "text_excerpt"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mTextExcerpt:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 389
    :cond_e
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserName:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 390
    const-string/jumbo v0, "user_name"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 392
    :cond_f
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserPhotoUrl:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 393
    const-string/jumbo v0, "user_photo_url"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserPhotoUrl:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 395
    :cond_10
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mBusinessName:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 396
    const-string/jumbo v0, "business_name"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mBusinessName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 398
    :cond_11
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mBusinessPhotoUrl:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 399
    const-string/jumbo v0, "business_photo_url"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mBusinessPhotoUrl:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 401
    :cond_12
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserRankTitleText:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 402
    const-string/jumbo v0, "user_location_rank_title"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserRankTitleText:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 404
    :cond_13
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mTextAttributed:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 405
    const-string/jumbo v0, "text_attributed"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mTextAttributed:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 407
    :cond_14
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mTranslatedText:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 408
    const-string/jumbo v0, "translated_text"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mTranslatedText:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 410
    :cond_15
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mLanguage:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 411
    const-string/jumbo v0, "language"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mLanguage:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 413
    :cond_16
    const-string/jumbo v0, "user_is_friend"

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mIsUserFriend:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 414
    const-string/jumbo v0, "user_is_followed"

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mIsUserFollowed:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 415
    const-string/jumbo v0, "is_first_review"

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mIsFirstReview:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 416
    const-string/jumbo v0, "rating"

    iget v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mRating:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 417
    const-string/jumbo v0, "user_review_count"

    iget v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserReviewCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 418
    const-string/jumbo v0, "user_friend_count"

    iget v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserFriendCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 419
    const-string/jumbo v0, "user_check_in_count"

    iget v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserCheckInCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 420
    const-string/jumbo v0, "user_photo_count"

    iget v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserPhotoCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 421
    const-string/jumbo v0, "user_video_count"

    iget v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserVideoCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 422
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserEliteYears:[I

    if-eqz v0, :cond_18

    .line 423
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 424
    iget-object v3, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserEliteYears:[I

    array-length v4, v3

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v4, :cond_17

    aget v5, v3, v0

    .line 425
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 424
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 427
    :cond_17
    const-string/jumbo v0, "user_elite_years"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 429
    :cond_18
    const-string/jumbo v0, "updatable_after"

    iget-wide v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUpdatableAfter:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 430
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 184
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mBusinessOwnerReply:Lcom/yelp/android/serializable/BusinessOwnerReply;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 185
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mDateModified:Ljava/util/Date;

    if-nez v0, :cond_0

    const-wide/32 v0, -0x80000000

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 186
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mPhotos:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 187
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mPreviousReviews:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 188
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserDisabledFeatures:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 189
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mVideos:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 190
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mBusinessId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mTextExcerpt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserPhotoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mBusinessName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mBusinessPhotoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserRankTitleText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mTextAttributed:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mTranslatedText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mLanguage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mIsUserFriend:Z

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mIsUserFollowed:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mIsFirstReview:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 204
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mRating:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserReviewCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserFriendCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserCheckInCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserPhotoCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserVideoCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUserEliteYears:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 211
    iget-wide v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mUpdatableAfter:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 212
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->mDateModified:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto/16 :goto_0
.end method
