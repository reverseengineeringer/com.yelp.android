.class abstract Lcom/yelp/android/serializable/_Event;
.super Ljava/lang/Object;
.source "_Event.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mAddress:Ljava/lang/String;

.field protected mAlias:Ljava/lang/String;

.field protected mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

.field protected mBusinessId:Ljava/lang/String;

.field protected mCategoryName:Ljava/lang/String;

.field protected mCost:D

.field protected mCostMax:D

.field protected mCurrencyCode:Ljava/lang/String;

.field protected mDescription:Ljava/lang/String;

.field protected mEventPhotoUrl:Ljava/lang/String;

.field protected mEventUrl:Ljava/lang/String;

.field protected mId:Ljava/lang/String;

.field protected mIsYelpCommunity:Z

.field protected mLatitude:D

.field protected mLocationName:Ljava/lang/String;

.field protected mLocationRating:D

.field protected mLongitude:D

.field protected mMapAddress:Ljava/lang/String;

.field protected mName:Ljava/lang/String;

.field protected mPhoto:Lcom/yelp/android/serializable/Photo;

.field protected mReminderNotification:Z

.field protected mRsvp:Lcom/yelp/android/serializable/EventRsvp;

.field protected mSubscriptionStatus:Ljava/lang/String;

.field protected mTalkTopicId:Ljava/lang/String;

.field protected mTalkTopicUserCount:I

.field protected mTicketsUrl:Ljava/lang/String;

.field protected mTimeEnd:J

.field protected mTimeStart:J

.field protected mTimezone:Ljava/lang/String;

.field protected mType:Lcom/yelp/android/serializable/Event$EventType;

.field protected mUser:Lcom/yelp/android/serializable/User;

.field protected mUserId:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method protected constructor <init>(Lcom/yelp/android/serializable/EventRsvp;Lcom/yelp/android/serializable/Event$EventType;Lcom/yelp/android/serializable/Photo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/User;Lcom/yelp/android/serializable/YelpBusiness;ZZDDDDDIJJ)V
    .locals 3

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Event;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/yelp/android/serializable/_Event;->mRsvp:Lcom/yelp/android/serializable/EventRsvp;

    .line 52
    iput-object p2, p0, Lcom/yelp/android/serializable/_Event;->mType:Lcom/yelp/android/serializable/Event$EventType;

    .line 53
    iput-object p3, p0, Lcom/yelp/android/serializable/_Event;->mPhoto:Lcom/yelp/android/serializable/Photo;

    .line 54
    iput-object p4, p0, Lcom/yelp/android/serializable/_Event;->mId:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Lcom/yelp/android/serializable/_Event;->mAlias:Ljava/lang/String;

    .line 56
    iput-object p6, p0, Lcom/yelp/android/serializable/_Event;->mName:Ljava/lang/String;

    .line 57
    iput-object p7, p0, Lcom/yelp/android/serializable/_Event;->mEventUrl:Ljava/lang/String;

    .line 58
    iput-object p8, p0, Lcom/yelp/android/serializable/_Event;->mTicketsUrl:Ljava/lang/String;

    .line 59
    iput-object p9, p0, Lcom/yelp/android/serializable/_Event;->mCategoryName:Ljava/lang/String;

    .line 60
    iput-object p10, p0, Lcom/yelp/android/serializable/_Event;->mDescription:Ljava/lang/String;

    .line 61
    iput-object p11, p0, Lcom/yelp/android/serializable/_Event;->mAddress:Ljava/lang/String;

    .line 62
    iput-object p12, p0, Lcom/yelp/android/serializable/_Event;->mMapAddress:Ljava/lang/String;

    .line 63
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mLocationName:Ljava/lang/String;

    .line 64
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mTimezone:Ljava/lang/String;

    .line 65
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mEventPhotoUrl:Ljava/lang/String;

    .line 66
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mBusinessId:Ljava/lang/String;

    .line 67
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mUserId:Ljava/lang/String;

    .line 68
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mCurrencyCode:Ljava/lang/String;

    .line 69
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mSubscriptionStatus:Ljava/lang/String;

    .line 70
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mTalkTopicId:Ljava/lang/String;

    .line 71
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mUser:Lcom/yelp/android/serializable/User;

    .line 72
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    .line 73
    move/from16 v0, p23

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_Event;->mIsYelpCommunity:Z

    .line 74
    move/from16 v0, p24

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_Event;->mReminderNotification:Z

    .line 75
    move-wide/from16 v0, p25

    iput-wide v0, p0, Lcom/yelp/android/serializable/_Event;->mCost:D

    .line 76
    move-wide/from16 v0, p27

    iput-wide v0, p0, Lcom/yelp/android/serializable/_Event;->mCostMax:D

    .line 77
    move-wide/from16 v0, p29

    iput-wide v0, p0, Lcom/yelp/android/serializable/_Event;->mLatitude:D

    .line 78
    move-wide/from16 v0, p31

    iput-wide v0, p0, Lcom/yelp/android/serializable/_Event;->mLongitude:D

    .line 79
    move-wide/from16 v0, p33

    iput-wide v0, p0, Lcom/yelp/android/serializable/_Event;->mLocationRating:D

    .line 80
    move/from16 v0, p35

    iput v0, p0, Lcom/yelp/android/serializable/_Event;->mTalkTopicUserCount:I

    .line 81
    move-wide/from16 v0, p36

    iput-wide v0, p0, Lcom/yelp/android/serializable/_Event;->mTimeStart:J

    .line 82
    move-wide/from16 v0, p38

    iput-wide v0, p0, Lcom/yelp/android/serializable/_Event;->mTimeEnd:J

    .line 83
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getBusiness()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method public getBusinessId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mBusinessId:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mCategoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getCost()D
    .locals 2

    .prologue
    .line 162
    iget-wide v0, p0, Lcom/yelp/android/serializable/_Event;->mCost:D

    return-wide v0
