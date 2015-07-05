.class Lcom/yelp/android/ui/activities/feed/bs;
.super Lcom/yelp/android/ui/activities/feed/au;
.source "TipMeFeedViewBinder.java"


# instance fields
.field private final A:Landroid/view/View;

.field final synthetic h:Lcom/yelp/android/ui/activities/feed/bl;

.field private final i:Landroid/view/View;

.field private final j:Landroid/view/View;

.field private final v:Landroid/view/View;

.field private final w:Landroid/widget/TextView;

.field private final x:Lcom/yelp/android/ui/widgets/WebImageView;

.field private final y:Lcom/yelp/android/ui/widgets/SpannableWidget;

.field private final z:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/feed/bl;Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 157
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/bs;->h:Lcom/yelp/android/ui/activities/feed/bl;

    .line 158
    invoke-direct {p0, p2, p3}, Lcom/yelp/android/ui/activities/feed/au;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;)V

    .line 159
    const v0, 0x7f0c0443

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/bs;->w:Landroid/widget/TextView;

    .line 160
    const v0, 0x7f0c0021

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/bs;->j:Landroid/view/View;

    .line 161
    const v0, 0x7f0c0339

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/SpannableWidget;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/bs;->y:Lcom/yelp/android/ui/widgets/SpannableWidget;

    .line 162
    const v0, 0x7f0c00c1

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/bs;->i:Landroid/view/View;

    .line 163
    const v0, 0x7f0c034b

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/bs;->v:Landroid/view/View;

    .line 164
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/bs;->v:Landroid/view/View;

    const v1, 0x7f0c034c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/bs;->x:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 165
    const v0, 0x7f0c04b4

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/bs;->z:Landroid/view/View;

    .line 166
    const v0, 0x7f0c04b2

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/bs;->A:Landroid/view/View;

    .line 167
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/bs;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/bs;->w:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/feed/bs;)Landroid/view/View;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/bs;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/feed/bs;)Landroid/view/View;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/bs;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/feed/bs;)Lcom/yelp/android/ui/widgets/SpannableWidget;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/bs;->y:Lcom/yelp/android/ui/widgets/SpannableWidget;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/feed/bs;)Landroid/view/View;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/bs;->v:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/feed/bs;)Lcom/yelp/android/ui/widgets/WebImageView;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/bs;->x:Lcom/yelp/android/ui/widgets/WebImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/feed/bs;)Landroid/view/View;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/bs;->z:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/feed/bs;)Landroid/view/View;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/bs;->A:Landroid/view/View;

    return-object v0
.end method
