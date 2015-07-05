.class abstract Lcom/yelp/android/serializable/_YelpCheckIn;
.super Ljava/lang/Object;
.source "_YelpCheckIn.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

.field protected mBusinessId:Ljava/lang/String;

.field protected mBusinessName:Ljava/lang/String;

.field protected mCommentsCount:I

.field protected mContributionTypeString:Ljava/lang/String;

.field protected mDateCreated:Ljava/util/Date;

.field protected mFriendActiveCount:I

.field protected mFriendRank:I

.field protected mId:Ljava/lang/String;

.field protected mInterval:I

.field protected mIsCommentable:Z

.field protected mLocation:Ljava/lang/String;

.field protected mLocationRank:I

.field protected mNewBadges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Badge;",
            ">;"
        }
    .end annotation
.end field

.field protected mPositiveFeedback:I

.field protected mPrimaryComment:Lcom/yelp/android/serializable/Comment;

.field protected mPrivateFeedback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mRegularRank:I

.field protected mSurveyQuestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/SurveyQuestion;",
            ">;"
        }
    .end annotation
.end field

.field protected mTip:Ljava/lang/String;

.field protected mTotalCount:I

.field protected mTotalSurveyQuestions:I

.field protected mUser:Lcom/yelp/android/serializable/User;

.field protected mUserCount:I

.field protected mUserId:Ljava/lang/String;

.field protected mWeekCount:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method protected constructor <init>(Ljava/util/ArrayList;Lcom/yelp/android/serializable/Comment;Ljava/util/Date;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/User;Lcom/yelp/android/serializable/YelpBusiness;ZIIIIIIIIIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/SurveyQuestion;",
            ">;",
            "Lcom/yelp/android/serializable/Comment;",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Badge;",
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
            "Lcom/yelp/android/serializable/User;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            "ZIIIIIIIIIII)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/yelp/android/serializable/_YelpCheckIn;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mSurveyQuestions:Ljava/util/ArrayList;

    .line 49
    iput-object p2, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mPrimaryComment:Lcom/yelp/android/serializable/Comment;

    .line 50
    iput-object p3, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mDateCreated:Ljava/util/Date;

    .line 51
    iput-object p4, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mNewBadges:Ljava/util/List;

    .line 52
    iput-object p5, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mPrivateFeedback:Ljava/util/List;

    .line 53
    iput-object p6, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mId:Ljava/lang/String;

    .line 54
    iput-object p7, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mBusinessId:Ljava/lang/String;

    .line 55
    iput-object p8, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mUserId:Ljava/lang/String;

    .line 56
    iput-object p9, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mTip:Ljava/lang/String;

    .line 57
    iput-object p10, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mLocation:Ljava/lang/String;

    .line 58
    iput-object p11, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mBusinessName:Ljava/lang/String;

    .line 59
    iput-object p12, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mContributionTypeString:Ljava/lang/String;

    .line 60
    iput-object p13, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mUser:Lcom/yelp/android/serializable/User;

    .line 61
    iput-object p14, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    .line 62
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mIsCommentable:Z

    .line 63
    move/from16 v0, p16

    iput v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mInterval:I

    .line 64
    move/from16 v0, p17

    iput v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mTotalCount:I

    .line 65
    move/from16 v0, p18

    iput v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mWeekCount:I

    .line 66
    move/from16 v0, p19

    iput v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mUserCount:I

    .line 67
    move/from16 v0, p20

    iput v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mLocationRank:I

    .line 68
    move/from16 v0, p21

    iput v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mFriendRank:I

    .line 69
    move/from16 v0, p22

    iput v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mFriendActiveCount:I

    .line 70
    move/from16 v0, p23

    iput v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mRegularRank:I

    .line 71
    move/from16 v0, p24

    iput v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mCommentsCount:I

    .line 72
    move/from16 v0, p25

    iput v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mPositiveFeedback:I

    .line 73
    move/from16 v0, p26

    iput v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mTotalSurveyQuestions:I

    .line 74
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public getBusiness()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method public getBusinessId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mBusinessId:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mBusinessName:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentsCount()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mCommentsCount:I

    return v0
.end method

.method public getContributionTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mContributionTypeString:Ljava/lang/String;

    return-object v0
.end method

.method public getDateCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mDateCreated:Ljava/util/Date;

    return-object v0
.end method

.method public getFriendActiveCount()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mFriendActiveCount:I

    return v0
.end method

.method public getFriendRank()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mFriendRank:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getInterval()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mInterval:I

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationRank()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mLocationRank:I

    return v0
.end method

.method public getNewBadges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Badge;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mNewBadges:Ljava/util/List;

    return-object v0
.end method

.method public getPositiveFeedback()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mPositiveFeedback:I

    return v0
.end method

.method public getPrimaryComment()Lcom/yelp/android/serializable/Comment;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mPrimaryComment:Lcom/yelp/android/serializable/Comment;

    return-object v0
.end method

.method public getPrivateFeedback()Ljava/util/List;
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
    .line 93
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mPrivateFeedback:Ljava/util/List;

    return-object v0
