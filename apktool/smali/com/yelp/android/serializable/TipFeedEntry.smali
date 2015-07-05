.class public Lcom/yelp/android/serializable/TipFeedEntry;
.super Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;
.source "TipFeedEntry.java"


# static fields
.field public static CONTENT_KEY:Ljava/lang/String;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yelp/android/serializable/TipFeedEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static PHOTO_KEY:Ljava/lang/String;


# instance fields
.field private mIsMine:Ljava/lang/Boolean;

.field protected mTip:Lcom/yelp/android/serializable/Tip;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "qt_content"

    sput-object v0, Lcom/yelp/android/serializable/TipFeedEntry;->CONTENT_KEY:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "qt_photo"

    sput-object v0, Lcom/yelp/android/serializable/TipFeedEntry;->PHOTO_KEY:Ljava/lang/String;

    .line 173
    new-instance v0, Lcom/yelp/android/serializable/dh;

    invoke-direct {v0}, Lcom/yelp/android/serializable/dh;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/TipFeedEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;-><init>(Landroid/os/Parcel;)V

    .line 38
    const-class v0, Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Tip;

    iput-object v0, p0, Lcom/yelp/android/serializable/TipFeedEntry;->mTip:Lcom/yelp/android/serializable/Tip;

    .line 39
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/yelp/android/serializable/TipFeedEntry;->mIsMine:Ljava/lang/Boolean;

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/Tip;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/Tip;",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/yelp/android/serializable/TipFeedEntry;->mTip:Lcom/yelp/android/serializable/Tip;

    .line 45
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
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;-><init>(Lorg/json/JSONObject;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 33
    sget-object v0, Lcom/yelp/android/serializable/Tip;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "quicktip"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Tip;

    iput-object v0, p0, Lcom/yelp/android/serializable/TipFeedEntry;->mTip:Lcom/yelp/android/serializable/Tip;

    .line 34
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public getActivitySubtitle(Landroid/content/Context;)Landroid/text/Spanned;
    .locals 5

    .prologue
    .line 73
    const v0, 0x7f0705fd

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "<b>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/yelp/android/serializable/TipFeedEntry;->getBusinessName()Ljava/lang/String;

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

.method public getContentPhoto()Lcom/yelp/android/serializable/Photo;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/yelp/android/serializable/TipFeedEntry;->mTip:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->getPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/yelp/android/serializable/TipFeedEntry;->mTip:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getEditedBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/yelp/android/serializable/TipFeedEntry;->mTip:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->getEditedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getEventIriItemType()Lcom/yelp/android/serializable/FeedEntry$ItemType;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/yelp/android/serializable/FeedEntry$ItemType;->QuickTip:Lcom/yelp/android/serializable/FeedEntry$ItemType;

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    .prologue
    .line 59
    const v0, 0x7f0203e2

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/yelp/android/serializable/TipFeedEntry;->mTip:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInfoProvider()Lcom/yelp/android/serializable/m;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/serializable/TipFeedEntry;->mTip:Lcom/yelp/android/serializable/Tip;

    return-object v0
.end method

.method public getInfoString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/yelp/android/serializable/TipFeedEntry;->mTip:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntentForClick(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/yelp/android/serializable/TipFeedEntry;->mTip:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {p0}, Lcom/yelp/android/serializable/TipFeedEntry;->getBusinessName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Tip;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoURL(Lcom/yelp/android/ui/activities/feed/FeedType;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedType;->FRIEND:Lcom/yelp/android/ui/activities/feed/FeedType;

    if-ne p1, v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/yelp/android/serializable/TipFeedEntry;->mTip:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
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
    .line 79
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public getReviewCount()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, -0x1

    return v0
.end method

.method public getSubTitle(Landroid/content/Context;Lcom/yelp/android/ui/activities/feed/FeedType;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 64
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedType;->ME:Lcom/yelp/android/ui/activities/feed/FeedType;

    if-ne p2, v0, :cond_0

    .line 65
    const v0, 0x7f0703c6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0705f6

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yelp/android/serializable/TipFeedEntry;->mTip:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Tip;->getUserName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTextMaxLineCount()I
    .locals 1

    .prologue
    .line 94
    const v0, 0x7fffffff

    return v0
.end method

.method public getTip()Lcom/yelp/android/serializable/Tip;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yelp/android/serializable/TipFeedEntry;->mTip:Lcom/yelp/android/serializable/Tip;

    return-object v0
.end method

.method protected getUserIdForTip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/yelp/android/serializable/TipFeedEntry;->mTip:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFromLoggedInUser()Z
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/yelp/android/serializable/TipFeedEntry;->mIsMine:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/yelp/android/serializable/TipFeedEntry;->getUserIdForTip()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/dc;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/TipFeedEntry;->mIsMine:Ljava/lang/Boolean;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/TipFeedEntry;->mIsMine:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public updateContent(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 118
    iget-object v1, p0, Lcom/yelp/android/serializable/TipFeedEntry;->mTip:Lcom/yelp/android/serializable/Tip;

    sget-object v0, Lcom/yelp/android/serializable/TipFeedEntry;->CONTENT_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/yelp/android/serializable/Tip;->mText:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;->writeToParcel(Landroid/os/Parcel;I)V

    .line 129
    iget-object v0, p0, Lcom/yelp/android/serializable/TipFeedEntry;->mTip:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcom/yelp/android/serializable/TipFeedEntry;->mIsMine:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 131
    return-void
.end method
