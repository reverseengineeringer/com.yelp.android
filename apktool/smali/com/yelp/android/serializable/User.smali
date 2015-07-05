.class public Lcom/yelp/android/serializable/User;
.super Lcom/yelp/android/serializable/_User;
.source "User.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/yelp/android/serializable/DisplayableAsUserBadge;


# static fields
.field public static final CREATOR:Lcom/yelp/android/serializable/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/serializable/ah",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_USER:Ljava/lang/String; = "extra.user"


# instance fields
.field private mCheckIn:Lcom/yelp/android/serializable/YelpCheckIn;

.field private mDisabledFeatureSet:Lcom/yelp/android/serializable/FeatureSet;

.field private mGender:Lcom/yelp/android/serializable/User$Gender;

.field private mIsElite:Z

.field private mProfileBio:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRankTitles:[Lcom/yelp/android/serializable/RankTitle;

.field private transient mUserName:Ljava/lang/String;

.field private mYearsElite:[Lcom/yelp/android/serializable/User$EliteYear;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 561
    new-instance v0, Lcom/yelp/android/serializable/dk;

    invoke-direct {v0}, Lcom/yelp/android/serializable/dk;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/User;->CREATOR:Lcom/yelp/android/serializable/ah;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/yelp/android/serializable/_User;-><init>()V

    .line 216
    invoke-static {}, Lcom/yelp/android/serializable/RankTitle$Rank;->values()[Lcom/yelp/android/serializable/RankTitle$Rank;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/yelp/android/serializable/RankTitle;

    iput-object v0, p0, Lcom/yelp/android/serializable/User;->mRankTitles:[Lcom/yelp/android/serializable/RankTitle;

    .line 272
    const/4 v0, -0x1

    iput v0, p0, Lcom/yelp/android/serializable/User;->mFormat:I

    .line 273
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/User;->mProfileBio:Ljava/util/Map;

    .line 274
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/yelp/android/serializable/User$EliteYear;

    iput-object v0, p0, Lcom/yelp/android/serializable/User;->mYearsElite:[Lcom/yelp/android/serializable/User$EliteYear;

    .line 275
    new-instance v0, Lcom/yelp/android/serializable/FeatureSet;

    invoke-direct {v0}, Lcom/yelp/android/serializable/FeatureSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/User;->mDisabledFeatureSet:Lcom/yelp/android/serializable/FeatureSet;

    .line 276
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;)V
    .locals 3

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/yelp/android/serializable/User;-><init>()V

    .line 252
    iput-object p1, p0, Lcom/yelp/android/serializable/User;->mId:Ljava/lang/String;

    .line 253
    const-string/jumbo v0, ""

    invoke-static {p2, p3, v0}, Lcom/yelp/android/serializable/User;->formatName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/User;->mUserName:Ljava/lang/String;

    .line 254
    iput p5, p0, Lcom/yelp/android/serializable/User;->mFriendCount:I

    .line 255
    iput p6, p0, Lcom/yelp/android/serializable/User;->mReviewCount:I

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 258
    new-instance v1, Lcom/yelp/android/serializable/Photo$TempPhoto;

    const/4 v2, 0x0

    invoke-direct {v1, p7, v2}, Lcom/yelp/android/serializable/Photo$TempPhoto;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    iput-object v0, p0, Lcom/yelp/android/serializable/User;->mPhotos:Ljava/util/List;

    .line 261
    sget-object v0, Lcom/yelp/android/serializable/User$Gender;->MALE:Lcom/yelp/android/serializable/User$Gender;

    iput-object v0, p0, Lcom/yelp/android/serializable/User;->mGender:Lcom/yelp/android/serializable/User$Gender;

    .line 262
    const/4 v0, -0x1

    iput v0, p0, Lcom/yelp/android/serializable/User;->mFormat:I

    .line 263
    iput-object p2, p0, Lcom/yelp/android/serializable/User;->mFirstName:Ljava/lang/String;

    .line 264
    iput-object p3, p0, Lcom/yelp/android/serializable/User;->mLastName:Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->mLastName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->mLastName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/User;->mLastInitial:Ljava/lang/String;

    .line 268
    :cond_0
    iput-boolean p4, p0, Lcom/yelp/android/serializable/User;->mIsElite:Z

    .line 269
    return-void
.end method

.method public static formatName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 386
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    .line 389
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    :goto_0
    return-object p0

    :cond_1
    const-string/jumbo v0, "%s %s."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getCurrentUserInCollection(Ljava/util/List;)Lcom/yelp/android/serializable/DisplayableAsUserBadge;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/yelp/android/serializable/DisplayableAsUserBadge;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 726
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->b()Ljava/lang/String;

    move-result-object v2

    .line 727
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 735
    :goto_0
    return-object v0

    .line 730
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/DisplayableAsUserBadge;

    .line 731
    invoke-interface {v0}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 735
    goto :goto_0
.end method

.method public static getNameWithoutPeriod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 417
    const-string/jumbo v0, "%s\u00a0%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRankNameResource(Lcom/yelp/android/serializable/RankTitle$Rank;Ljava/lang/Boolean;)I
    .locals 2

    .prologue
    .line 509
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    sget-object v0, Lcom/yelp/android/serializable/dl;->a:[I

    invoke-virtual {p0}, Lcom/yelp/android/serializable/RankTitle$Rank;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 532
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 512
    :pswitch_0
    const v0, 0x7f070611

    goto :goto_1

    .line 514
    :pswitch_1
    const v0, 0x7f070613

    goto :goto_1

    .line 516
    :pswitch_2
    const v0, 0x7f070615

    goto :goto_1

    .line 521
    :cond_0
    sget-object v0, Lcom/yelp/android/serializable/dl;->a:[I

    invoke-virtual {p0}, Lcom/yelp/android/serializable/RankTitle$Rank;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 523
    :pswitch_3
    const v0, 0x7f070610

    goto :goto_1

    .line 525
    :pswitch_4
    const v0, 0x7f070612

    goto :goto_1

    .line 527
    :pswitch_5
    const v0, 0x7f070614

    goto :goto_1

    .line 510
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 521
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static jsonUsersToMap(Lorg/json/JSONArray;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 280
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 281
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 282
    sget-object v0, Lcom/yelp/android/serializable/User;->CREATOR:Lcom/yelp/android/serializable/ah;

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/yelp/android/serializable/ah;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    .line 283
    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 285
    :cond_0
    return-object v3
.end method


# virtual methods
.method public addComplimentCount(I)V
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lcom/yelp/android/serializable/User;->mComplimentCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/yelp/android/serializable/User;->mComplimentCount:I

    .line 327
    return-void
.end method

.method public addFriendCount(I)V
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/yelp/android/serializable/User;->mFriendCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/yelp/android/serializable/User;->mFriendCount:I

    .line 323
    return-void
.end method

.method public addPhotoCount(I)V
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lcom/yelp/android/serializable/User;->mLocalPhotoCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/yelp/android/serializable/User;->mLocalPhotoCount:I

    .line 303
    return-void
.end method

.method public addReviewCount(I)V
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/yelp/android/serializable/User;->mReviewCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/yelp/android/serializable/User;->mReviewCount:I

    .line 319
    return-void
.end method

.method public addVideoCount(I)V
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/yelp/android/serializable/User;->mVideoCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/yelp/android/serializable/User;->mVideoCount:I

    .line 315
    return-void
.end method

.method public clearCheckIn()V
    .locals 1

    .prologue
    .line 715
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/serializable/User;->mCheckIn:Lcom/yelp/android/serializable/YelpCheckIn;

    .line 716
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 694
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 545
    if-ne p0, p1, :cond_1

    .line 557
    :cond_0
    :goto_0
    return v0

    .line 547
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 548
    goto :goto_0

    .line 549
    :cond_2
    instance-of v2, p1, Lcom/yelp/android/serializable/User;

    if-nez v2, :cond_3

    move v0, v1

    .line 550
    goto :goto_0

    .line 551
    :cond_3
    check-cast p1, Lcom/yelp/android/serializable/User;

    .line 552
    iget-object v2, p0, Lcom/yelp/android/serializable/User;->mId:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 553
    iget-object v2, p1, Lcom/yelp/android/serializable/User;->mId:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 554
    goto :goto_0

    .line 555
    :cond_4
    iget-object v2, p0, Lcom/yelp/android/serializable/User;->mId:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/serializable/User;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 556
    goto :goto_0
.end method

.method public bridge synthetic getBadgeCount()I
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->getBadgeCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getBookmarkCount()I
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->getBookmarkCount()I

    move-result v0

    return v0
.end method

.method public getCheckIn()Lcom/yelp/android/serializable/YelpCheckIn;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->mCheckIn:Lcom/yelp/android/serializable/YelpCheckIn;

    return-object v0
.end method

.method public bridge synthetic getCheckInCount()I
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->getCheckInCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getCheckInOfferCount()I
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->getCheckInOfferCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getComplimentCount()I
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->getComplimentCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDealCount()I
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->getDealCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDisabledFeatures()Ljava/util/List;
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->getDisabledFeatures()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDraftCount()I
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->getDraftCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getEliteYears()[I
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->getEliteYears()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->getFirstName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFirstToReviewCount()I
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->getFirstToReviewCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getFirstToTipCount()I
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->getFirstToTipCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getFormat()I
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->getFormat()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getFriendCount()I
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->getFriendCount()I

    move-result v0

    return v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 428
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->mLastName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 429
    const-string/jumbo v0, "%s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yelp/android/serializable/User;->mFirstName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/yelp/android/serializable/User;->mLastName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 431
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/serializable/User;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getGender()Lcom/yelp/android/serializable/User$Gender;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->mGender:Lcom/yelp/android/serializable/User$Gender;

    return-object v0
.end method

.method public bridge synthetic getGenderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->getGenderString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHeadline()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->getHeadline()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLastInitial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->getLastInitial()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->getLastName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLocalPhotoCount()I
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->getLocalPhotoCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->getLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocationCount(Lcom/yelp/android/serializable/RankTitle$Rank;)I
    .locals 1

    .prologue
    .line 485
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/User;->getRankTitle(Lcom/yelp/android/serializable/RankTitle$Rank;)Lcom/yelp/android/serializable/RankTitle;

    move-result-object v0

    .line 486
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/yelp/android/serializable/RankTitle;->getLocationCount()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic getLoves()Ljava/util/List;
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->getLoves()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMediaCount()I
    .locals 2

    .prologue
    .line 331
    iget v0, p0, Lcom/yelp/android/serializable/User;->mLocalPhotoCount:I

    iget v1, p0, Lcom/yelp/android/serializable/User;->mVideoCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getMemberSince()Ljava/util/Date;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->mMemberSince:Ljava/util/Date;

    return-object v0
.end method

.method public getMostRecentEliteYear()Lcom/yelp/android/serializable/User$EliteYear;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->mYearsElite:[Lcom/yelp/android/serializable/User$EliteYear;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 455
    const/4 v0, 0x0

    .line 457
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->mYearsElite:[Lcom/yelp/android/serializable/User$EliteYear;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User$EliteYear;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 379
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->mUserName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->mFirstName:Ljava/lang/String;

    iget-object v1, p0, Lcom/yelp/android/serializable/User;->mLastName:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/serializable/User;->mLastInitial:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/serializable/User;->formatName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/User;->mUserName:Ljava/lang/String;

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getNameWithoutPeriod()Ljava/lang/String;
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->mFirstName:Ljava/lang/String;

    iget-object v1, p0, Lcom/yelp/android/serializable/User;->mLastInitial:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yelp/android/serializable/User;->getNameWithoutPeriod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->getNickname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoCount()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/yelp/android/serializable/User;->mLocalPhotoCount:I

    return v0
.end method

.method public bridge synthetic getPhotos()Ljava/util/List;
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->getPhotos()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProfileBio()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 446
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->mProfileBio:Ljava/util/Map;

    return-object v0
.end method

.method public getRankNameResource(Lcom/yelp/android/serializable/RankTitle$Rank;)I
    .locals 1

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/yelp/android/serializable/User;->isMale()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/serializable/RankTitle$Rank;->getRankNameResource(Ljava/lang/Boolean;)I

    move-result v0

    return v0
.end method

.method public getRankTitle(Lcom/yelp/android/serializable/RankTitle$Rank;)Lcom/yelp/android/serializable/RankTitle;
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->mRankTitles:[Lcom/yelp/android/serializable/RankTitle;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/RankTitle$Rank;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getRegularCount()I
    .locals 1

    .prologue
    .line 477
    sget-object v0, Lcom/yelp/android/serializable/RankTitle$Rank;->REGULAR:Lcom/yelp/android/serializable/RankTitle$Rank;

    invoke-virtual {p0, v0}, Lcom/yelp/android/serializable/User;->getLocationCount(Lcom/yelp/android/serializable/RankTitle$Rank;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getReviewCount()I
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->getReviewCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSubscribedEventsCount()I
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->getSubscribedEventsCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTipCount()I
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->getTipCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTipOfTheDayCount()I
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->getTipOfTheDayCount()I

    move-result v0

    return v0
.end method

.method public getTopRegularCount()I
    .locals 1

    .prologue
    .line 481
    sget-object v0, Lcom/yelp/android/serializable/RankTitle$Rank;->TOP_USER:Lcom/yelp/android/serializable/RankTitle$Rank;

    invoke-virtual {p0, v0}, Lcom/yelp/android/serializable/User;->getLocationCount(Lcom/yelp/android/serializable/RankTitle$Rank;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getUnreadMessageCount()I
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->getUnreadMessageCount()I

    move-result v0

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 706
    invoke-virtual {p0}, Lcom/yelp/android/serializable/User;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUserPhotoCount()I
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->getUserPhotoCount()I

    move-result v0

    return v0
.end method

.method public getUserPhotoUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->mPhotos:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/serializable/User;->mPhotos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->mPhotos:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    .line 293
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getVideoCount()I
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->getVideoCount()I

    move-result v0

    return v0
.end method

.method public getYearsElite()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/User$EliteYear;",
            ">;"
        }
    .end annotation

    .prologue
    .line 450
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->mYearsElite:[Lcom/yelp/android/serializable/User$EliteYear;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 537
    .line 539
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->mId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 540
    return v0

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isEliteUser()Z
    .locals 1

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/yelp/android/serializable/User;->mIsElite:Z

    return v0
.end method

.method public isFeatureDisabled(Lcom/yelp/android/serializable/FeatureSet$Feature;)Z
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->mDisabledFeatureSet:Lcom/yelp/android/serializable/FeatureSet;

    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/FeatureSet;->contains(Lcom/yelp/android/serializable/FeatureSet$Feature;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isFriend()Z
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->isFriend()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isFriendRequestPending()Z
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->isFriendRequestPending()Z

    move-result v0

    return v0
.end method

.method public isFullUser()Z
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lcom/yelp/android/serializable/User;->mFormat:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMale()Z
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->mGender:Lcom/yelp/android/serializable/User$Gender;

    sget-object v1, Lcom/yelp/android/serializable/User$Gender;->MALE:Lcom/yelp/android/serializable/User$Gender;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isSendingNotifications()Z
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->isSendingNotifications()Z

    move-result v0

    return v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 626
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_User;->readFromJson(Lorg/json/JSONObject;)V

    .line 628
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->mPhotos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    .line 629
    new-instance v3, Lcom/yelp/android/serializable/Passport;

    invoke-direct {v3}, Lcom/yelp/android/serializable/Passport;-><init>()V

    iput-object v3, v0, Lcom/yelp/android/serializable/Photo;->mUserPassport:Lcom/yelp/android/serializable/Passport;

    .line 630
    iget-object v0, v0, Lcom/yelp/android/serializable/Photo;->mUserPassport:Lcom/yelp/android/serializable/Passport;

    iget-object v3, p0, Lcom/yelp/android/serializable/User;->mId:Ljava/lang/String;

    iput-object v3, v0, Lcom/yelp/android/serializable/Passport;->mId:Ljava/lang/String;

    goto :goto_0

    .line 634
    :cond_0
    const-string/jumbo v0, "location_rank_titles"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 635
    if-eqz v2, :cond_3

    .line 636
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v0, v1

    .line 637
    :goto_1
    if-ge v0, v3, :cond_3

    .line 638
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 639
    if-eqz v4, :cond_1

    .line 640
    const-string/jumbo v5, "title"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/yelp/android/serializable/RankTitle$Rank;->rankForString(Ljava/lang/String;)Lcom/yelp/android/serializable/RankTitle$Rank;

    move-result-object v5

    .line 641
    if-nez v5, :cond_2

    .line 637
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 643
    :cond_2
    new-instance v6, Lcom/yelp/android/serializable/RankTitle;

    const-string/jumbo v7, "location_names"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/yelp/parcelgen/JsonUtil;->getStringList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v7

    const-string/jumbo v8, "location_count"

    invoke-virtual {v4, v8, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v6, v7, v4}, Lcom/yelp/android/serializable/RankTitle;-><init>(Ljava/util/List;I)V

    .line 646
    iget-object v4, p0, Lcom/yelp/android/serializable/User;->mRankTitles:[Lcom/yelp/android/serializable/RankTitle;

    invoke-virtual {v5}, Lcom/yelp/android/serializable/RankTitle$Rank;->ordinal()I

    move-result v5

    aput-object v6, v4, v5

    goto :goto_2

    .line 651
    :cond_3
    const-string/jumbo v0, "f"

    iget-object v2, p0, Lcom/yelp/android/serializable/User;->mGenderString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 652
    sget-object v0, Lcom/yelp/android/serializable/User$Gender;->FEMALE:Lcom/yelp/android/serializable/User$Gender;

    iput-object v0, p0, Lcom/yelp/android/serializable/User;->mGender:Lcom/yelp/android/serializable/User$Gender;

    .line 657
    :goto_3
    const-string/jumbo v0, "profile_bio"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 658
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/User;->mProfileBio:Ljava/util/Map;

    .line 659
    const-string/jumbo v0, "profile_bio"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 661
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 662
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 663
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 664
    iget-object v5, p0, Lcom/yelp/android/serializable/User;->mProfileBio:Ljava/util/Map;

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 654
    :cond_4
    sget-object v0, Lcom/yelp/android/serializable/User$Gender;->MALE:Lcom/yelp/android/serializable/User$Gender;

    iput-object v0, p0, Lcom/yelp/android/serializable/User;->mGender:Lcom/yelp/android/serializable/User$Gender;

    goto :goto_3

    .line 668
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->mLoves:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/yelp/android/serializable/User;->mLoves:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 669
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->mProfileBio:Ljava/util/Map;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    const v3, 0x7f0705e9

    invoke-virtual {v2, v3}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/serializable/User;->mLoves:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->mProfileBio:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 674
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->mProfileBio:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/User;->mProfileBio:Ljava/util/Map;

    .line 678
    :cond_7
    invoke-virtual {p0}, Lcom/yelp/android/serializable/User;->getEliteYears()[I

    move-result-object v2

    .line 679
    if-eqz v2, :cond_9

    .line 681
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    .line 683
    array-length v0, v2

    new-array v0, v0, [Lcom/yelp/android/serializable/User$EliteYear;

    iput-object v0, p0, Lcom/yelp/android/serializable/User;->mYearsElite:[Lcom/yelp/android/serializable/User$EliteYear;

    .line 684
    array-length v3, v2

    move v0, v1

    :goto_5
    if-ge v0, v3, :cond_8

    .line 685
    iget-object v1, p0, Lcom/yelp/android/serializable/User;->mYearsElite:[Lcom/yelp/android/serializable/User$EliteYear;

    new-instance v4, Lcom/yelp/android/serializable/User$EliteYear;

    aget v5, v2, v0

    add-int/lit8 v6, v0, 0x1

    invoke-static {v6}, Lcom/yelp/android/serializable/User$EliteYear$TYPE;->getBadgeByYear(I)Lcom/yelp/android/serializable/User$EliteYear$TYPE;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/yelp/android/serializable/User$EliteYear;-><init>(ILcom/yelp/android/serializable/User$EliteYear$TYPE;)V

    aput-object v4, v1, v0

    .line 684
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 687
    :cond_8
    invoke-virtual {p0}, Lcom/yelp/android/serializable/User;->getEliteYears()[I

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/services/r;->a([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/User;->mIsElite:Z

    .line 689
    :cond_9
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->mDisabledFeatureSet:Lcom/yelp/android/serializable/FeatureSet;

    iget-object v1, p0, Lcom/yelp/android/serializable/User;->mDisabledFeatures:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/FeatureSet;->setFeatures(Ljava/util/List;)V

    .line 690
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 600
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_User;->readFromParcel(Landroid/os/Parcel;)V

    .line 601
    sget-object v0, Lcom/yelp/android/serializable/RankTitle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/RankTitle;

    iput-object v0, p0, Lcom/yelp/android/serializable/User;->mRankTitles:[Lcom/yelp/android/serializable/RankTitle;

    .line 602
    invoke-static {}, Lcom/yelp/android/serializable/User$Gender;->values()[Lcom/yelp/android/serializable/User$Gender;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/yelp/android/serializable/User;->mGender:Lcom/yelp/android/serializable/User$Gender;

    .line 603
    const-class v0, Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    iput-object v0, p0, Lcom/yelp/android/serializable/User;->mCheckIn:Lcom/yelp/android/serializable/YelpCheckIn;

    .line 604
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 605
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 606
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 607
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 608
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/User;->mProfileBio:Ljava/util/Map;

    .line 609
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    .line 610
    iget-object v5, p0, Lcom/yelp/android/serializable/User;->mProfileBio:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 611
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/yelp/android/serializable/User;->mProfileBio:Ljava/util/Map;

    .line 613
    :cond_0
    iget-object v5, p0, Lcom/yelp/android/serializable/User;->mProfileBio:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 615
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->mProfileBio:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 616
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->mProfileBio:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/User;->mProfileBio:Ljava/util/Map;

    .line 618
    :cond_2
    sget-object v0, Lcom/yelp/android/serializable/User$EliteYear;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/User$EliteYear;

    iput-object v0, p0, Lcom/yelp/android/serializable/User;->mYearsElite:[Lcom/yelp/android/serializable/User$EliteYear;

    .line 619
    const-class v0, Lcom/yelp/android/serializable/FeatureSet;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeatureSet;

    iput-object v0, p0, Lcom/yelp/android/serializable/User;->mDisabledFeatureSet:Lcom/yelp/android/serializable/FeatureSet;

    .line 620
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 621
    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/User;->mIsElite:Z

    .line 622
    return-void
.end method

.method public setCheckIn(Lcom/yelp/android/serializable/YelpCheckIn;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lcom/yelp/android/serializable/User;->mCheckIn:Lcom/yelp/android/serializable/YelpCheckIn;

    .line 491
    if-eqz p1, :cond_0

    .line 492
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpCheckIn;->clearUser()V

    .line 494
    :cond_0
    return-void
.end method

.method public setDisabledFeatures(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 739
    iput-object p1, p0, Lcom/yelp/android/serializable/User;->mDisabledFeatures:Ljava/util/List;

    .line 740
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->mDisabledFeatureSet:Lcom/yelp/android/serializable/FeatureSet;

    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/FeatureSet;->setFeatures(Ljava/util/List;)V

    .line 741
    return-void
.end method

.method public setFriendRequestPending(Z)V
    .locals 0

    .prologue
    .line 361
    iput-boolean p1, p0, Lcom/yelp/android/serializable/User;->mIsFriendRequestPending:Z

    .line 362
    return-void
.end method

.method public setPhoto(Lcom/yelp/android/serializable/Photo;)V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->mPhotos:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/serializable/User;->mPhotos:Ljava/util/List;

    instance-of v0, v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 336
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/User;->mPhotos:Ljava/util/List;

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->mPhotos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 339
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->mPhotos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    return-void
.end method

.method public setSendingNotifications(Z)V
    .locals 0

    .prologue
    .line 349
    iput-boolean p1, p0, Lcom/yelp/android/serializable/User;->mIsSendingNotifications:Z

    .line 350
    return-void
.end method

.method public setUnreadMessageCount(I)V
    .locals 0

    .prologue
    .line 343
    iput p1, p0, Lcom/yelp/android/serializable/User;->mUnreadMessageCount:I

    .line 344
    return-void
.end method

.method public setUserPhotoCount(I)V
    .locals 0

    .prologue
    .line 306
    iput p1, p0, Lcom/yelp/android/serializable/User;->mUserPhotoCount:I

    .line 307
    return-void
.end method

.method public setUserReviewCount(I)V
    .locals 0

    .prologue
    .line 310
    iput p1, p0, Lcom/yelp/android/serializable/User;->mReviewCount:I

    .line 311
    return-void
.end method

.method public bridge synthetic writeJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 585
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_User;->writeToParcel(Landroid/os/Parcel;I)V

    .line 586
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->mRankTitles:[Lcom/yelp/android/serializable/RankTitle;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 587
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->mGender:Lcom/yelp/android/serializable/User$Gender;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User$Gender;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 588
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->mCheckIn:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 589
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yelp/android/serializable/User;->mProfileBio:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 590
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yelp/android/serializable/User;->mProfileBio:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 591
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 592
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 593
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->mYearsElite:[Lcom/yelp/android/serializable/User$EliteYear;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 594
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->mDisabledFeatureSet:Lcom/yelp/android/serializable/FeatureSet;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 595
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/yelp/android/serializable/User;->mIsElite:Z

    aput-boolean v1, v0, v3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 596
    return-void
.end method
