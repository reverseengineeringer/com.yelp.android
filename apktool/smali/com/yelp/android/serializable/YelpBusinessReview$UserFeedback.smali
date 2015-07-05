.class public final Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;
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
            "Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mVotedCool:Z

.field private mVotedFunny:Z

.field private mVotedUseful:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 389
    new-instance v0, Lcom/yelp/android/serializable/ec;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ec;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    iput-boolean p1, p0, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->mVotedUseful:Z

    .line 365
    iput-boolean p2, p0, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->mVotedFunny:Z

    .line 366
    iput-boolean p3, p0, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->mVotedCool:Z

    .line 367
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method public isVotedCool()Z
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->mVotedCool:Z

    return v0
.end method

.method public isVotedFunny()Z
    .locals 1

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->mVotedFunny:Z

    return v0
.end method

.method public isVotedUseful()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->mVotedUseful:Z

    return v0
.end method

.method public setVotedCool(Z)V
    .locals 0

    .prologue
    .line 360
    iput-boolean p1, p0, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->mVotedCool:Z

    .line 361
    return-void
.end method

.method public setVotedFunny(Z)V
    .locals 0

    .prologue
    .line 352
    iput-boolean p1, p0, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->mVotedFunny:Z

    .line 353
    return-void
.end method

.method public setVotedUseful(Z)V
    .locals 0

    .prologue
    .line 344
    iput-boolean p1, p0, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->mVotedUseful:Z

    .line 345
    return-void
.end method

.method public writeJSON()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 382
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 383
    const-string/jumbo v1, "funny"

    iget-boolean v2, p0, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->mVotedFunny:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 384
    const-string/jumbo v1, "useful"

    iget-boolean v2, p0, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->mVotedUseful:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 385
    const-string/jumbo v1, "cool"

    iget-boolean v2, p0, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->mVotedCool:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 386
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 376
    const/4 v0, 0x3

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->mVotedUseful:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->mVotedFunny:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->mVotedCool:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 379
    return-void
.end method
