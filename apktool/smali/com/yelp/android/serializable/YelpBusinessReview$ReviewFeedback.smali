.class public final Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;
.super Ljava/lang/Object;
.source "YelpBusinessReview.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCoolVotes:I

.field private mFunnyVotes:I

.field private mUsefulVotes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 315
    new-instance v0, Lcom/yelp/android/serializable/eb;

    invoke-direct {v0}, Lcom/yelp/android/serializable/eb;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(III)V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput p1, p0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->mUsefulVotes:I

    .line 261
    iput p2, p0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->mFunnyVotes:I

    .line 262
    iput p3, p0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->mCoolVotes:I

    .line 263
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method public getCoolVotes()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->mCoolVotes:I

    return v0
.end method

.method public getFunnyVotes()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->mFunnyVotes:I

    return v0
.end method

.method public getUsefulVotes()I
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->mUsefulVotes:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->mCoolVotes:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->mFunnyVotes:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->mUsefulVotes:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCoolVotes(I)V
    .locals 0

    .prologue
    .line 286
    iput p1, p0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->mCoolVotes:I

    .line 287
    return-void
.end method

.method public setFunnyVotes(I)V
    .locals 0

    .prologue
    .line 282
    iput p1, p0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->mFunnyVotes:I

    .line 283
    return-void
.end method

.method public setUsefulVotes(I)V
    .locals 0

    .prologue
    .line 278
    iput p1, p0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->mUsefulVotes:I

    .line 279
    return-void
.end method

.method public writeJSON()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 308
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 309
    const-string/jumbo v1, "funny"

    iget v2, p0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->mFunnyVotes:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 310
    const-string/jumbo v1, "useful"

    iget v2, p0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->mUsefulVotes:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 311
    const-string/jumbo v1, "cool"

    iget v2, p0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->mCoolVotes:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 312
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 302
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->mUsefulVotes:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->mFunnyVotes:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->mCoolVotes:I

    aput v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 305
    return-void
.end method
