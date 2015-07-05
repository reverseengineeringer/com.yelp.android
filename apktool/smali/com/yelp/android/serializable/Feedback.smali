.class public Lcom/yelp/android/serializable/Feedback;
.super Lcom/yelp/android/serializable/_Feedback;
.source "Feedback.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/Feedback;",
            ">;"
        }
    .end annotation
.end field

.field public static final NONE_FEEDBACK:Ljava/lang/String; = "NONE"

.field public static final POSITIVE_FEEDBACK:Ljava/lang/String; = "POSITIVE"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/yelp/android/serializable/ar;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ar;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/Feedback;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/serializable/_Feedback;-><init>(Ljava/util/List;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/serializable/_Feedback;-><init>(Ljava/util/List;I)V

    .line 23
    return-void
.end method


# virtual methods
.method public addPositiveFeedback()V
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/yelp/android/serializable/Feedback;->mPositiveFeedbackCount:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/serializable/Feedback;->setFeedbackPositiveCount(I)V

    .line 37
    return-void
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_Feedback;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getFeedbackByUser()Ljava/util/List;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_Feedback;->getFeedbackByUser()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPositiveFeedbackCount()I
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_Feedback;->getPositiveFeedbackCount()I

    move-result v0

    return v0
.end method

.method public isLikedByUser()Z
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/serializable/Feedback;->mFeedbackByUser:Ljava/util/List;

    const-string/jumbo v1, "POSITIVE"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Feedback;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public removePositiveFeedback()V
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/yelp/android/serializable/Feedback;->mPositiveFeedbackCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/serializable/Feedback;->setFeedbackPositiveCount(I)V

    .line 41
    return-void
.end method

.method public setFeedbackPositiveCount(I)V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/Feedback;->mFeedbackByUser:Ljava/util/List;

    .line 27
    iget v0, p0, Lcom/yelp/android/serializable/Feedback;->mPositiveFeedbackCount:I

    if-ge v0, p1, :cond_0

    .line 28
    iget-object v0, p0, Lcom/yelp/android/serializable/Feedback;->mFeedbackByUser:Ljava/util/List;

    const-string/jumbo v1, "POSITIVE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    :goto_0
    iput p1, p0, Lcom/yelp/android/serializable/Feedback;->mPositiveFeedbackCount:I

    .line 33
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/Feedback;->mFeedbackByUser:Ljava/util/List;

    const-string/jumbo v1, "NONE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_Feedback;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
