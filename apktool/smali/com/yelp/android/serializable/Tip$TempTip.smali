.class public Lcom/yelp/android/serializable/Tip$TempTip;
.super Lcom/yelp/android/serializable/Tip;
.source "Tip.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/yelp/android/serializable/Tip;-><init>()V

    .line 293
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/yelp/android/serializable/Tip$TempTip;->mId:Ljava/lang/String;

    .line 294
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Tip$TempTip;->mTempId:Ljava/lang/String;

    .line 295
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/yelp/android/serializable/Tip$TempTip;->mText:Ljava/lang/String;

    .line 296
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/Tip$TempTip;->mTime:Ljava/util/Date;

    .line 297
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 290
    invoke-super {p0}, Lcom/yelp/android/serializable/Tip;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getBusinessId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    invoke-super {p0}, Lcom/yelp/android/serializable/Tip;->getBusinessId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBusinessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    invoke-super {p0}, Lcom/yelp/android/serializable/Tip;->getBusinessName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBusinessPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    invoke-super {p0}, Lcom/yelp/android/serializable/Tip;->getBusinessPhotoUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getComplimentCount()I
    .locals 1

    .prologue
    .line 290
    invoke-super {p0}, Lcom/yelp/android/serializable/Tip;->getComplimentCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    invoke-super {p0}, Lcom/yelp/android/serializable/Tip;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPhoto()Lcom/yelp/android/serializable/Photo;
    .locals 1

    .prologue
    .line 290
    invoke-super {p0}, Lcom/yelp/android/serializable/Tip;->getPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPositiveFeedback()I
    .locals 1

    .prologue
    .line 290
    invoke-super {p0}, Lcom/yelp/android/serializable/Tip;->getPositiveFeedback()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPrivateFeedback()Ljava/util/List;
    .locals 1

    .prologue
    .line 290
    invoke-super {p0}, Lcom/yelp/android/serializable/Tip;->getPrivateFeedback()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    invoke-super {p0}, Lcom/yelp/android/serializable/Tip;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 290
    invoke-super {p0}, Lcom/yelp/android/serializable/Tip;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTipOfTheDayTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 290
    invoke-super {p0}, Lcom/yelp/android/serializable/Tip;->getTipOfTheDayTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUserPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    invoke-super {p0}, Lcom/yelp/android/serializable/Tip;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isFirstTip()Z
    .locals 1

    .prologue
    .line 290
    invoke-super {p0}, Lcom/yelp/android/serializable/Tip;->isFirstTip()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic writeJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 290
    invoke-super {p0}, Lcom/yelp/android/serializable/Tip;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
