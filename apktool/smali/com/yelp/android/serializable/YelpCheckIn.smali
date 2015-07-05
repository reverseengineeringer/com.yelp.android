.class public Lcom/yelp/android/serializable/YelpCheckIn;
.super Lcom/yelp/android/serializable/_YelpCheckIn;
.source "YelpCheckIn.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/yelp/android/serializable/CheckIn;
.implements Lcom/yelp/android/serializable/DisplayableAsUserBadge;
.implements Lcom/yelp/android/serializable/by;


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/YelpCheckIn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFeedback:Lcom/yelp/android/serializable/Feedback;

.field private mIsOfferAwarded:Z

.field private mLocationRankTitle:Lcom/yelp/android/serializable/RankTitle$Rank;

.field private mNewRankTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 286
    new-instance v0, Lcom/yelp/android/serializable/ee;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ee;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/YelpCheckIn;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/yelp/android/serializable/_YelpCheckIn;-><init>()V

    .line 179
    new-instance v0, Lcom/yelp/android/serializable/Feedback;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/serializable/Feedback;-><init>(Ljava/util/List;I)V

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mFeedback:Lcom/yelp/android/serializable/Feedback;

    .line 180
    return-void
.end method

.method public static checkInFromJSONResponse(Lorg/json/JSONObject;Lcom/yelp/android/av/g;)Lcom/yelp/android/serializable/YelpCheckIn;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/yelp/android/av/g",
            "<***>;)",
            "Lcom/yelp/android/serializable/YelpCheckIn;"
        }
    .end annotation

    .prologue
    .line 123
    sget-object v0, Lcom/yelp/android/serializable/YelpCheckIn;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "check_in"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    .line 124
    const-string/jumbo v1, "check_in_offer_awarded"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/yelp/android/serializable/YelpCheckIn;->mIsOfferAwarded:Z

    .line 125
    const-string/jumbo v1, "business"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    sget-object v1, Lcom/yelp/android/serializable/YelpBusiness;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v2, "business"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v1, v0, Lcom/yelp/android/serializable/YelpCheckIn;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    .line 127
    iget-object v1, v0, Lcom/yelp/android/serializable/YelpCheckIn;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p1}, Lcom/yelp/android/av/g;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/serializable/YelpBusiness;->setYelpRequestId(Ljava/lang/String;)V

    .line 129
    :cond_0
    const-string/jumbo v1, "new_badges"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    const-string/jumbo v1, "new_badges"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/serializable/Badge;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v1, v2}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/YelpCheckIn;->mNewBadges:Ljava/util/List;

    .line 135
    :goto_0
    const-string/jumbo v1, "stats"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 136
    if-eqz v1, :cond_4

    .line 137
    const-string/jumbo v2, "user_count"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/yelp/android/serializable/YelpCheckIn;->mUserCount:I

    .line 138
    const-string/jumbo v2, "total_count"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/yelp/android/serializable/YelpCheckIn;->mTotalCount:I

    .line 139
    const-string/jumbo v2, "week_count"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/yelp/android/serializable/YelpCheckIn;->mWeekCount:I

    .line 140
    const-string/jumbo v2, "location_rank"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/yelp/android/serializable/YelpCheckIn;->mLocationRank:I

    .line 141
    const-string/jumbo v2, "friend_rank"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/yelp/android/serializable/YelpCheckIn;->mFriendRank:I

    .line 142
    const-string/jumbo v2, "friend_active_count"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/yelp/android/serializable/YelpCheckIn;->mFriendActiveCount:I

    .line 143
    const-string/jumbo v2, "regular_rank"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/yelp/android/serializable/YelpCheckIn;->mRegularRank:I

    .line 144
    const-string/jumbo v2, "new_location_rank_titles"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 145
    if-eqz v3, :cond_3

    .line 147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/yelp/android/serializable/YelpCheckIn;->mNewRankTitles:Ljava/util/List;

    .line 148
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-gt v1, v2, :cond_4

    .line 149
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v4, "location_names"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 151
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v5, "title"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yelp/android/serializable/RankTitle$Rank;->rankForString(Ljava/lang/String;)Lcom/yelp/android/serializable/RankTitle$Rank;

    move-result-object v5

    .line 153
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 156
    iget-object v6, v0, Lcom/yelp/android/serializable/YelpCheckIn;->mNewRankTitles:Ljava/util/List;

    new-instance v7, Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v5, v8}, Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;-><init>(Lcom/yelp/android/serializable/RankTitle$Rank;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 133
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/YelpCheckIn;->mNewBadges:Ljava/util/List;

    goto/16 :goto_0

    .line 148
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 161
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/YelpCheckIn;->mNewRankTitles:Ljava/util/List;

    .line 164
    :cond_4
    const-string/jumbo v1, "survey_questions"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 165
    const-string/jumbo v1, "survey_questions"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/serializable/SurveyQuestion;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v1, v2}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/YelpCheckIn;->mSurveyQuestions:Ljava/util/ArrayList;

    .line 168
    :cond_5
    const-string/jumbo v1, "contribution_type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/YelpCheckIn;->mContributionTypeString:Ljava/lang/String;

    .line 169
    return-object v0
