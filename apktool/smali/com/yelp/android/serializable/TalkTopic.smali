.class public Lcom/yelp/android/serializable/TalkTopic;
.super Lcom/yelp/android/serializable/_TalkTopic;
.source "TalkTopic.java"


# static fields
.field public static final CREATOR:Lcom/yelp/android/serializable/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/serializable/ah",
            "<",
            "Lcom/yelp/android/serializable/TalkTopic;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsUserElite:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/yelp/android/serializable/df;

    invoke-direct {v0}, Lcom/yelp/android/serializable/df;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/TalkTopic;->CREATOR:Lcom/yelp/android/serializable/ah;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/yelp/android/serializable/_TalkTopic;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/TalkTopic;->mIsUserElite:Z

    return-void
.end method

.method public static fromEvent(Lcom/yelp/android/serializable/Event;)Lcom/yelp/android/serializable/TalkTopic;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/yelp/android/serializable/TalkTopic;

    invoke-direct {v0}, Lcom/yelp/android/serializable/TalkTopic;-><init>()V

    .line 56
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getCategoryName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/TalkTopic;->mCategoryName:Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getTalkTopicId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/TalkTopic;->mId:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getDescription()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/TalkTopic;->mText:Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/TalkTopic;->mTitle:Ljava/lang/String;

    .line 60
    return-object v0
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_TalkTopic;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getCategoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_TalkTopic;->getCategoryName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_TalkTopic;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReplyCount()I
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_TalkTopic;->getReplyCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_TalkTopic;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTimeCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_TalkTopic;->getTimeCreated()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTimeModified()Ljava/util/Date;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_TalkTopic;->getTimeModified()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_TalkTopic;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUserEliteYears()[I
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_TalkTopic;->getUserEliteYears()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUserFriendCount()I
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_TalkTopic;->getUserFriendCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_TalkTopic;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserMediaCount()I
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/yelp/android/serializable/TalkTopic;->getUserVideoCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/TalkTopic;->getUserPhotoCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_TalkTopic;->getUserName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUserPhotoCount()I
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_TalkTopic;->getUserPhotoCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getUserPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_TalkTopic;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUserReviewCount()I
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_TalkTopic;->getUserReviewCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getUserVideoCount()I
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_TalkTopic;->getUserVideoCount()I

    move-result v0

    return v0
.end method

.method public isUserElite()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/yelp/android/serializable/TalkTopic;->mIsUserElite:Z

    return v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_TalkTopic;->readFromJson(Lorg/json/JSONObject;)V

    .line 31
    invoke-virtual {p0}, Lcom/yelp/android/serializable/TalkTopic;->getUserEliteYears()[I

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/services/r;->a([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/TalkTopic;->mIsUserElite:Z

    .line 32
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_TalkTopic;->readFromParcel(Landroid/os/Parcel;)V

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 25
    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/TalkTopic;->mIsUserElite:Z

    .line 26
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/TalkTopic;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/TalkTopic;->mCategoryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/TalkTopic;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 17
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_TalkTopic;->writeToParcel(Landroid/os/Parcel;I)V

    .line 18
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/yelp/android/serializable/TalkTopic;->mIsUserElite:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 19
    return-void
.end method
