.class public Lcom/yelp/android/serializable/Compliment;
.super Lcom/yelp/android/serializable/_Compliment;
.source "Compliment.java"

# interfaces
.implements Lcom/yelp/android/serializable/DisplayableAsUserBadge;


# static fields
.field public static final CREATOR:Lcom/yelp/android/serializable/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/serializable/ah",
            "<",
            "Lcom/yelp/android/serializable/Compliment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mItemType:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

.field private mState:Lcom/yelp/android/serializable/Compliment$ComplimentState;

.field private mType:Lcom/yelp/android/serializable/Compliment$ComplimentType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 240
    new-instance v0, Lcom/yelp/android/serializable/aa;

    invoke-direct {v0}, Lcom/yelp/android/serializable/aa;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/Compliment;->CREATOR:Lcom/yelp/android/serializable/ah;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Compliment;-><init>()V

    .line 164
    sget-object v0, Lcom/yelp/android/serializable/Compliment$ComplimentState;->ELIGIBLE:Lcom/yelp/android/serializable/Compliment$ComplimentState;

    iput-object v0, p0, Lcom/yelp/android/serializable/Compliment;->mState:Lcom/yelp/android/serializable/Compliment$ComplimentState;

    .line 165
    sget-object v0, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->UNKNOWN:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    iput-object v0, p0, Lcom/yelp/android/serializable/Compliment;->mItemType:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    .line 166
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/serializable/Compliment$ComplimentType;Lcom/yelp/android/serializable/Complimentable;Lcom/yelp/android/serializable/User;)V
    .locals 1

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Compliment;-><init>()V

    .line 180
    iput-object p1, p0, Lcom/yelp/android/serializable/Compliment;->mMessage:Ljava/lang/String;

    .line 181
    iput-object p2, p0, Lcom/yelp/android/serializable/Compliment;->mType:Lcom/yelp/android/serializable/Compliment$ComplimentType;

    .line 182
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/Compliment;->mDateModified:Ljava/util/Date;

    .line 183
    iput-object p4, p0, Lcom/yelp/android/serializable/Compliment;->mSender:Lcom/yelp/android/serializable/User;

    .line 184
    if-eqz p3, :cond_0

    .line 185
    invoke-interface {p3}, Lcom/yelp/android/serializable/Complimentable;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Compliment;->mComplimentableId:Ljava/lang/String;

    .line 186
    invoke-interface {p3}, Lcom/yelp/android/serializable/Complimentable;->getType()Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Compliment;->mItemType:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    .line 188
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/serializable/Compliment;)V
    .locals 9

    .prologue
    .line 169
    invoke-virtual {p2}, Lcom/yelp/android/serializable/Compliment;->getDateModified()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Compliment;->getPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v2

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Compliment;->getMessage()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p2, Lcom/yelp/android/serializable/Compliment;->mBusinessName:Ljava/lang/String;

    iget-object v6, p2, Lcom/yelp/android/serializable/Compliment;->mBusinessId:Ljava/lang/String;

    iget-object v7, p2, Lcom/yelp/android/serializable/Compliment;->mComplimentableId:Ljava/lang/String;

    iget-object v8, p2, Lcom/yelp/android/serializable/Compliment;->mSender:Lcom/yelp/android/serializable/User;

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v8}, Lcom/yelp/android/serializable/_Compliment;-><init>(Ljava/util/Date;Lcom/yelp/android/serializable/Photo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/User;)V

    .line 172
    iget-object v0, p2, Lcom/yelp/android/serializable/Compliment;->mItemType:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    iput-object v0, p0, Lcom/yelp/android/serializable/Compliment;->mItemType:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    .line 173
    iget-object v0, p2, Lcom/yelp/android/serializable/Compliment;->mType:Lcom/yelp/android/serializable/Compliment$ComplimentType;

    iput-object v0, p0, Lcom/yelp/android/serializable/Compliment;->mType:Lcom/yelp/android/serializable/Compliment$ComplimentType;

    .line 174
    iget-object v0, p2, Lcom/yelp/android/serializable/Compliment;->mState:Lcom/yelp/android/serializable/Compliment$ComplimentState;

    iput-object v0, p0, Lcom/yelp/android/serializable/Compliment;->mState:Lcom/yelp/android/serializable/Compliment$ComplimentState;

    .line 175
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_Compliment;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 272
    if-ne p0, p1, :cond_1

    .line 284
    :cond_0
    :goto_0
    return v0

    .line 274
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 275
    goto :goto_0

    .line 276
    :cond_2
    instance-of v2, p1, Lcom/yelp/android/serializable/Compliment;

    if-nez v2, :cond_3

    move v0, v1

    .line 277
    goto :goto_0

    .line 278
    :cond_3
    check-cast p1, Lcom/yelp/android/serializable/Compliment;

    .line 279
    iget-object v2, p0, Lcom/yelp/android/serializable/Compliment;->mId:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 280
    iget-object v2, p1, Lcom/yelp/android/serializable/Compliment;->mId:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 281
    goto :goto_0

    .line 282
    :cond_4
    iget-object v2, p0, Lcom/yelp/android/serializable/Compliment;->mId:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/serializable/Compliment;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 283
    goto :goto_0