.end method

.method public static checkInsFromJSONArray(Lorg/json/JSONArray;Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpCheckIn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    sget-object v0, Lcom/yelp/android/serializable/YelpCheckIn;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {p0, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v2

    .line 104
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    .line 105
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getBusinessId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getBusinessId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v1, v0, Lcom/yelp/android/serializable/YelpCheckIn;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    goto :goto_0

    .line 109
    :cond_1
    return-object v2
.end method

.method private static shouldShowRegular(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 358
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;

    .line 359
    # getter for: Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;->mRank:Lcom/yelp/android/serializable/RankTitle$Rank;
    invoke-static {v0}, Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;->access$000(Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;)Lcom/yelp/android/serializable/RankTitle$Rank;

    move-result-object v0

    sget-object v2, Lcom/yelp/android/serializable/RankTitle$Rank;->REGULAR:Lcom/yelp/android/serializable/RankTitle$Rank;

    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/RankTitle$Rank;->greaterThan(Lcom/yelp/android/serializable/RankTitle$Rank;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    const/4 v0, 0x0

    .line 363
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clearUser()V
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mUser:Lcom/yelp/android/serializable/User;

    .line 188
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 443
    if-ne p0, p1, :cond_1

    .line 460
    :cond_0
    :goto_0
    return v0

    .line 446
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 447
    goto :goto_0

    .line 449
    :cond_2
    instance-of v2, p1, Lcom/yelp/android/serializable/YelpCheckIn;

    if-nez v2, :cond_3

    move v0, v1

    .line 450
    goto :goto_0

    .line 452
    :cond_3
    check-cast p1, Lcom/yelp/android/serializable/YelpCheckIn;

    .line 453
    iget-object v2, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mId:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 454
    iget-object v2, p1, Lcom/yelp/android/serializable/_YelpCheckIn;->mId:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 455
    goto :goto_0

    .line 457
    :cond_4
    iget-object v2, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mId:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/serializable/_YelpCheckIn;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 458
    goto :goto_0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getBusiness()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpCheckIn;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    return-object v0
.end method

.method public getBusinessId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v0

    .line 197
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mBusinessId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBusinessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 251
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mBusinessName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCommentCountLikeCountText(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 387
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpCheckIn;->getCommentsCount()I

    move-result v0

    .line 388
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpCheckIn;->getFeedback()Lcom/yelp/android/serializable/Feedback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Feedback;->getPositiveFeedbackCount()I

    move-result v3

    .line 389
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpCheckIn;->getPrimaryComment()Lcom/yelp/android/serializable/Comment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 392
    add-int/lit8 v0, v0, -0x1

    .line 394
    :cond_0
    const-string/jumbo v1, ""

    .line 395
    if-gtz v0, :cond_1

    if-lez v3, :cond_5

    .line 397
    :cond_1
    const/4 v2, 0x0

    .line 398
    if-lez v3, :cond_2

    .line 399
    const v1, 0x7f0e0043

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p1, v1, v3, v4}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 403
    :cond_2
    if-lez v0, :cond_3

    .line 404
    const v1, 0x7f0e0033

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v7

    invoke-static {p1, v1, v0, v2}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 408
    :cond_3
    if-lez v0, :cond_4

    if-lez v3, :cond_4

    .line 409
    const v0, 0x7f0e003b

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v7

    invoke-static {p1, v0, v3, v1}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 412
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070557

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v7

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 418
    :goto_0
    return-object v0

    .line 414
    :cond_4
    if-ne v3, v6, :cond_5

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpCheckIn;->getFeedback()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->isLikedByUser()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 415
    const v0, 0x7f0706c5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method public bridge synthetic getCommentsCount()I
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpCheckIn;->getCommentsCount()I

    move-result v0

    return v0
.end method

.method public getContributionType()Lcom/yelp/android/serializable/YelpCheckIn$ContributionType;
    .locals 2

    .prologue
    .line 494
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpCheckIn;->getContributionTypeString()Ljava/lang/String;

    move-result-object v0

    .line 495
    const-string/jumbo v1, "review"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 496
    sget-object v0, Lcom/yelp/android/serializable/YelpCheckIn$ContributionType;->REVIEW:Lcom/yelp/android/serializable/YelpCheckIn$ContributionType;

    .line 500
    :goto_0
    return-object v0

    .line 497
    :cond_0
    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 498
    sget-object v0, Lcom/yelp/android/serializable/YelpCheckIn$ContributionType;->PHOTO_OR_VIDEO:Lcom/yelp/android/serializable/YelpCheckIn$ContributionType;

    goto :goto_0

    .line 500
    :cond_1
    sget-object v0, Lcom/yelp/android/serializable/YelpCheckIn$ContributionType;->TIP:Lcom/yelp/android/serializable/YelpCheckIn$ContributionType;

    goto :goto_0
.end method

.method public getContributionTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mContributionTypeString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    const-string/jumbo v0, "tip"

    .line 490
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mContributionTypeString:Ljava/lang/String;

    goto :goto_0
.end method

.method public bridge synthetic getDateCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpCheckIn;->getDateCreated()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getFeedback()Lcom/yelp/android/serializable/Feedback;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mFeedback:Lcom/yelp/android/serializable/Feedback;

    return-object v0
.end method

.method public bridge synthetic getFriendActiveCount()I
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpCheckIn;->getFriendActiveCount()I

    move-result v0

    return v0
.end method

.method public getFriendCount()I
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mUser:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getFriendCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getFriendRank()I
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpCheckIn;->getFriendRank()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpCheckIn;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInterval()I
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpCheckIn;->getInterval()I

    move-result v0

    return v0
.end method

.method public getLatLng()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpCheckIn;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpCheckIn;->getLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLocationRank()I
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpCheckIn;->getLocationRank()I

    move-result v0

    return v0
.end method

.method public getLocationRankTitle()Lcom/yelp/android/serializable/RankTitle$Rank;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mLocationRankTitle:Lcom/yelp/android/serializable/RankTitle$Rank;

    return-object v0
.end method

.method public getMediaCount()I
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mUser:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getMediaCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getNewBadges()Ljava/util/List;
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpCheckIn;->getNewBadges()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNewLocationTitles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mNewRankTitles:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mNewRankTitles:Ljava/util/List;

    goto :goto_0
.end method

.method public getNewestBelow(Lcom/yelp/android/serializable/RankTitle$Rank;)Lcom/yelp/android/serializable/RankTitle$Rank;
    .locals 4

    .prologue
    .line 367
    sget-object v0, Lcom/yelp/android/serializable/RankTitle$Rank;->USER:Lcom/yelp/android/serializable/RankTitle$Rank;

    .line 368
    iget-object v1, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mNewRankTitles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;

    .line 373
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;->getRank()Lcom/yelp/android/serializable/RankTitle$Rank;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/yelp/android/serializable/RankTitle$Rank;->greaterThan(Lcom/yelp/android/serializable/RankTitle$Rank;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;->getRank()Lcom/yelp/android/serializable/RankTitle$Rank;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/yelp/android/serializable/RankTitle$Rank;->lessThan(Lcom/yelp/android/serializable/RankTitle$Rank;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 374
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;->getRank()Lcom/yelp/android/serializable/RankTitle$Rank;

    move-result-object v1

    move-object v0, v1

    :goto_1
    move-object v1, v0

    .line 376
    goto :goto_0

    .line 377
    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public getNotificationsList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 339
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 340
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mNewBadges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Badge;

    .line 341
    const/4 v3, 0x1

    invoke-static {p1, v0, v3}, Lcom/yelp/android/ui/activities/ActivityBadge;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Badge;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mNewRankTitles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;

    .line 344
    # getter for: Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;->mRank:Lcom/yelp/android/serializable/RankTitle$Rank;
    invoke-static {v0}, Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;->access$000(Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;)Lcom/yelp/android/serializable/RankTitle$Rank;

    move-result-object v3

    .line 345
    sget-object v4, Lcom/yelp/android/serializable/RankTitle$Rank;->USER:Lcom/yelp/android/serializable/RankTitle$Rank;

    invoke-virtual {v3, v4}, Lcom/yelp/android/serializable/RankTitle$Rank;->greaterThan(Lcom/yelp/android/serializable/RankTitle$Rank;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 346
    sget-object v4, Lcom/yelp/android/serializable/RankTitle$Rank;->REGULAR:Lcom/yelp/android/serializable/RankTitle$Rank;

    if-ne v3, v4, :cond_2

    iget-object v4, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mNewRankTitles:Ljava/util/List;

    invoke-static {v4}, Lcom/yelp/android/serializable/YelpCheckIn;->shouldShowRegular(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 351
    :cond_2
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v3, v0}, Lcom/yelp/android/ui/activities/ActivityRoyal;->a(Landroid/content/Context;Lcom/yelp/android/serializable/RankTitle$Rank;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 354
    :cond_3
    return-object v1
.end method

.method public getPhotoCount()I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mUser:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getLocalPhotoCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPositiveFeedback()I
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpCheckIn;->getPositiveFeedback()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPrimaryComment()Lcom/yelp/android/serializable/Comment;
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpCheckIn;->getPrimaryComment()Lcom/yelp/android/serializable/Comment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPrivateFeedback()Ljava/util/List;
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpCheckIn;->getPrivateFeedback()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRegularRank()I
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpCheckIn;->getRegularRank()I

    move-result v0

    return v0
.end method

.method public getReviewCount()I
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mUser:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getReviewCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSurveyQuestions()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpCheckIn;->getSurveyQuestions()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getTip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 474
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpCheckIn;->getTip()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTotalCount()I
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpCheckIn;->getTotalCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTotalSurveyQuestions()I
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpCheckIn;->getTotalSurveyQuestions()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getUser()Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpCheckIn;->getUser()Lcom/yelp/android/serializable/User;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUserCount()I
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpCheckIn;->getUserCount()I

    move-result v0

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mUser:Lcom/yelp/android/serializable/User;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mUser:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getId()Ljava/lang/String;

    move-result-object v0

    .line 205
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mUserId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mUser:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mUser:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoCount()I
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mUser:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getVideoCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getWeekCount()I
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpCheckIn;->getWeekCount()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 431
    .line 433
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 434
    return v0

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic isCommentable()Z
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpCheckIn;->isCommentable()Z

    move-result v0

    return v0
.end method

.method public isEliteUser()Z
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mUser:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->isEliteUser()Z

    move-result v0

    return v0
.end method

.method public isOfferAwarded()Z
    .locals 1

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mIsOfferAwarded:Z

    return v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 327
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_YelpCheckIn;->readFromJson(Lorg/json/JSONObject;)V

    .line 328
    sget-object v0, Lcom/yelp/android/serializable/RankTitle$Rank;->USER:Lcom/yelp/android/serializable/RankTitle$Rank;

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mLocationRankTitle:Lcom/yelp/android/serializable/RankTitle$Rank;

    .line 329
    const-string/jumbo v0, "location_rank_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 330
    const-string/jumbo v0, "location_rank_title"

    sget-object v1, Lcom/yelp/android/serializable/RankTitle$Rank;->USER:Lcom/yelp/android/serializable/RankTitle$Rank;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/RankTitle$Rank;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/RankTitle$Rank;->rankForString(Ljava/lang/String;)Lcom/yelp/android/serializable/RankTitle$Rank;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mLocationRankTitle:Lcom/yelp/android/serializable/RankTitle$Rank;

    .line 335
    :cond_0
    :goto_0
    new-instance v0, Lcom/yelp/android/serializable/Feedback;

    iget-object v1, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mPrivateFeedback:Ljava/util/List;

    iget v2, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mPositiveFeedback:I

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/serializable/Feedback;-><init>(Ljava/util/List;I)V

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mFeedback:Lcom/yelp/android/serializable/Feedback;

    .line 336
    return-void

    .line 332
    :cond_1
    const-string/jumbo v0, "rank_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    const-string/jumbo v0, "rank_title"

    sget-object v1, Lcom/yelp/android/serializable/RankTitle$Rank;->USER:Lcom/yelp/android/serializable/RankTitle$Rank;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/RankTitle$Rank;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/RankTitle$Rank;->rankForString(Ljava/lang/String;)Lcom/yelp/android/serializable/RankTitle$Rank;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mLocationRankTitle:Lcom/yelp/android/serializable/RankTitle$Rank;

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 318
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_YelpCheckIn;->readFromParcel(Landroid/os/Parcel;)V

    .line 319
    invoke-static {}, Lcom/yelp/android/serializable/RankTitle$Rank;->values()[Lcom/yelp/android/serializable/RankTitle$Rank;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mLocationRankTitle:Lcom/yelp/android/serializable/RankTitle$Rank;

    .line 320
    sget-object v0, Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mNewRankTitles:Ljava/util/List;

    .line 321
    const-class v0, Lcom/yelp/android/serializable/Feedback;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Feedback;

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mFeedback:Lcom/yelp/android/serializable/Feedback;

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mIsOfferAwarded:Z

    .line 323
    return-void

    .line 322
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFeedback(Lcom/yelp/android/serializable/Feedback;)V
    .locals 1

    .prologue
    .line 275
    iput-object p1, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mFeedback:Lcom/yelp/android/serializable/Feedback;

    .line 276
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mFeedback:Lcom/yelp/android/serializable/Feedback;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->getFeedbackByUser()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mPrivateFeedback:Ljava/util/List;

    .line 277
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mFeedback:Lcom/yelp/android/serializable/Feedback;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->getPositiveFeedbackCount()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mPositiveFeedback:I

    .line 278
    return-void
.end method

.method public updateCommentCount(I)V
    .locals 0

    .prologue
    .line 464
    iput p1, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mCommentsCount:I

    .line 465
    return-void
.end method

.method public updateUser(Lcom/yelp/android/serializable/User;)V
    .locals 1

    .prologue
    .line 468
    iput-object p1, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mUser:Lcom/yelp/android/serializable/User;

    .line 469
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mUser:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->clearCheckIn()V

    .line 470
    return-void
.end method

.method public bridge synthetic writeJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpCheckIn;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 309
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_YelpCheckIn;->writeToParcel(Landroid/os/Parcel;I)V

    .line 310
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mLocationRankTitle:Lcom/yelp/android/serializable/RankTitle$Rank;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RankTitle$Rank;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mNewRankTitles:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 312
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mFeedback:Lcom/yelp/android/serializable/Feedback;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 313
    iget-boolean v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->mIsOfferAwarded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    return-void

    .line 313
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
