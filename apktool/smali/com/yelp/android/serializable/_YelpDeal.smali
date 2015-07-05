.class abstract Lcom/yelp/android/serializable/_YelpDeal;
.super Ljava/lang/Object;
.source "_YelpDeal.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mBusinessName:Ljava/lang/String;

.field protected mCanonicalBusinessId:Ljava/lang/String;

.field protected mCurrencyCode:Ljava/lang/String;

.field protected mDescription:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mId:Ljava/lang/String;

.field protected mImageUrl:Ljava/lang/String;

.field protected mLocation:Ljava/lang/String;

.field protected mMaxGiftQuantity:I

.field protected mMaxQuantity:I

.field protected mMaxUserQuantity:I

.field protected mOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpDealOption;",
            ">;"
        }
    .end annotation
.end field

.field protected mPurchasedCount:I

.field protected mPurchases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/DealPurchase;",
            ">;"
        }
    .end annotation
.end field

.field protected mRemainingCount:I

.field protected mShareUrl:Ljava/lang/String;

.field protected mSystemClockExpiration:J

.field protected mTerms:Ljava/lang/String;

.field protected mTimeEnd:J

.field protected mTimeReference:J

.field protected mTimeStart:J

.field protected mTimeUpdated:Ljava/util/Date;

.field protected mTitle:Ljava/lang/String;