.end method

.method public getCostMax()D
    .locals 2

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/yelp/android/serializable/_Event;->mCostMax:D

    return-wide v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mCurrencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getEventPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mEventPhotoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getEventUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mEventUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 168
    iget-wide v0, p0, Lcom/yelp/android/serializable/_Event;->mLatitude:D

    return-wide v0
.end method

.method public getLocationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mLocationName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationRating()D
    .locals 2

    .prologue
    .line 174
    iget-wide v0, p0, Lcom/yelp/android/serializable/_Event;->mLocationRating:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 171
    iget-wide v0, p0, Lcom/yelp/android/serializable/_Event;->mLongitude:D

    return-wide v0
.end method

.method public getMapAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mMapAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoto()Lcom/yelp/android/serializable/Photo;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mPhoto:Lcom/yelp/android/serializable/Photo;

    return-object v0
.end method

.method public getReminderNotification()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_Event;->mReminderNotification:Z

    return v0
.end method

.method public getRsvp()Lcom/yelp/android/serializable/EventRsvp;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mRsvp:Lcom/yelp/android/serializable/EventRsvp;

    return-object v0
.end method

.method public getSubscriptionStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mSubscriptionStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getTalkTopicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mTalkTopicId:Ljava/lang/String;

    return-object v0
.end method

.method public getTalkTopicUserCount()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/yelp/android/serializable/_Event;->mTalkTopicUserCount:I

    return v0
.end method

.method public getTicketsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mTicketsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeEnd()J
    .locals 2

    .prologue
    .line 183
    iget-wide v0, p0, Lcom/yelp/android/serializable/_Event;->mTimeEnd:J

    return-wide v0
.end method

.method public getTimeStart()J
    .locals 2

    .prologue
    .line 180
    iget-wide v0, p0, Lcom/yelp/android/serializable/_Event;->mTimeStart:J

    return-wide v0
.end method

.method public getTimezone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mTimezone:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/yelp/android/serializable/Event$EventType;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mType:Lcom/yelp/android/serializable/Event$EventType;

    return-object v0
.end method

