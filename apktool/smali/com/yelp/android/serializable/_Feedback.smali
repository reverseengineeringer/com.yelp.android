.class abstract Lcom/yelp/android/serializable/_Feedback;
.super Ljava/lang/Object;
.source "_Feedback.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mFeedbackByUser:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mPositiveFeedbackCount:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method protected constructor <init>(Ljava/util/List;I)V
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
    .line 17
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Feedback;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/yelp/android/serializable/_Feedback;->mFeedbackByUser:Ljava/util/List;

    .line 19
    iput p2, p0, Lcom/yelp/android/serializable/_Feedback;->mPositiveFeedbackCount:I

    .line 20
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public getFeedbackByUser()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yelp/android/serializable/_Feedback;->mFeedbackByUser:Ljava/util/List;

    return-object v0
.end method

.method public getPositiveFeedbackCount()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/yelp/android/serializable/_Feedback;->mPositiveFeedbackCount:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Feedback;->mFeedbackByUser:Ljava/util/List;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Feedback;->mPositiveFeedbackCount:I

    .line 46
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yelp/android/serializable/_Feedback;->mFeedbackByUser:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 40
    iget v0, p0, Lcom/yelp/android/serializable/_Feedback;->mPositiveFeedbackCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    return-void
.end method
