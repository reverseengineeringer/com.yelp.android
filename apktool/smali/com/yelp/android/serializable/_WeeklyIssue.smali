.class abstract Lcom/yelp/android/serializable/_WeeklyIssue;
.super Ljava/lang/Object;
.source "_WeeklyIssue.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mBusinesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation
.end field

.field protected mHeadlinePhotoCreditName:Ljava/lang/String;

.field protected mHeadlinePhotoTitle:Ljava/lang/String;

.field protected mHeadlinePhotoUrl:Ljava/lang/String;

.field protected mId:Ljava/lang/String;

.field protected mMarketId:Ljava/lang/String;

.field protected mMarketLocale:Ljava/lang/String;

.field protected mMarketName:Ljava/lang/String;

.field protected mPublishDate:Ljava/lang/String;

.field protected mReviews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Review;",
            ">;"
        }
    .end annotation
.end field

.field protected mText:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method protected constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Review;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
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
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/yelp/android/serializable/_WeeklyIssue;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mReviews:Ljava/util/ArrayList;

    .line 32
    iput-object p2, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mBusinesses:Ljava/util/ArrayList;

    .line 33
    iput-object p3, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mId:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mText:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mMarketId:Ljava/lang/String;

    .line 36
    iput-object p6, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mMarketName:Ljava/lang/String;

    .line 37
    iput-object p7, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mMarketLocale:Ljava/lang/String;

    .line 38
    iput-object p8, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mHeadlinePhotoCreditName:Ljava/lang/String;

    .line 39
    iput-object p9, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mHeadlinePhotoTitle:Ljava/lang/String;

    .line 40
    iput-object p10, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mHeadlinePhotoUrl:Ljava/lang/String;

    .line 41
    iput-object p11, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mPublishDate:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public getBusinesses()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mBusinesses:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHeadlinePhotoCreditName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mHeadlinePhotoCreditName:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadlinePhotoTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mHeadlinePhotoTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadlinePhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mHeadlinePhotoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mMarketId:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mMarketLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mMarketName:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mPublishDate:Ljava/lang/String;

    return-object v0
.end method

.method public getReviews()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Review;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mReviews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 116
    const-string/jumbo v0, "reviews"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 117
    const-string/jumbo v0, "reviews"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Review;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mReviews:Ljava/util/ArrayList;

    .line 121
    :goto_0
    const-string/jumbo v0, "businesses"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 122
    const-string/jumbo v0, "businesses"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/YelpBusiness;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mBusinesses:Ljava/util/ArrayList;

    .line 126
    :goto_1
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mId:Ljava/lang/String;

    .line 129
    :cond_0
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mText:Ljava/lang/String;

    .line 132
    :cond_1
    const-string/jumbo v0, "market_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 133
    const-string/jumbo v0, "market_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mMarketId:Ljava/lang/String;

    .line 135
    :cond_2
    const-string/jumbo v0, "market_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 136
    const-string/jumbo v0, "market_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mMarketName:Ljava/lang/String;

    .line 138
    :cond_3
    const-string/jumbo v0, "market_locale"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 139
    const-string/jumbo v0, "market_locale"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mMarketLocale:Ljava/lang/String;

    .line 141
    :cond_4
    const-string/jumbo v0, "headline_photo_credit_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 142
    const-string/jumbo v0, "headline_photo_credit_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mHeadlinePhotoCreditName:Ljava/lang/String;

    .line 144
    :cond_5
    const-string/jumbo v0, "headline_photo_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 145
    const-string/jumbo v0, "headline_photo_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mHeadlinePhotoTitle:Ljava/lang/String;

    .line 147
    :cond_6
    const-string/jumbo v0, "headline_photo_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 148
    const-string/jumbo v0, "headline_photo_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mHeadlinePhotoUrl:Ljava/lang/String;

    .line 150
    :cond_7
    const-string/jumbo v0, "publish_date"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 151
    const-string/jumbo v0, "publish_date"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mPublishDate:Ljava/lang/String;

    .line 153
    :cond_8
    return-void

    .line 119
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mReviews:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 124
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mBusinesses:Ljava/util/ArrayList;

    goto/16 :goto_1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/yelp/android/serializable/Review;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mReviews:Ljava/util/ArrayList;

    .line 103
    sget-object v0, Lcom/yelp/android/serializable/YelpBusiness;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mBusinesses:Ljava/util/ArrayList;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mId:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mText:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mMarketId:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mMarketName:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mMarketLocale:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mHeadlinePhotoCreditName:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mHeadlinePhotoTitle:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mHeadlinePhotoUrl:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mPublishDate:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mReviews:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 89
    iget-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mBusinesses:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 90
    iget-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mMarketId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mMarketName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mMarketLocale:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mHeadlinePhotoCreditName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mHeadlinePhotoTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mHeadlinePhotoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssue;->mPublishDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    return-void
.end method
