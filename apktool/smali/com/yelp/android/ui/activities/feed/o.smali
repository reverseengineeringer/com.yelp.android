.class Lcom/yelp/android/ui/activities/feed/o;
.super Lcom/yelp/android/ui/activities/feed/au;
.source "CheckInMeFeedViewBinder.java"


# instance fields
.field final h:Landroid/widget/TextView;

.field final i:Landroid/view/View;

.field final j:Landroid/widget/ImageView;

.field private final v:Landroid/widget/TextView;

.field private final w:Lcom/yelp/android/ui/widgets/SpannableWidget;

.field private final x:Lcom/yelp/android/ui/widgets/SpannableWidget;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/au;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;)V

    .line 131
    const v0, 0x7f0c0392

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/o;->v:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f0c0393

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/SpannableWidget;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/o;->w:Lcom/yelp/android/ui/widgets/SpannableWidget;

    .line 133
    const v0, 0x7f0c0339

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/SpannableWidget;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/o;->x:Lcom/yelp/android/ui/widgets/SpannableWidget;

    .line 134
    const v0, 0x7f0c0391

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/o;->h:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f0c038f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/o;->j:Landroid/widget/ImageView;

    .line 136
    const v0, 0x7f0c034b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/o;->i:Landroid/view/View;

    .line 137
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/o;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/o;->v:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/feed/o;)Lcom/yelp/android/ui/widgets/SpannableWidget;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/o;->w:Lcom/yelp/android/ui/widgets/SpannableWidget;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/feed/o;)Lcom/yelp/android/ui/widgets/SpannableWidget;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/o;->x:Lcom/yelp/android/ui/widgets/SpannableWidget;

    return-object v0
.end method
