.class Lcom/yelp/android/ui/activities/search/b;
.super Ljava/lang/Object;
.source "RichSearchSuggestAdapter.java"


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Lcom/yelp/android/ui/widgets/WebImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const v0, 0x7f0c040d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/b;->a:Landroid/widget/TextView;

    .line 118
    const v0, 0x7f0c043b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/b;->b:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f0c043a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/b;->c:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f0c00c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/b;->d:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 121
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/b;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/b;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/search/b;)Lcom/yelp/android/ui/widgets/WebImageView;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/b;->d:Lcom/yelp/android/ui/widgets/WebImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/search/b;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/b;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/search/b;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/b;->b:Landroid/widget/TextView;

    return-object v0
.end method
