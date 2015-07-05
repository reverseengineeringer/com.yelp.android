.class Lcom/yelp/android/ui/activities/search/d;
.super Ljava/lang/Object;
.source "SavedSearchAdapter.java"


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const v0, 0x7f0c040d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/d;->a:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f0c043b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/d;->b:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0c0119

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/d;->c:Landroid/widget/TextView;

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/d;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/d;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/search/d;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/d;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/search/d;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/d;->b:Landroid/widget/TextView;

    return-object v0
.end method
