.class public final Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;
.super Ljava/lang/Object;
.source "YelpBusinessReview.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/YelpBusinessReview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserFeedback"
.end annotation


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
.field private a:Z

.field private b:Z

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 464
    new-instance v0, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 0

    .prologue
    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    iput-boolean p1, p0, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->a:Z

    .line 442
    iput-boolean p2, p0, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->b:Z

    .line 443
    iput-boolean p3, p0, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->c:Z

    .line 444
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 421
    iput-boolean p1, p0, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->a:Z

    .line 422
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->a:Z

    return v0
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 429
    iput-boolean p1, p0, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->b:Z

    .line 430
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 425
    iget-boolean v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->b:Z

    return v0
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 437
    iput-boolean p1, p0, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->c:Z

    .line 438
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 433
    iget-boolean v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->c:Z

    return v0
.end method

.method public d()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 457
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 458
    const-string/jumbo v1, "funny"

    iget-boolean v2, p0, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->b:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 459
    const-string/jumbo v1, "useful"

    iget-boolean v2, p0, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->a:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 460
    const-string/jumbo v1, "cool"

    iget-boolean v2, p0, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->c:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 461
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 448
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 453
    const/4 v0, 0x3

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->a:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->b:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->c:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 454
    return-void
.end method