.field protected mTosUrl:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method protected constructor <init>(Ljava/util/Date;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIJJJJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/DealPurchase;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpDealOption;",
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
            "IIIIIJJJJ)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/yelp/android/serializable/_YelpDeal;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTimeUpdated:Ljava/util/Date;

    .line 45
    iput-object p2, p0, Lcom/yelp/android/serializable/_YelpDeal;->mPurchases:Ljava/util/List;

    .line 46
    iput-object p3, p0, Lcom/yelp/android/serializable/_YelpDeal;->mDescription:Ljava/util/List;

    .line 47
    iput-object p4, p0, Lcom/yelp/android/serializable/_YelpDeal;->mOptions:Ljava/util/List;

    .line 48
    iput-object p5, p0, Lcom/yelp/android/serializable/_YelpDeal;->mId:Ljava/lang/String;

    .line 49
    iput-object p6, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTitle:Ljava/lang/String;

    .line 50
    iput-object p7, p0, Lcom/yelp/android/serializable/_YelpDeal;->mImageUrl:Ljava/lang/String;

    .line 51
    iput-object p8, p0, Lcom/yelp/android/serializable/_YelpDeal;->mLocation:Ljava/lang/String;

    .line 52
    iput-object p9, p0, Lcom/yelp/android/serializable/_YelpDeal;->mCurrencyCode:Ljava/lang/String;

    .line 53
    iput-object p10, p0, Lcom/yelp/android/serializable/_YelpDeal;->mBusinessName:Ljava/lang/String;

    .line 54
    iput-object p11, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTerms:Ljava/lang/String;

    .line 55
    iput-object p12, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTosUrl:Ljava/lang/String;

    .line 56
    iput-object p13, p0, Lcom/yelp/android/serializable/_YelpDeal;->mShareUrl:Ljava/lang/String;

    .line 57
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mCanonicalBusinessId:Ljava/lang/String;

    .line 58
    move/from16 v0, p15

    iput v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mMaxUserQuantity:I

    .line 59
    move/from16 v0, p16

    iput v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mMaxGiftQuantity:I

    .line 60
    move/from16 v0, p17

    iput v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mMaxQuantity:I

    .line 61
    move/from16 v0, p18

    iput v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mPurchasedCount:I

    .line 62
    move/from16 v0, p19

    iput v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mRemainingCount:I

    .line 63
    move-wide/from16 v0, p20

    iput-wide v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTimeStart:J

    .line 64
    move-wide/from16 v0, p22

    iput-wide v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTimeEnd:J

    .line 65
    move-wide/from16 v0, p24

    iput-wide v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTimeReference:J

    .line 66
    move-wide/from16 v0, p26

    iput-wide v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mSystemClockExpiration:J

    .line 67
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public getBusinessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mBusinessName:Ljava/lang/String;

    return-object v0
.end method

.method public getCanonicalBusinessId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mCanonicalBusinessId:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mCurrencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/util/List;
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
    .line 80
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mDescription:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxGiftQuantity()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mMaxGiftQuantity:I

    return v0
.end method

.method public getMaxQuantity()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mMaxQuantity:I

    return v0
.end method

.method public getMaxUserQuantity()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mMaxUserQuantity:I

    return v0
.end method

.method public getOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpDealOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mOptions:Ljava/util/List;

    return-object v0
.end method

.method public getPurchasedCount()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mPurchasedCount:I

    return v0
.end method

.method public getPurchases()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/DealPurchase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mPurchases:Ljava/util/List;

    return-object v0
.end method

.method public getRemainingCount()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mRemainingCount:I

    return v0
.end method

.method public getShareUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mShareUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemClockExpiration()J
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mSystemClockExpiration:J

    return-wide v0
.end method

.method public getTerms()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTerms:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeEnd()J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTimeEnd:J

    return-wide v0
.end method

.method public getTimeReference()J
    .locals 2

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTimeReference:J

    return-wide v0
.end method

.method public getTimeStart()J
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTimeStart:J

    return-wide v0
.end method

.method public getTimeUpdated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTimeUpdated:Ljava/util/Date;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTosUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTosUrl:Ljava/lang/String;

    return-object v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, -0x1

    .line 204
    const-string/jumbo v0, "time_updated"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    const-string/jumbo v0, "time_updated"

    invoke-static {p1, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTimeUpdated:Ljava/util/Date;

    .line 207
    :cond_0
    const-string/jumbo v0, "purchases"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 208
    const-string/jumbo v0, "purchases"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/DealPurchase;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mPurchases:Ljava/util/List;

    .line 212
    :goto_0
    const-string/jumbo v0, "description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 213
    const-string/jumbo v0, "description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/parcelgen/JsonUtil;->getStringList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mDescription:Ljava/util/List;

    .line 217
    :goto_1
    const-string/jumbo v0, "options"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 218
    const-string/jumbo v0, "options"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/YelpDealOption;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mOptions:Ljava/util/List;

    .line 222
    :goto_2
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 223
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mId:Ljava/lang/String;

    .line 225
    :cond_1
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 226
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTitle:Ljava/lang/String;

    .line 228
    :cond_2
    const-string/jumbo v0, "image_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 229
    const-string/jumbo v0, "image_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mImageUrl:Ljava/lang/String;

    .line 231
    :cond_3
    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 232
    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mLocation:Ljava/lang/String;

    .line 234
    :cond_4
    const-string/jumbo v0, "currency_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 235
    const-string/jumbo v0, "currency_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mCurrencyCode:Ljava/lang/String;

    .line 237
    :cond_5
    const-string/jumbo v0, "business_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 238
    const-string/jumbo v0, "business_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mBusinessName:Ljava/lang/String;

    .line 240
    :cond_6
    const-string/jumbo v0, "terms"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 241
    const-string/jumbo v0, "terms"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTerms:Ljava/lang/String;

    .line 243
    :cond_7
    const-string/jumbo v0, "tos_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 244
    const-string/jumbo v0, "tos_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTosUrl:Ljava/lang/String;

    .line 246
    :cond_8
    const-string/jumbo v0, "share_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 247
    const-string/jumbo v0, "share_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mShareUrl:Ljava/lang/String;

    .line 249
    :cond_9
    const-string/jumbo v0, "canonical_business_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 250
    const-string/jumbo v0, "canonical_business_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mCanonicalBusinessId:Ljava/lang/String;

    .line 252
    :cond_a
    const-string/jumbo v0, "max_user_quantity"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 253
    const-string/jumbo v0, "max_user_quantity"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mMaxUserQuantity:I

    .line 257
    :goto_3
    const-string/jumbo v0, "max_gift_quantity"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 258
    const-string/jumbo v0, "max_gift_quantity"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mMaxGiftQuantity:I

    .line 262
    :goto_4
    const-string/jumbo v0, "max_quantity"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 263
    const-string/jumbo v0, "max_quantity"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mMaxQuantity:I

    .line 267
    :goto_5
    const-string/jumbo v0, "purchased_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 268
    const-string/jumbo v0, "purchased_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mPurchasedCount:I

    .line 272
    :goto_6
    const-string/jumbo v0, "remaining_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 273
    const-string/jumbo v0, "remaining_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mRemainingCount:I

    .line 277
    :goto_7
    const-string/jumbo v0, "time_start"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 278
    const-string/jumbo v0, "time_start"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTimeStart:J

    .line 282
    :goto_8
    const-string/jumbo v0, "time_end"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 283
    const-string/jumbo v0, "time_end"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTimeEnd:J

    .line 287
    :goto_9
    const-string/jumbo v0, "time_reference"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 288
    const-string/jumbo v0, "time_reference"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTimeReference:J

    .line 292
    :goto_a
    return-void

    .line 210
    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mPurchases:Ljava/util/List;

    goto/16 :goto_0

    .line 215
    :cond_c
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mDescription:Ljava/util/List;

    goto/16 :goto_1

    .line 220
    :cond_d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mOptions:Ljava/util/List;

    goto/16 :goto_2

    .line 255
    :cond_e
    iput v2, p0, Lcom/yelp/android/serializable/_YelpDeal;->mMaxUserQuantity:I

    goto/16 :goto_3

    .line 260
    :cond_f
    iput v2, p0, Lcom/yelp/android/serializable/_YelpDeal;->mMaxGiftQuantity:I

    goto/16 :goto_4

    .line 265
    :cond_10
    iput v2, p0, Lcom/yelp/android/serializable/_YelpDeal;->mMaxQuantity:I

    goto :goto_5

    .line 270
    :cond_11
    iput v2, p0, Lcom/yelp/android/serializable/_YelpDeal;->mPurchasedCount:I

    goto :goto_6

    .line 275
    :cond_12
    iput v2, p0, Lcom/yelp/android/serializable/_YelpDeal;->mRemainingCount:I

    goto :goto_7

    .line 280
    :cond_13
    iput-wide v4, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTimeStart:J

    goto :goto_8

    .line 285
    :cond_14
    iput-wide v4, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTimeEnd:J

    goto :goto_9

    .line 290
    :cond_15
    iput-wide v4, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTimeReference:J

    goto :goto_a
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 176
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 177
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTimeUpdated:Ljava/util/Date;

    .line 179
    :cond_0
    sget-object v0, Lcom/yelp/android/serializable/DealPurchase;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mPurchases:Ljava/util/List;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mDescription:Ljava/util/List;

    .line 181
    sget-object v0, Lcom/yelp/android/serializable/YelpDealOption;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mOptions:Ljava/util/List;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mId:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTitle:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mImageUrl:Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mLocation:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mCurrencyCode:Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mBusinessName:Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTerms:Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTosUrl:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mShareUrl:Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mCanonicalBusinessId:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mMaxUserQuantity:I

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mMaxGiftQuantity:I

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mMaxQuantity:I

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mPurchasedCount:I

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mRemainingCount:I

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTimeStart:J

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTimeEnd:J

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTimeReference:J

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mSystemClockExpiration:J

    .line 201
    return-void
.end method

.method public writeJSON()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 295
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 296
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTimeUpdated:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 297
    const-string/jumbo v0, "time_updated"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTimeUpdated:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mPurchases:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 300
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 301
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mPurchases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/DealPurchase;

    .line 302
    invoke-virtual {v0}, Lcom/yelp/android/serializable/DealPurchase;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 304
    :cond_1
    const-string/jumbo v0, "purchases"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mDescription:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 307
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 308
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mDescription:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 309
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 311
    :cond_3
    const-string/jumbo v0, "description"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mOptions:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 314
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 315
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpDealOption;

    .line 316
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDealOption;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 318
    :cond_5
    const-string/jumbo v0, "options"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mId:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 321
    const-string/jumbo v0, "id"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpDeal;->mId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 324
    const-string/jumbo v0, "title"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 326
    :cond_8
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 327
    const-string/jumbo v0, "image_url"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpDeal;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    :cond_9
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mLocation:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 330
    const-string/jumbo v0, "location"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpDeal;->mLocation:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 332
    :cond_a
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mCurrencyCode:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 333
    const-string/jumbo v0, "currency_code"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpDeal;->mCurrencyCode:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 335
    :cond_b
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mBusinessName:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 336
    const-string/jumbo v0, "business_name"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpDeal;->mBusinessName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 338
    :cond_c
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTerms:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 339
    const-string/jumbo v0, "terms"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTerms:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 341
    :cond_d
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTosUrl:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 342
    const-string/jumbo v0, "tos_url"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTosUrl:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 344
    :cond_e
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mShareUrl:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 345
    const-string/jumbo v0, "share_url"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpDeal;->mShareUrl:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 347
    :cond_f
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mCanonicalBusinessId:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 348
    const-string/jumbo v0, "canonical_business_id"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpDeal;->mCanonicalBusinessId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 350
    :cond_10
    const-string/jumbo v0, "max_user_quantity"

    iget v2, p0, Lcom/yelp/android/serializable/_YelpDeal;->mMaxUserQuantity:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 351
    const-string/jumbo v0, "max_gift_quantity"

    iget v2, p0, Lcom/yelp/android/serializable/_YelpDeal;->mMaxGiftQuantity:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 352
    const-string/jumbo v0, "max_quantity"

    iget v2, p0, Lcom/yelp/android/serializable/_YelpDeal;->mMaxQuantity:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 353
    const-string/jumbo v0, "purchased_count"

    iget v2, p0, Lcom/yelp/android/serializable/_YelpDeal;->mPurchasedCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 354
    const-string/jumbo v0, "remaining_count"

    iget v2, p0, Lcom/yelp/android/serializable/_YelpDeal;->mRemainingCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 355
    const-string/jumbo v0, "time_start"

    iget-wide v2, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTimeStart:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 356
    const-string/jumbo v0, "time_end"

    iget-wide v2, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTimeEnd:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 357
    const-string/jumbo v0, "time_reference"

    iget-wide v2, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTimeReference:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 358
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTimeUpdated:Ljava/util/Date;

    if-nez v0, :cond_0

    const-wide/32 v0, -0x80000000

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 150
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mPurchases:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 151
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mDescription:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 152
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mOptions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 153
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mCurrencyCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mBusinessName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTerms:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTosUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mShareUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mCanonicalBusinessId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mMaxUserQuantity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mMaxGiftQuantity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mMaxQuantity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mPurchasedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mRemainingCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget-wide v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTimeStart:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 169
    iget-wide v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTimeEnd:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 170
    iget-wide v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTimeReference:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 171
    iget-wide v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mSystemClockExpiration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 172
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpDeal;->mTimeUpdated:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0
.end method
