.class public final Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;
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
    name = "ReviewFeedback"
.end annotation


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
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 391
    new-instance v0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(III)V
    .locals 0

    .prologue
    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    iput p1, p0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->a:I

    .line 341
    iput p2, p0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->b:I

    .line 342
    iput p3, p0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->c:I

    .line 343
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 358
    iput p1, p0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->a:I

    .line 359
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->b:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 362
    iput p1, p0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->b:I

    .line 363
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 354
    iget v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->c:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 366
    iput p1, p0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->c:I

    .line 367
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->c:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->b:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x0

    return v0
.end method

.method public e()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 384
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 385
    const-string/jumbo v1, "funny"

    iget v2, p0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 386
    const-string/jumbo v1, "useful"

    iget v2, p0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 387
    const-string/jumbo v1, "cool"

    iget v2, p0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 388
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 380
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->a:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->b:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->c:I

    aput v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 381
    return-void
.end method