.end method

.method public bridge synthetic getBusinessId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_Compliment;->getBusinessId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBusinessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_Compliment;->getBusinessName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getComplimentableId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_Compliment;->getComplimentableId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDateModified()Ljava/util/Date;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_Compliment;->getDateModified()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getFriendCount()I
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/yelp/android/serializable/Compliment;->mSender:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getFriendCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_Compliment;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem()Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/yelp/android/serializable/Compliment;->mItemType:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    return-object v0
.end method

.method public getMediaCount()I
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/yelp/android/serializable/Compliment;->mSender:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getMediaCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_Compliment;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPhoto()Lcom/yelp/android/serializable/Photo;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_Compliment;->getPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoCount()I
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/yelp/android/serializable/Compliment;->mSender:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getLocalPhotoCount()I

    move-result v0

    return v0
.end method

.method public getReviewCount()I
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/yelp/android/serializable/Compliment;->mSender:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getReviewCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSender()Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_Compliment;->getSender()Lcom/yelp/android/serializable/User;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/yelp/android/serializable/Compliment$ComplimentState;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/yelp/android/serializable/Compliment;->mState:Lcom/yelp/android/serializable/Compliment$ComplimentState;

    return-object v0
.end method

.method public getType()Lcom/yelp/android/serializable/Compliment$ComplimentType;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/yelp/android/serializable/Compliment;->mType:Lcom/yelp/android/serializable/Compliment$ComplimentType;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/yelp/android/serializable/Compliment;->mSender:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Compliment;->getSender()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/yelp/android/serializable/Compliment;->mSender:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoCount()I
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/yelp/android/serializable/Compliment;->mSender:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getVideoCount()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 264
    .line 266
    iget-object v0, p0, Lcom/yelp/android/serializable/Compliment;->mId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 267
    return v0

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/Compliment;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isEliteUser()Z
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/yelp/android/serializable/Compliment;->mSender:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->isEliteUser()Z

    move-result v0

    return v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 208
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Compliment;->readFromJson(Lorg/json/JSONObject;)V

    .line 210
    :try_start_0
    const-string/jumbo v0, "complimentable_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Compliment;->mItemType:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    :try_start_1
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/Compliment$ComplimentType;->valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/Compliment$ComplimentType;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Compliment;->mType:Lcom/yelp/android/serializable/Compliment$ComplimentType;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 222
    :goto_1
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 214
    sget-object v0, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->UNKNOWN:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    iput-object v0, p0, Lcom/yelp/android/serializable/Compliment;->mItemType:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    goto :goto_0

    .line 219
    :catch_1
    move-exception v0

    .line 220
    sget-object v0, Lcom/yelp/android/serializable/Compliment$ComplimentType;->UNKNOWN:Lcom/yelp/android/serializable/Compliment$ComplimentType;

    iput-object v0, p0, Lcom/yelp/android/serializable/Compliment;->mType:Lcom/yelp/android/serializable/Compliment$ComplimentType;

    goto :goto_1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 234
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Compliment;->readFromParcel(Landroid/os/Parcel;)V

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    iput-object v0, p0, Lcom/yelp/android/serializable/Compliment;->mItemType:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Compliment$ComplimentState;

    iput-object v0, p0, Lcom/yelp/android/serializable/Compliment;->mState:Lcom/yelp/android/serializable/Compliment$ComplimentState;

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Compliment$ComplimentType;

    iput-object v0, p0, Lcom/yelp/android/serializable/Compliment;->mType:Lcom/yelp/android/serializable/Compliment$ComplimentType;

    .line 238
    return-void
.end method

.method public setState(Lcom/yelp/android/serializable/Compliment$ComplimentState;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/yelp/android/serializable/Compliment;->mState:Lcom/yelp/android/serializable/Compliment$ComplimentState;

    .line 204
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 226
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_Compliment;->writeToParcel(Landroid/os/Parcel;I)V

    .line 227
    iget-object v0, p0, Lcom/yelp/android/serializable/Compliment;->mItemType:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 228
    iget-object v0, p0, Lcom/yelp/android/serializable/Compliment;->mState:Lcom/yelp/android/serializable/Compliment$ComplimentState;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 229
    iget-object v0, p0, Lcom/yelp/android/serializable/Compliment;->mType:Lcom/yelp/android/serializable/Compliment$ComplimentType;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 230
    return-void
.end method