.end method

.method public getRegularRank()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mRegularRank:I

    return v0
.end method

.method public getSurveyQuestions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/SurveyQuestion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mSurveyQuestions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mTip:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mTotalCount:I

    return v0
.end method

.method public getTotalSurveyQuestions()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mTotalSurveyQuestions:I

    return v0
.end method

.method public getUser()Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mUser:Lcom/yelp/android/serializable/User;

    return-object v0
.end method

.method public getUserCount()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mUserCount:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getWeekCount()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mWeekCount:I

    return v0
.end method

.method public isCommentable()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mIsCommentable:Z

    return v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 227
    const-string/jumbo v0, "survey_questions"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 228
    const-string/jumbo v0, "survey_questions"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/SurveyQuestion;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mSurveyQuestions:Ljava/util/ArrayList;

    .line 232
    :goto_0
    const-string/jumbo v0, "primary_comment"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    sget-object v0, Lcom/yelp/android/serializable/Comment;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "primary_comment"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Comment;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mPrimaryComment:Lcom/yelp/android/serializable/Comment;

    .line 235
    :cond_0
    const-string/jumbo v0, "time_created"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    const-string/jumbo v0, "time_created"

    invoke-static {p1, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mDateCreated:Ljava/util/Date;

    .line 238
    :cond_1
    const-string/jumbo v0, "new_badges"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 239
    const-string/jumbo v0, "new_badges"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Badge;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mNewBadges:Ljava/util/List;

    .line 243
    :goto_1
    const-string/jumbo v0, "feedback"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 244
    const-string/jumbo v0, "feedback"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/parcelgen/JsonUtil;->getStringList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mPrivateFeedback:Ljava/util/List;

    .line 248
    :goto_2
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 249
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mId:Ljava/lang/String;

    .line 251
    :cond_2
    const-string/jumbo v0, "business_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 252
    const-string/jumbo v0, "business_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mBusinessId:Ljava/lang/String;

    .line 254
    :cond_3
    const-string/jumbo v0, "user_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 255
    const-string/jumbo v0, "user_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mUserId:Ljava/lang/String;

    .line 257
    :cond_4
    const-string/jumbo v0, "quicktip_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 258
    const-string/jumbo v0, "quicktip_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mTip:Ljava/lang/String;

    .line 260
    :cond_5
    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 261
    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mLocation:Ljava/lang/String;

    .line 263
    :cond_6
    const-string/jumbo v0, "business_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 264
    const-string/jumbo v0, "business_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mBusinessName:Ljava/lang/String;

    .line 266
    :cond_7
    const-string/jumbo v0, "contribution_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 267
    const-string/jumbo v0, "contribution_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mContributionTypeString:Ljava/lang/String;

    .line 269
    :cond_8
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 270
    sget-object v0, Lcom/yelp/android/serializable/User;->CREATOR:Lcom/yelp/android/serializable/ah;

    const-string/jumbo v1, "user"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/ah;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mUser:Lcom/yelp/android/serializable/User;

    .line 272
    :cond_9
    const-string/jumbo v0, "business"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 273
    sget-object v0, Lcom/yelp/android/serializable/YelpBusiness;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "business"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    .line 275
    :cond_a
    const-string/jumbo v0, "is_commentable"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 276
    const-string/jumbo v0, "is_commentable"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mIsCommentable:Z

    .line 280
    :goto_3
    const-string/jumbo v0, "interval"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mInterval:I

    .line 281
    const-string/jumbo v0, "check_in_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mTotalCount:I

    .line 282
    const-string/jumbo v0, "week_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mWeekCount:I

    .line 283
    const-string/jumbo v0, "user_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mUserCount:I

    .line 284
    const-string/jumbo v0, "location_rank"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mLocationRank:I

    .line 285
    const-string/jumbo v0, "friend_rank"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mFriendRank:I

    .line 286
    const-string/jumbo v0, "friend_active_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mFriendActiveCount:I

    .line 287
    const-string/jumbo v0, "regular_rank"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mRegularRank:I

    .line 288
    const-string/jumbo v0, "comments_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mCommentsCount:I

    .line 289
    const-string/jumbo v0, "feedback_positive_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mPositiveFeedback:I

    .line 290
    const-string/jumbo v0, "total_survey_questions"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mTotalSurveyQuestions:I

    .line 291
    return-void

    .line 230
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mSurveyQuestions:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 241
    :cond_c
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mNewBadges:Ljava/util/List;

    goto/16 :goto_1

    .line 246
    :cond_d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mPrivateFeedback:Ljava/util/List;

    goto/16 :goto_2

    .line 278
    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mIsCommentable:Z

    goto :goto_3
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 194
    sget-object v0, Lcom/yelp/android/serializable/SurveyQuestion;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mSurveyQuestions:Ljava/util/ArrayList;

    .line 195
    const-class v0, Lcom/yelp/android/serializable/Comment;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Comment;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mPrimaryComment:Lcom/yelp/android/serializable/Comment;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 197
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 198
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mDateCreated:Ljava/util/Date;

    .line 200
    :cond_0
    sget-object v0, Lcom/yelp/android/serializable/Badge;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mNewBadges:Ljava/util/List;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mPrivateFeedback:Ljava/util/List;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mId:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mBusinessId:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mUserId:Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mTip:Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mLocation:Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mBusinessName:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mContributionTypeString:Ljava/lang/String;

    .line 209
    const-class v0, Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mUser:Lcom/yelp/android/serializable/User;

    .line 210
    const-class v0, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 212
    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mIsCommentable:Z

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mInterval:I

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mTotalCount:I

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mWeekCount:I

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mUserCount:I

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mLocationRank:I

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mFriendRank:I

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mFriendActiveCount:I

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mRegularRank:I

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mCommentsCount:I

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mPositiveFeedback:I

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mTotalSurveyQuestions:I

    .line 224
    return-void
.end method

.method public writeJSON()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 294
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 295
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mSurveyQuestions:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 296
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 297
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mSurveyQuestions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SurveyQuestion;

    .line 298
    invoke-virtual {v0}, Lcom/yelp/android/serializable/SurveyQuestion;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 300
    :cond_0
    const-string/jumbo v0, "survey_questions"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mPrimaryComment:Lcom/yelp/android/serializable/Comment;

    if-eqz v0, :cond_2

    .line 303
    const-string/jumbo v0, "primary_comment"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mPrimaryComment:Lcom/yelp/android/serializable/Comment;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Comment;->writeJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 305
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mDateCreated:Ljava/util/Date;

    if-eqz v0, :cond_3

    .line 306
    const-string/jumbo v0, "time_created"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mDateCreated:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 308
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mNewBadges:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 309
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 310
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mNewBadges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Badge;

    .line 311
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Badge;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 313
    :cond_4
    const-string/jumbo v0, "new_badges"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mPrivateFeedback:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 316
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 317
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mPrivateFeedback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 318
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 320
    :cond_6
    const-string/jumbo v0, "feedback"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 322
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mId:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 323
    const-string/jumbo v0, "id"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 325
    :cond_8
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mBusinessId:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 326
    const-string/jumbo v0, "business_id"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mBusinessId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 328
    :cond_9
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mUserId:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 329
    const-string/jumbo v0, "user_id"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mUserId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 331
    :cond_a
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mTip:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 332
    const-string/jumbo v0, "quicktip_text"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mTip:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    :cond_b
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mLocation:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 335
    const-string/jumbo v0, "location"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mLocation:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    :cond_c
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mBusinessName:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 338
    const-string/jumbo v0, "business_name"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mBusinessName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 340
    :cond_d
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mContributionTypeString:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 341
    const-string/jumbo v0, "contribution_type"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mContributionTypeString:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 343
    :cond_e
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mUser:Lcom/yelp/android/serializable/User;

    if-eqz v0, :cond_f

    .line 344
    const-string/jumbo v0, "user"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mUser:Lcom/yelp/android/serializable/User;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/User;->writeJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 346
    :cond_f
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v0, :cond_10

    .line 347
    const-string/jumbo v0, "business"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->writeJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    :cond_10
    const-string/jumbo v0, "is_commentable"

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mIsCommentable:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 350
    const-string/jumbo v0, "interval"

    iget v2, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mInterval:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 351
    const-string/jumbo v0, "check_in_count"

    iget v2, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mTotalCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 352
    const-string/jumbo v0, "week_count"

    iget v2, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mWeekCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 353
    const-string/jumbo v0, "user_count"

    iget v2, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mUserCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 354
    const-string/jumbo v0, "location_rank"

    iget v2, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mLocationRank:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 355
    const-string/jumbo v0, "friend_rank"

    iget v2, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mFriendRank:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 356
    const-string/jumbo v0, "friend_active_count"

    iget v2, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mFriendActiveCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 357
    const-string/jumbo v0, "regular_rank"

    iget v2, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mRegularRank:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 358
    const-string/jumbo v0, "comments_count"

    iget v2, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mCommentsCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 359
    const-string/jumbo v0, "feedback_positive_count"

    iget v2, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mPositiveFeedback:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 360
    const-string/jumbo v0, "total_survey_questions"

    iget v2, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mTotalSurveyQuestions:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 361
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 165
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mSurveyQuestions:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 166
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mPrimaryComment:Lcom/yelp/android/serializable/Comment;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 167
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mDateCreated:Ljava/util/Date;

    if-nez v0, :cond_0

    const-wide/32 v0, -0x80000000

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 168
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mNewBadges:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 169
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mPrivateFeedback:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 170
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mBusinessId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mTip:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mBusinessName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mContributionTypeString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mUser:Lcom/yelp/android/serializable/User;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 178
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 179
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mIsCommentable:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 180
    iget v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mTotalCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mWeekCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mUserCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mLocationRank:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mFriendRank:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mFriendActiveCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mRegularRank:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mCommentsCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mPositiveFeedback:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mTotalSurveyQuestions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpCheckIn;->mDateCreated:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto/16 :goto_0
.end method