.method public getUser()Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mUser:Lcom/yelp/android/serializable/User;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public isYelpCommunity()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_Event;->mIsYelpCommunity:Z

    return v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 262
    const-string/jumbo v0, "rsvp"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    sget-object v0, Lcom/yelp/android/serializable/EventRsvp;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "rsvp"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/EventRsvp;

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mRsvp:Lcom/yelp/android/serializable/EventRsvp;

    .line 265
    :cond_0
    const-string/jumbo v0, "photo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 266
    sget-object v0, Lcom/yelp/android/serializable/Photo;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "photo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mPhoto:Lcom/yelp/android/serializable/Photo;

    .line 268
    :cond_1
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 269
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mId:Ljava/lang/String;

    .line 271
    :cond_2
    const-string/jumbo v0, "alias"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 272
    const-string/jumbo v0, "alias"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mAlias:Ljava/lang/String;

    .line 274
    :cond_3
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 275
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mName:Ljava/lang/String;

    .line 277
    :cond_4
    const-string/jumbo v0, "event_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 278
    const-string/jumbo v0, "event_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mEventUrl:Ljava/lang/String;

    .line 280
    :cond_5
    const-string/jumbo v0, "tickets_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 281
    const-string/jumbo v0, "tickets_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mTicketsUrl:Ljava/lang/String;

    .line 283
    :cond_6
    const-string/jumbo v0, "category_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 284
    const-string/jumbo v0, "category_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mCategoryName:Ljava/lang/String;

    .line 286
    :cond_7
    const-string/jumbo v0, "description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 287
    const-string/jumbo v0, "description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mDescription:Ljava/lang/String;

    .line 289
    :cond_8
    const-string/jumbo v0, "address"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 290
    const-string/jumbo v0, "address"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mAddress:Ljava/lang/String;

    .line 292
    :cond_9
    const-string/jumbo v0, "map_address"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 293
    const-string/jumbo v0, "map_address"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mMapAddress:Ljava/lang/String;

    .line 295
    :cond_a
    const-string/jumbo v0, "location_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 296
    const-string/jumbo v0, "location_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mLocationName:Ljava/lang/String;

    .line 298
    :cond_b
    const-string/jumbo v0, "timezone"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 299
    const-string/jumbo v0, "timezone"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mTimezone:Ljava/lang/String;

    .line 301
    :cond_c
    const-string/jumbo v0, "event_photo_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 302
    const-string/jumbo v0, "event_photo_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mEventPhotoUrl:Ljava/lang/String;

    .line 304
    :cond_d
    const-string/jumbo v0, "business_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 305
    const-string/jumbo v0, "business_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mBusinessId:Ljava/lang/String;

    .line 307
    :cond_e
    const-string/jumbo v0, "user_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 308
    const-string/jumbo v0, "user_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mUserId:Ljava/lang/String;

    .line 310
    :cond_f
    const-string/jumbo v0, "currency_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 311
    const-string/jumbo v0, "currency_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mCurrencyCode:Ljava/lang/String;

    .line 313
    :cond_10
    const-string/jumbo v0, "subscription_status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 314
    const-string/jumbo v0, "subscription_status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mSubscriptionStatus:Ljava/lang/String;

    .line 316
    :cond_11
    const-string/jumbo v0, "talk_topic_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 317
    const-string/jumbo v0, "talk_topic_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mTalkTopicId:Ljava/lang/String;

    .line 319
    :cond_12
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 320
    sget-object v0, Lcom/yelp/android/serializable/User;->CREATOR:Lcom/yelp/android/serializable/ah;

    const-string/jumbo v1, "user"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/ah;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mUser:Lcom/yelp/android/serializable/User;

    .line 322
    :cond_13
    const-string/jumbo v0, "business"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 323
    sget-object v0, Lcom/yelp/android/serializable/YelpBusiness;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "business"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    .line 325
    :cond_14
    const-string/jumbo v0, "is_yelp_community"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_Event;->mIsYelpCommunity:Z

    .line 326
    const-string/jumbo v0, "reminder_notification"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_Event;->mReminderNotification:Z

    .line 327
    const-string/jumbo v0, "cost"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_Event;->mCost:D

    .line 328
    const-string/jumbo v0, "cost_max"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_Event;->mCostMax:D

    .line 329
    const-string/jumbo v0, "latitude"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_Event;->mLatitude:D

    .line 330
    const-string/jumbo v0, "longitude"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_Event;->mLongitude:D

    .line 331
    const-string/jumbo v0, "location_rating"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_Event;->mLocationRating:D

    .line 332
    const-string/jumbo v0, "talk_topic_user_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Event;->mTalkTopicUserCount:I

    .line 333
    const-string/jumbo v0, "time_start"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_Event;->mTimeStart:J

    .line 334
    const-string/jumbo v0, "time_end"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_Event;->mTimeEnd:J

    .line 335
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 226
    const-class v0, Lcom/yelp/android/serializable/EventRsvp;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/EventRsvp;

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mRsvp:Lcom/yelp/android/serializable/EventRsvp;

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event$EventType;

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mType:Lcom/yelp/android/serializable/Event$EventType;

    .line 228
    const-class v0, Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mPhoto:Lcom/yelp/android/serializable/Photo;

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mId:Ljava/lang/String;

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mAlias:Ljava/lang/String;

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mName:Ljava/lang/String;

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mEventUrl:Ljava/lang/String;

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mTicketsUrl:Ljava/lang/String;

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mCategoryName:Ljava/lang/String;

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mDescription:Ljava/lang/String;

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mAddress:Ljava/lang/String;

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mMapAddress:Ljava/lang/String;

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mLocationName:Ljava/lang/String;

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mTimezone:Ljava/lang/String;

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mEventPhotoUrl:Ljava/lang/String;

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mBusinessId:Ljava/lang/String;

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mUserId:Ljava/lang/String;

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mCurrencyCode:Ljava/lang/String;

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mSubscriptionStatus:Ljava/lang/String;

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mTalkTopicId:Ljava/lang/String;

    .line 246
    const-class v0, Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mUser:Lcom/yelp/android/serializable/User;

    .line 247
    const-class v0, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/serializable/_Event;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 249
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/yelp/android/serializable/_Event;->mIsYelpCommunity:Z

    .line 250
    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_Event;->mReminderNotification:Z

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_Event;->mCost:D

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_Event;->mCostMax:D

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_Event;->mLatitude:D

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_Event;->mLongitude:D

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_Event;->mLocationRating:D

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Event;->mTalkTopicUserCount:I

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_Event;->mTimeStart:J

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_Event;->mTimeEnd:J

    .line 259
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 192
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mRsvp:Lcom/yelp/android/serializable/EventRsvp;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 193
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mType:Lcom/yelp/android/serializable/Event$EventType;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 194
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mPhoto:Lcom/yelp/android/serializable/Photo;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 195
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mEventUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mTicketsUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mCategoryName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mMapAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mLocationName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mTimezone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mEventPhotoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mBusinessId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mCurrencyCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mSubscriptionStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mTalkTopicId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mUser:Lcom/yelp/android/serializable/User;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 213
    iget-object v0, p0, Lcom/yelp/android/serializable/_Event;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 214
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_Event;->mIsYelpCommunity:Z

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_Event;->mReminderNotification:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 215
    iget-wide v0, p0, Lcom/yelp/android/serializable/_Event;->mCost:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 216
    iget-wide v0, p0, Lcom/yelp/android/serializable/_Event;->mCostMax:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 217
    iget-wide v0, p0, Lcom/yelp/android/serializable/_Event;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 218
    iget-wide v0, p0, Lcom/yelp/android/serializable/_Event;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 219
    iget-wide v0, p0, Lcom/yelp/android/serializable/_Event;->mLocationRating:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 220
    iget v0, p0, Lcom/yelp/android/serializable/_Event;->mTalkTopicUserCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget-wide v0, p0, Lcom/yelp/android/serializable/_Event;->mTimeStart:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 222
    iget-wide v0, p0, Lcom/yelp/android/serializable/_Event;->mTimeEnd:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 223
    return-void
.end method
