.class public Lcom/yelp/android/serializable/UserReviewsViewModel;
.super Lcom/yelp/android/serializable/_UserReviewsViewModel;
.source "UserReviewsViewModel.java"

# interfaces
.implements Lcom/yelp/android/bx/c;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yelp/android/serializable/UserReviewsViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/yelp/android/serializable/UserReviewsViewModel$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/UserReviewsViewModel$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/UserReviewsViewModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/yelp/android/serializable/_UserReviewsViewModel;-><init>()V

    .line 18
    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/serializable/UserReviewsViewModel$1;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/yelp/android/serializable/UserReviewsViewModel;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/yelp/android/serializable/User;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;",
            "Lcom/yelp/android/serializable/User;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/yelp/android/serializable/_UserReviewsViewModel;-><init>(Ljava/util/List;Lcom/yelp/android/serializable/User;ZI)V

    .line 22
    return-void
.end method

.method public static b(Landroid/os/Bundle;)Lcom/yelp/android/serializable/UserReviewsViewModel;
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "UserReviewsViewModel"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/UserReviewsViewModel;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 35
    const-string/jumbo v0, "UserReviewsViewModel"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 36
    return-void
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_UserReviewsViewModel;->a(Landroid/os/Parcel;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/yelp/android/serializable/UserReviewsViewModel;->c:Z

    .line 26
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/yelp/android/serializable/UserReviewsViewModel;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic b()I
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_UserReviewsViewModel;->b()I

    move-result v0

    return v0
.end method

.method public bridge synthetic c()Z
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_UserReviewsViewModel;->c()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic d()Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_UserReviewsViewModel;->d()Lcom/yelp/android/serializable/User;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_UserReviewsViewModel;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic e()Ljava/util/List;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_UserReviewsViewModel;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_UserReviewsViewModel;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_UserReviewsViewModel;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_UserReviewsViewModel;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
