.class public Lcom/yelp/android/serializable/Tip;
.super Lcom/yelp/android/serializable/_Tip;
.source "Tip.java"

# interfaces
.implements Lcom/yelp/android/serializable/Complimentable;
.implements Lcom/yelp/android/serializable/ay;
.implements Lcom/yelp/android/serializable/m;


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/Tip;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEditedBitmap:Landroid/graphics/Bitmap;

.field private mFeedback:Lcom/yelp/android/serializable/Feedback;

.field protected mTempId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/yelp/android/serializable/dg;

    invoke-direct {v0}, Lcom/yelp/android/serializable/dg;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/Tip;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Tip;-><init>()V

    .line 66
    new-instance v0, Lcom/yelp/android/serializable/Feedback;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Feedback;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/Tip;->mFeedback:Lcom/yelp/android/serializable/Feedback;

    .line 67
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/yelp/android/serializable/Tip;->mTempId:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ILjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/yelp/android/serializable/Tip;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/yelp/android/serializable/Tip;->mId:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/yelp/android/serializable/Tip;->mUserName:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lcom/yelp/android/serializable/Tip;->mUserId:Ljava/lang/String;

    .line 83
    iput-object p4, p0, Lcom/yelp/android/serializable/Tip;->mUserPhotoUrl:Ljava/lang/String;

    .line 84
    iput-object p5, p0, Lcom/yelp/android/serializable/Tip;->mText:Ljava/lang/String;

    .line 85
    iput-object p6, p0, Lcom/yelp/android/serializable/Tip;->mTime:Ljava/util/Date;

    .line 86
    iput p7, p0, Lcom/yelp/android/serializable/Tip;->mPositiveFeedback:I

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/yelp/android/serializable/Tip;->mPrivateFeedback:Ljava/util/List;

    .line 88
    new-instance v0, Lcom/yelp/android/serializable/Feedback;

    iget-object v1, p0, Lcom/yelp/android/serializable/Tip;->mPrivateFeedback:Ljava/util/List;

    iget v2, p0, Lcom/yelp/android/serializable/Tip;->mPositiveFeedback:I

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/serializable/Feedback;-><init>(Ljava/util/List;I)V

    iput-object v0, p0, Lcom/yelp/android/serializable/Tip;->mFeedback:Lcom/yelp/android/serializable/Feedback;

    .line 89
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/yelp/android/serializable/_Tip;->describeContents()I

    move-result v0

    return v0
.end method

