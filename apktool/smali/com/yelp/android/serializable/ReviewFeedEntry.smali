.class public Lcom/yelp/android/serializable/ReviewFeedEntry;
.super Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;
.source "ReviewFeedEntry.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yelp/android/serializable/ReviewFeedEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXTRA_FEEDBACK:Ljava/lang/String; = "extra.feedback"

.field private static final EXTRA_RATING:Ljava/lang/String; = "extra.the_review_rating"

.field private static final EXTRA_TEXT:Ljava/lang/String; = "extra.the_review_text"

.field private static final EXTRA_USER_FEEDBACK:Ljava/lang/String; = "extra.user_feedback"


# instance fields
.field private final mReview:Lcom/yelp/android/serializable/YelpBusinessReview;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 211
    new-instance v0, Lcom/yelp/android/serializable/cr;

    invoke-direct {v0}, Lcom/yelp/android/serializable/cr;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/ReviewFeedEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;-><init>(Landroid/os/Parcel;)V

    .line 51
    const-class v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    iput-object v0, p0, Lcom/yelp/android/serializable/ReviewFeedEntry;->mReview:Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/YelpBusinessReview;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/yelp/android/serializable/ReviewFeedEntry;->mReview:Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;-><init>(Lorg/json/JSONObject;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 41
    sget-object v0, Lcom/yelp/android/serializable/YelpBusinessReview;->CREATOR:Lcom/yelp/android/serializable/ah;

    const-string/jumbo v1, "review"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/ah;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    iput-object v0, p0, Lcom/yelp/android/serializable/ReviewFeedEntry;->mReview:Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 42
    return-void
.end method

.method public static getFeedBundle(Lcom/yelp/android/serializable/ReviewBroadcast;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 70
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 71
    const-string/jumbo v1, "extra.the_review_rating"

    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReviewBroadcast;->getRating()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    const-string/jumbo v1, "extra.the_review_text"

    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReviewBroadcast;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-object v0
.end method

.method public static getFeedUpdate(Lcom/yelp/android/serializable/YelpBusinessReview;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 58
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    const-string/jumbo v1, "extra.the_review_rating"

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getRating()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    const-string/jumbo v1, "extra.the_review_text"

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string/jumbo v1, "extra.user_feedback"

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getUserFeedback()Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 62
    const-string/jumbo v1, "extra.feedback"

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getFeedback()Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 63
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public getActivitySubtitle(Landroid/content/Context;)Landroid/text/Spanned;
    .locals 5

    .prologue
    .line 122
    const v0, 0x7f070506

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "<b>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReviewFeedEntry;->getBusinessName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "</b>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public getBusinessIriParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    invoke-super {p0}, Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;->getBusinessIriParams()Ljava/util/Map;

    move-result-object v0

    .line 79
    invoke-virtual {p0, v0}, Lcom/yelp/android/serializable/ReviewFeedEntry;->setupIriParams(Ljava/util/Map;)Ljava/util/Map;

    .line 80
    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/yelp/android/serializable/ReviewFeedEntry;->mReview:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getDateModified()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getEventIriItemType()Lcom/yelp/android/serializable/FeedEntry$ItemType;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/yelp/android/serializable/FeedEntry$ItemType;->Review:Lcom/yelp/android/serializable/FeedEntry$ItemType;

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    .prologue
    .line 108
    const v0, 0x7f0203aa

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/yelp/android/serializable/ReviewFeedEntry;->mReview:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInfoProvider()Lcom/yelp/android/serializable/YelpBusinessReview;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/yelp/android/serializable/ReviewFeedEntry;->mReview:Lcom/yelp/android/serializable/YelpBusinessReview;

    return-object v0
.end method

.method public bridge synthetic getInfoProvider()Lcom/yelp/android/serializable/m;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReviewFeedEntry;->getInfoProvider()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    return-object v0
.end method

.method public getInfoString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/yelp/android/serializable/ReviewFeedEntry;->mReview:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntentForClick(Landroid/content/Context;)Landroid/content/Intent;
    .locals 6

    .prologue
    .line 197
    iget-object v0, p0, Lcom/yelp/android/serializable/ReviewFeedEntry;->mReview:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->arePhotosPopulated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReviewFeedEntry;->getBusinessId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReviewFeedEntry;->getBusinessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReviewFeedEntry;->getBusinessCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReviewFeedEntry;->getInfoProvider()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v0

    .line 201
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReviewFeedEntry;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReviewFeedEntry;->getBusinessId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReviewFeedEntry;->getBusinessName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhotoCount()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/yelp/android/serializable/ReviewFeedEntry;->mReview:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getPhotos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhotoURL(Lcom/yelp/android/ui/activities/feed/FeedType;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedType;->FRIEND:Lcom/yelp/android/ui/activities/feed/FeedType;

    if-ne p1, v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/yelp/android/serializable/ReviewFeedEntry;->mReview:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;->getPhotoURL(Lcom/yelp/android/ui/activities/feed/FeedType;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRating()F
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/yelp/android/serializable/ReviewFeedEntry;->mReview:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getRating()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getReview()Lcom/yelp/android/serializable/YelpBusinessReview;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/yelp/android/serializable/ReviewFeedEntry;->mReview:Lcom/yelp/android/serializable/YelpBusinessReview;

    return-object v0
.end method

.method public getReviewCount()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, -0x1

    return v0
.end method

.method public getSubTitle(Landroid/content/Context;Lcom/yelp/android/ui/activities/feed/FeedType;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 113
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedType;->ME:Lcom/yelp/android/ui/activities/feed/FeedType;

    if-ne p2, v0, :cond_0

    .line 114
    const v0, 0x7f0703c1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f07050c

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yelp/android/serializable/ReviewFeedEntry;->mReview:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusinessReview;->getUserName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUserIriParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 86
    const-string/jumbo v1, "user_id"

    iget-object v2, p0, Lcom/yelp/android/serializable/ReviewFeedEntry;->mReview:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusinessReview;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-virtual {p0, v0}, Lcom/yelp/android/serializable/ReviewFeedEntry;->setupIriParams(Ljava/util/Map;)Ljava/util/Map;

    .line 88
    return-object v0
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public updateContent(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/yelp/android/serializable/ReviewFeedEntry;->mReview:Lcom/yelp/android/serializable/YelpBusinessReview;

    const-string/jumbo v1, "extra.the_review_rating"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;->mRating:I

    .line 168
    iget-object v0, p0, Lcom/yelp/android/serializable/ReviewFeedEntry;->mReview:Lcom/yelp/android/serializable/YelpBusinessReview;

    const-string/jumbo v1, "extra.the_review_text"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;->mText:Ljava/lang/String;

    .line 169
    const-string/jumbo v0, "extra.user_feedback"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const-string/jumbo v0, "extra.user_feedback"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;

    .line 171
    const-string/jumbo v1, "extra.feedback"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    .line 172
    iget-object v2, p0, Lcom/yelp/android/serializable/ReviewFeedEntry;->mReview:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v2, v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->setUserFeedback(Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;)V

    .line 173
    iget-object v0, p0, Lcom/yelp/android/serializable/ReviewFeedEntry;->mReview:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/YelpBusinessReview;->setFeedback(Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;)V

    .line 175
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 184
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;->writeToParcel(Landroid/os/Parcel;I)V

    .line 185
    iget-object v0, p0, Lcom/yelp/android/serializable/ReviewFeedEntry;->mReview:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 186
    return-void
.end method
