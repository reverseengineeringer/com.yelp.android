.class Lcom/yelp/android/ui/activities/search/a$a;
.super Ljava/lang/Object;
.source "RichSearchSuggestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/search/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Lcom/yelp/android/ui/widgets/WebImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const v0, 0x7f0f0522

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/a$a;->a:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f0f0524

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/a$a;->b:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f0f0523

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/a$a;->c:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f0f0113

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/a$a;->d:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 127
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/a$a;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/a$a;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/search/a$a;)Lcom/yelp/android/ui/widgets/WebImageView;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/a$a;->d:Lcom/yelp/android/ui/widgets/WebImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/search/a$a;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/a$a;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/search/a$a;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/a$a;->b:Landroid/widget/TextView;

    return-object v0
.end method
