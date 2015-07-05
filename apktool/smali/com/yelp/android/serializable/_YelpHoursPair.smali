.class abstract Lcom/yelp/android/serializable/_YelpHoursPair;
.super Ljava/lang/Object;
.source "_YelpHoursPair.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mClose:I

.field protected mOpen:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method protected constructor <init>(II)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/yelp/android/serializable/_YelpHoursPair;-><init>()V

    .line 17
    iput p1, p0, Lcom/yelp/android/serializable/_YelpHoursPair;->mOpen:I

    .line 18
    iput p2, p0, Lcom/yelp/android/serializable/_YelpHoursPair;->mClose:I

    .line 19
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public getClose()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/yelp/android/serializable/_YelpHoursPair;->mClose:I

    return v0
.end method

.method public getOpen()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/yelp/android/serializable/_YelpHoursPair;->mOpen:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpHoursPair;->mOpen:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpHoursPair;->mClose:I

    .line 45
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/yelp/android/serializable/_YelpHoursPair;->mOpen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget v0, p0, Lcom/yelp/android/serializable/_YelpHoursPair;->mClose:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    return-void
.end method
