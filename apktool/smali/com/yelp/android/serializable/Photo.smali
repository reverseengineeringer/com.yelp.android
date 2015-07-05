.class public Lcom/yelp/android/serializable/Photo;
.super Lcom/yelp/android/serializable/_Photo;
.source "Photo.java"

# interfaces
.implements Lcom/yelp/android/serializable/Complimentable;
.implements Lcom/yelp/android/serializable/IdentifiableMedia;


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/Photo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFeedback:Lcom/yelp/android/serializable/Feedback;

.field protected mOverrideUrl:Ljava/lang/String;

.field protected mTempId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 203
    new-instance v0, Lcom/yelp/android/serializable/bt;

    invoke-direct {v0}, Lcom/yelp/android/serializable/bt;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/Photo;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Photo;-><init>()V

    .line 29
    new-instance v0, Lcom/yelp/android/serializable/Feedback;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Feedback;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/Photo;->mFeedback:Lcom/yelp/android/serializable/Feedback;

    .line 30
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/yelp/android/serializable/Photo;->mTempId:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 34
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    move-object v0, p0

    move-object v3, v1

    move-object v4, p1

    move-object v5, p3

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    move v10, v9

    invoke-direct/range {v0 .. v10}, Lcom/yelp/android/serializable/_Photo;-><init>(Ljava/util/Date;Ljava/util/List;Lcom/yelp/android/serializable/Passport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 35
    iput-object p2, p0, Lcom/yelp/android/serializable/Photo;->mOverrideUrl:Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/yelp/android/serializable/Feedback;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Feedback;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/Photo;->mFeedback:Lcom/yelp/android/serializable/Feedback;

    .line 37
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/yelp/android/serializable/Photo;->mTempId:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/yelp/android/serializable/_Photo;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 171
    if-ne p0, p1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v0

    .line 173
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 174
    goto :goto_0

    .line 175
    :cond_2
    instance-of v2, p1, Lcom/yelp/android/serializable/Photo;

    if-nez v2, :cond_3

    move v0, v1

    .line 176
    goto :goto_0

    .line 177
    :cond_3
    check-cast p1, Lcom/yelp/android/serializable/Photo;

    .line 178
    iget-object v2, p0, Lcom/yelp/android/serializable/Photo;->mId:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 179
    iget-object v2, p1, Lcom/yelp/android/serializable/Photo;->mId:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 180
    goto :goto_0

    .line 181
    :cond_4
    iget-object v2, p0, Lcom/yelp/android/serializable/Photo;->mId:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/serializable/Photo;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 182
    goto :goto_0
.end method

.method public equalsId(Lcom/yelp/android/serializable/ay;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 188
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/yelp/android/serializable/Photo;

    if-nez v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v2

    .line 191
    :cond_1
    check-cast p1, Lcom/yelp/android/serializable/Photo;

    .line 192
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Photo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Photo;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/yelp/android/serializable/Photo;->mId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 193
    :goto_1
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Photo;->getTempId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Photo;->getTempId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/serializable/Photo;->mTempId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v1

    .line 195
    :goto_2
    if-nez v0, :cond_2

    if-eqz v3, :cond_0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 192
    goto :goto_1

    :cond_4
    move v3, v2

    .line 193
    goto :goto_2
.end method

.method public bridge synthetic getBusinessId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/yelp/android/serializable/_Photo;->getBusinessId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCaption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/yelp/android/serializable/_Photo;->getCaption()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomUrl(Lcom/yelp/android/ui/util/PhotoConfig$Size;Lcom/yelp/android/ui/util/PhotoConfig$Aspect;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/yelp/android/serializable/Photo;->mOverrideUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/yelp/android/serializable/Photo;->mOverrideUrl:Ljava/lang/String;

    .line 138
    :goto_0
    return-object v0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/Photo;->mUrlPrefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/serializable/Photo;->mUrlSuffix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    const-string/jumbo v0, ""

    goto :goto_0

    .line 131
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 132
    iget-object v1, p0, Lcom/yelp/android/serializable/Photo;->mUrlPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/yelp/android/ui/util/PhotoConfig$Size;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/yelp/android/ui/util/PhotoConfig$Aspect;->shape:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-object v1, p0, Lcom/yelp/android/serializable/Photo;->mUrlSuffix:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 136
    iget-object v1, p0, Lcom/yelp/android/serializable/Photo;->mUrlSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFeedback()Lcom/yelp/android/serializable/Feedback;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/serializable/Photo;->mFeedback:Lcom/yelp/android/serializable/Feedback;

    return-object v0
.end method

.method public bridge synthetic getFeedbackPositiveCount()I
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/yelp/android/serializable/_Photo;->getFeedbackPositiveCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/yelp/android/serializable/_Photo;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIndex()I
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/yelp/android/serializable/_Photo;->getIndex()I

    move-result v0

    return v0
.end method

.method public getLargeSquareUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    sget-object v0, Lcom/yelp/android/ui/util/PhotoConfig$Size;->Large:Lcom/yelp/android/ui/util/PhotoConfig$Size;

    sget-object v1, Lcom/yelp/android/ui/util/PhotoConfig$Aspect;->Square:Lcom/yelp/android/ui/util/PhotoConfig$Aspect;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/serializable/Photo;->getCustomUrl(Lcom/yelp/android/ui/util/PhotoConfig$Size;Lcom/yelp/android/ui/util/PhotoConfig$Aspect;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLargeUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    sget-object v0, Lcom/yelp/android/ui/util/PhotoConfig$Size;->Large:Lcom/yelp/android/ui/util/PhotoConfig$Size;

    sget-object v1, Lcom/yelp/android/ui/util/PhotoConfig$Aspect;->Normal:Lcom/yelp/android/ui/util/PhotoConfig$Aspect;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/serializable/Photo;->getCustomUrl(Lcom/yelp/android/ui/util/PhotoConfig$Size;Lcom/yelp/android/ui/util/PhotoConfig$Aspect;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLargestUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lcom/yelp/android/ui/util/PhotoConfig$Size;->Original:Lcom/yelp/android/ui/util/PhotoConfig$Size;

    sget-object v1, Lcom/yelp/android/ui/util/PhotoConfig$Aspect;->Normal:Lcom/yelp/android/ui/util/PhotoConfig$Aspect;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/serializable/Photo;->getCustomUrl(Lcom/yelp/android/ui/util/PhotoConfig$Size;Lcom/yelp/android/ui/util/PhotoConfig$Aspect;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPrivateFeedback()Ljava/util/List;
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/yelp/android/serializable/_Photo;->getPrivateFeedback()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSmallUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    sget-object v0, Lcom/yelp/android/ui/util/PhotoConfig$Size;->Small:Lcom/yelp/android/ui/util/PhotoConfig$Size;

    sget-object v1, Lcom/yelp/android/ui/util/PhotoConfig$Aspect;->Normal:Lcom/yelp/android/ui/util/PhotoConfig$Aspect;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/serializable/Photo;->getCustomUrl(Lcom/yelp/android/ui/util/PhotoConfig$Size;Lcom/yelp/android/ui/util/PhotoConfig$Aspect;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTempId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/yelp/android/serializable/Photo;->mTempId:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    sget-object v0, Lcom/yelp/android/ui/util/PhotoConfig$Size;->Medium:Lcom/yelp/android/ui/util/PhotoConfig$Size;

    sget-object v1, Lcom/yelp/android/ui/util/PhotoConfig$Aspect;->Square:Lcom/yelp/android/ui/util/PhotoConfig$Aspect;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/serializable/Photo;->getCustomUrl(Lcom/yelp/android/ui/util/PhotoConfig$Size;Lcom/yelp/android/ui/util/PhotoConfig$Aspect;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTimeCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/yelp/android/serializable/_Photo;->getTimeCreated()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Photo;->getBusinessId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->BIZ_PHOTO:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->USER_PHOTO:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    goto :goto_0
.end method

.method public bridge synthetic getUrlPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/yelp/android/serializable/_Photo;->getUrlPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUrlSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/yelp/android/serializable/_Photo;->getUrlSuffix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yelp/android/serializable/Photo;->mUserPassport:Lcom/yelp/android/serializable/Passport;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/yelp/android/serializable/Photo;->mUserPassport:Lcom/yelp/android/serializable/Passport;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->getId()Ljava/lang/String;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getUserPassport()Lcom/yelp/android/serializable/Passport;
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/yelp/android/serializable/_Photo;->getUserPassport()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 163
    .line 165
    iget-object v0, p0, Lcom/yelp/android/serializable/Photo;->mId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 166
    return v0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/Photo;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isMediaType(Lcom/yelp/android/serializable/Media$MediaType;)Z
    .locals 1

    .prologue
    .line 200
    sget-object v0, Lcom/yelp/android/serializable/Media$MediaType;->PHOTO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Media$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Photo;->readFromJson(Lorg/json/JSONObject;)V

    .line 58
    new-instance v0, Lcom/yelp/android/serializable/Feedback;

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Photo;->getPrivateFeedback()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/yelp/android/serializable/Photo;->mFeedbackPositiveCount:I

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/serializable/Feedback;-><init>(Ljava/util/List;I)V

    iput-object v0, p0, Lcom/yelp/android/serializable/Photo;->mFeedback:Lcom/yelp/android/serializable/Feedback;

    .line 59
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Photo;->readFromParcel(Landroid/os/Parcel;)V

    .line 64
    const-class v0, Lcom/yelp/android/serializable/Feedback;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Feedback;

    iput-object v0, p0, Lcom/yelp/android/serializable/Photo;->mFeedback:Lcom/yelp/android/serializable/Feedback;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Photo;->mOverrideUrl:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Photo;->mTempId:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setCaption(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/yelp/android/serializable/Photo;->mCaption:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setFeedback(Lcom/yelp/android/serializable/Feedback;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/yelp/android/serializable/Photo;->mFeedback:Lcom/yelp/android/serializable/Feedback;

    .line 53
    return-void
.end method

.method public setTempId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/yelp/android/serializable/Photo;->mTempId:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public bridge synthetic writeJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/yelp/android/serializable/_Photo;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_Photo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 72
    iget-object v0, p0, Lcom/yelp/android/serializable/Photo;->mFeedback:Lcom/yelp/android/serializable/Feedback;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 73
    iget-object v0, p0, Lcom/yelp/android/serializable/Photo;->mOverrideUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/yelp/android/serializable/Photo;->mTempId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    return-void
.end method
