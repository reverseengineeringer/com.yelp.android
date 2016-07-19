.class abstract Lcom/yelp/android/serializable/_UserReviewsViewModel;
.super Ljava/lang/Object;
.source "_UserReviewsViewModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Lcom/yelp/android/serializable/User;

.field protected c:Z

.field protected d:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method protected constructor <init>(Ljava/util/List;Lcom/yelp/android/serializable/User;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;",
            "Lcom/yelp/android/serializable/User;",
            "ZI)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yelp/android/serializable/_UserReviewsViewModel;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/yelp/android/serializable/_UserReviewsViewModel;->a:Ljava/util/List;

    .line 24
    iput-object p2, p0, Lcom/yelp/android/serializable/_UserReviewsViewModel;->b:Lcom/yelp/android/serializable/User;

    .line 25
    iput-boolean p3, p0, Lcom/yelp/android/serializable/_UserReviewsViewModel;->c:Z

    .line 26
    iput p4, p0, Lcom/yelp/android/serializable/_UserReviewsViewModel;->d:I

    .line 27
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 95
    const-class v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_UserReviewsViewModel;->a:Ljava/util/List;

    .line 96
    const-class v0, Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/serializable/_UserReviewsViewModel;->b:Lcom/yelp/android/serializable/User;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 98
    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_UserReviewsViewModel;->c:Z

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_UserReviewsViewModel;->d:I

    .line 100
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/yelp/android/serializable/_UserReviewsViewModel;->d:I

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_UserReviewsViewModel;->c:Z

    return v0
.end method

.method public d()Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/serializable/_UserReviewsViewModel;->b:Lcom/yelp/android/serializable/User;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yelp/android/serializable/_UserReviewsViewModel;->a:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 35
    if-nez p1, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v0

    .line 39
    :cond_1
    if-ne p1, p0, :cond_2

    .line 40
    const/4 v0, 0x1

    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 47
    check-cast p1, Lcom/yelp/android/serializable/_UserReviewsViewModel;

    .line 49
    new-instance v0, Lcom/yelp/android/dc/b;

    invoke-direct {v0}, Lcom/yelp/android/dc/b;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/serializable/_UserReviewsViewModel;->a:Ljava/util/List;

    iget-object v2, p1, Lcom/yelp/android/serializable/_UserReviewsViewModel;->a:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_UserReviewsViewModel;->b:Lcom/yelp/android/serializable/User;

    iget-object v2, p1, Lcom/yelp/android/serializable/_UserReviewsViewModel;->b:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_UserReviewsViewModel;->c:Z

    iget-boolean v2, p1, Lcom/yelp/android/serializable/_UserReviewsViewModel;->c:Z

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(ZZ)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/_UserReviewsViewModel;->d:I

    iget v2, p1, Lcom/yelp/android/serializable/_UserReviewsViewModel;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(II)Lcom/yelp/android/dc/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/b;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lcom/yelp/android/dc/c;

    invoke-direct {v0}, Lcom/yelp/android/dc/c;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/serializable/_UserReviewsViewModel;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_UserReviewsViewModel;->b:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_UserReviewsViewModel;->c:Z

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Z)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/_UserReviewsViewModel;->d:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(I)Lcom/yelp/android/dc/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/c;->a()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    iget-object v0, p0, Lcom/yelp/android/serializable/_UserReviewsViewModel;->a:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 89
    iget-object v0, p0, Lcom/yelp/android/serializable/_UserReviewsViewModel;->b:Lcom/yelp/android/serializable/User;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 90
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_UserReviewsViewModel;->c:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 91
    iget v0, p0, Lcom/yelp/android/serializable/_UserReviewsViewModel;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    return-void
.end method
