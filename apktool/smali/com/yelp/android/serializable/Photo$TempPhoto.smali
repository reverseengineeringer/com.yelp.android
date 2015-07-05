.class public Lcom/yelp/android/serializable/Photo$TempPhoto;
.super Lcom/yelp/android/serializable/Photo;
.source "Photo.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 227
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/serializable/Photo$TempPhoto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/yelp/android/serializable/Photo;-><init>()V

    .line 232
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/yelp/android/serializable/Photo$TempPhoto;->mId:Ljava/lang/String;

    .line 233
    iput-object p3, p0, Lcom/yelp/android/serializable/Photo$TempPhoto;->mTempId:Ljava/lang/String;

    .line 235
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Photo$TempPhoto;->mPrivateFeedback:Ljava/util/List;

    .line 236
    iput-object p2, p0, Lcom/yelp/android/serializable/Photo$TempPhoto;->mCaption:Ljava/lang/String;

    .line 237
    iput-object p1, p0, Lcom/yelp/android/serializable/Photo$TempPhoto;->mOverrideUrl:Ljava/lang/String;

    .line 238
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 225
    invoke-super {p0}, Lcom/yelp/android/serializable/Photo;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getBusinessId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    invoke-super {p0}, Lcom/yelp/android/serializable/Photo;->getBusinessId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCaption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    invoke-super {p0}, Lcom/yelp/android/serializable/Photo;->getCaption()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFeedbackPositiveCount()I
    .locals 1

    .prologue
    .line 225
    invoke-super {p0}, Lcom/yelp/android/serializable/Photo;->getFeedbackPositiveCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    invoke-super {p0}, Lcom/yelp/android/serializable/Photo;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIndex()I
    .locals 1

    .prologue
    .line 225
    invoke-super {p0}, Lcom/yelp/android/serializable/Photo;->getIndex()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPrivateFeedback()Ljava/util/List;
    .locals 1

    .prologue
    .line 225
    invoke-super {p0}, Lcom/yelp/android/serializable/Photo;->getPrivateFeedback()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTimeCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 225
    invoke-super {p0}, Lcom/yelp/android/serializable/Photo;->getTimeCreated()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUrlPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    invoke-super {p0}, Lcom/yelp/android/serializable/Photo;->getUrlPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUrlSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    invoke-super {p0}, Lcom/yelp/android/serializable/Photo;->getUrlSuffix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUserPassport()Lcom/yelp/android/serializable/Passport;
    .locals 1

    .prologue
    .line 225
    invoke-super {p0}, Lcom/yelp/android/serializable/Photo;->getUserPassport()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 225
    invoke-super {p0}, Lcom/yelp/android/serializable/Photo;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
