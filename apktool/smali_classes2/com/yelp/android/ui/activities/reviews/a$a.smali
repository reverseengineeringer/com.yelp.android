.class Lcom/yelp/android/ui/activities/reviews/a$a;
.super Ljava/lang/Object;
.source "NearbyBusinessesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/reviews/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/ui/widgets/WebImageView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const v0, 0x7f0f02e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/a$a;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 46
    const v0, 0x7f0f00d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/a$a;->b:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f0f0221

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/a$a;->c:Landroid/widget/TextView;

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/a$a;)Lcom/yelp/android/ui/widgets/WebImageView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/a$a;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/reviews/a$a;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/a$a;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/reviews/a$a;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/a$a;->c:Landroid/widget/TextView;

    return-object v0
.end method
