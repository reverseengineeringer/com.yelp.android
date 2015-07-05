.class Lcom/yelp/android/ui/activities/addphoto/k;
.super Ljava/lang/Object;
.source "AllTheUploadedMediaAdapter.java"


# instance fields
.field public final a:[Lcom/yelp/android/ui/widgets/WebImageView;

.field public final b:[Landroid/widget/TextView;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    new-array v0, p1, [Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/k;->a:[Lcom/yelp/android/ui/widgets/WebImageView;

    .line 476
    new-array v0, p1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/k;->b:[Landroid/widget/TextView;

    .line 477
    return-void
.end method


# virtual methods
.method public varargs a(Landroid/view/View;[I)V
    .locals 2

    .prologue
    .line 480
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p2

    if-ge v1, v0, :cond_0

    .line 481
    aget v0, p2, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 482
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/addphoto/k;->a(Landroid/view/ViewGroup;I)V

    .line 480
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 484
    :cond_0
    return-void
.end method

.method public a(Landroid/view/ViewGroup;I)V
    .locals 2

    .prologue
    .line 487
    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/k;->a:[Lcom/yelp/android/ui/widgets/WebImageView;

    const v0, 0x7f0c00c6

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    aput-object v0, v1, p2

    .line 488
    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/k;->b:[Landroid/widget/TextView;

    const v0, 0x7f0c0262

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, p2

    .line 489
    return-void
.end method