.method public equalsId(Lcom/yelp/android/serializable/ay;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 275
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/yelp/android/serializable/Tip;

    if-nez v0, :cond_1

    .line 282
    :cond_0
    :goto_0
    return v2

    .line 278
    :cond_1
    check-cast p1, Lcom/yelp/android/serializable/Tip;

    .line 279
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/yelp/android/serializable/Tip;->mId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 280
    :goto_1
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->getTempId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->getTempId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/serializable/Tip;->mTempId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v1

    .line 282
    :goto_2
    if-nez v0, :cond_2

    if-eqz v3, :cond_0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 279
    goto :goto_1

    :cond_4
    move v3, v2

    .line 280
    goto :goto_2
.end method

.method public bridge synthetic getBusinessId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/yelp/android/serializable/_Tip;->getBusinessId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBusinessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/yelp/android/serializable/_Tip;->getBusinessName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBusinessPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/yelp/android/serializable/_Tip;->getBusinessPhotoUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getComplimentCount()I
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/yelp/android/serializable/_Tip;->getComplimentCount()I

    move-result v0

    return v0
.end method

.method public getCountsText(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 100
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Tip;->getComplimentCount()I

    move-result v2

    .line 101
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Tip;->getFeedback()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->getPositiveFeedbackCount()I

    move-result v3

    .line 102
    const-string/jumbo v1, ""

    .line 103
    if-gtz v2, :cond_0

    if-lez v3, :cond_3

    .line 105
    :cond_0
    const/4 v0, 0x0

    .line 106
    if-lez v3, :cond_1

    .line 107
    const v1, 0x7f0e0043

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p1, v1, v3, v4}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 111
    :cond_1
    if-lez v2, :cond_5

    .line 112
    const v0, 0x7f0e0034

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v7

    invoke-static {p1, v0, v2, v1}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 116
    :goto_0
    if-lez v2, :cond_4

    if-lez v3, :cond_4

    .line 117
    const v0, 0x7f0e003b

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v7

    invoke-static {p1, v0, v3, v2}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 119
    const-string/jumbo v2, " \u25cf "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    aput-object v1, v3, v7

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 125
    :cond_2
    :goto_1
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 126
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 127
    check-cast v0, Landroid/text/SpannableStringBuilder;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, 0x12

    invoke-virtual {v0, v2, v7, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 130
    :cond_3
    return-object v1

    .line 122
    :cond_4
    if-ne v3, v6, :cond_2

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Tip;->getFeedback()Lcom/yelp/android/serializable/Feedback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Feedback;->isLikedByUser()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    const v0, 0x7f0706c5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_0
.end method

.method public getEditedBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yelp/android/serializable/Tip;->mEditedBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getFeedback()Lcom/yelp/android/serializable/Feedback;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/yelp/android/serializable/Tip;->mFeedback:Lcom/yelp/android/serializable/Feedback;

    return-object v0
.end method

.method public bridge synthetic getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/yelp/android/serializable/_Tip;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPhoto()Lcom/yelp/android/serializable/Photo;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/yelp/android/serializable/_Tip;->getPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPositiveFeedback()I
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/yelp/android/serializable/_Tip;->getPositiveFeedback()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPrivateFeedback()Ljava/util/List;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/yelp/android/serializable/_Tip;->getPrivateFeedback()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTempId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/yelp/android/serializable/Tip;->mTempId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/yelp/android/serializable/_Tip;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/yelp/android/serializable/_Tip;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTipOfTheDayDateFormat(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/yelp/android/serializable/Tip;->mTipOfTheDayTime:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 212
    const/4 v0, 0x0

    .line 217
    :goto_0
    return-object v0

    .line 214
    :cond_0
    if-eqz p2, :cond_1

    .line 215
    invoke-static {p1}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/Tip;->mTipOfTheDayTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 217
    :cond_1
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/Tip;->mTipOfTheDayTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getTipOfTheDayTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/yelp/android/serializable/_Tip;->getTipOfTheDayTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->QUICK_TIP:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/yelp/android/serializable/Tip;->mUserId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 204
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Tip;->mUserId:Ljava/lang/String;

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/Tip;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/yelp/android/serializable/Tip;->mUserName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 188
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    .line 189
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Tip;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Tip;->mUserName:Ljava/lang/String;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/Tip;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getUserPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/yelp/android/serializable/_Tip;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isFirstTip()Z
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/yelp/android/serializable/_Tip;->isFirstTip()Z

    move-result v0

    return v0
.end method

.method public isTipTemporary()Z
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/yelp/android/serializable/Tip;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public makeFirstToTip()V
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/Tip;->mIsFirstTip:Z

    .line 262
    return-void
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Tip;->readFromJson(Lorg/json/JSONObject;)V

    .line 177
    new-instance v0, Lcom/yelp/android/serializable/Feedback;

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Tip;->getPrivateFeedback()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Tip;->getPositiveFeedback()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/serializable/Feedback;-><init>(Ljava/util/List;I)V

    iput-object v0, p0, Lcom/yelp/android/serializable/Tip;->mFeedback:Lcom/yelp/android/serializable/Feedback;

    .line 178
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Tip;->readFromParcel(Landroid/os/Parcel;)V

    .line 161
    const-class v0, Lcom/yelp/android/serializable/Feedback;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Feedback;

    iput-object v0, p0, Lcom/yelp/android/serializable/Tip;->mFeedback:Lcom/yelp/android/serializable/Feedback;

    .line 162
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/yelp/android/serializable/Tip;->mEditedBitmap:Landroid/graphics/Bitmap;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Tip;->mTempId:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setBusinessId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/yelp/android/serializable/Tip;->mBusinessId:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setBusinessName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/yelp/android/serializable/Tip;->mBusinessName:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setDateModified(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/yelp/android/serializable/Tip;->mTime:Ljava/util/Date;

    .line 140
    return-void
.end method

.method public setEditedBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/yelp/android/serializable/Tip;->mEditedBitmap:Landroid/graphics/Bitmap;

    .line 38
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/yelp/android/serializable/Tip;->mId:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setPhoto(Lcom/yelp/android/serializable/Photo;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/yelp/android/serializable/Tip;->mPhoto:Lcom/yelp/android/serializable/Photo;

    .line 148
    return-void
.end method

.method public setTempId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/yelp/android/serializable/Tip;->mTempId:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/yelp/android/serializable/Tip;->mText:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setUser(Lcom/yelp/android/serializable/User;)V
    .locals 1

    .prologue
    .line 222
    if-nez p1, :cond_0

    .line 228
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getUserName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Tip;->mUserName:Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Tip;->mUserPhotoUrl:Ljava/lang/String;

    .line 227
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Tip;->mUserId:Ljava/lang/String;

    goto :goto_0
.end method

.method public bridge synthetic writeJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/yelp/android/serializable/_Tip;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 168
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_Tip;->writeToParcel(Landroid/os/Parcel;I)V

    .line 169
    iget-object v0, p0, Lcom/yelp/android/serializable/Tip;->mFeedback:Lcom/yelp/android/serializable/Feedback;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 170
    iget-object v0, p0, Lcom/yelp/android/serializable/Tip;->mEditedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 171
    iget-object v0, p0, Lcom/yelp/android/serializable/Tip;->mTempId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    return-void
.end method
