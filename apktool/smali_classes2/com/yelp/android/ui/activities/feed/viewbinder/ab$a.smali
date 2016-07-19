.class Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;
.super Ljava/lang/Object;
.source "TipFeedViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/CompoundButton;

.field private final c:Lcom/yelp/android/ch/d;

.field private final d:Landroid/widget/TextView;

.field private final e:Lcom/yelp/android/ch/a;

.field private final f:Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;

.field private final g:Landroid/view/View;

.field private final h:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/yelp/android/ui/activities/feed/FeedType;)V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/yelp/android/ch/d;

    const v1, 0x7f0f0406

    invoke-direct {v0, p2, p1, v1}, Lcom/yelp/android/ch/d;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;->c:Lcom/yelp/android/ch/d;

    .line 73
    const v0, 0x7f0f03c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;->d:Landroid/widget/TextView;

    .line 74
    new-instance v0, Lcom/yelp/android/ch/a;

    const v1, 0x7f0f03c7

    invoke-direct {v0, p2, p1, v1}, Lcom/yelp/android/ch/a;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;->e:Lcom/yelp/android/ch/a;

    .line 77
    const v0, 0x7f0f03c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;->f:Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;

    .line 79
    const v0, 0x7f0f0402

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;->g:Landroid/view/View;

    .line 80
    const v0, 0x7f0f0403

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;->h:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f0f03de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 82
    const v0, 0x7f0f0405

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;->a:Landroid/widget/TextView;

    .line 83
    const v0, 0x7f0f0404

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;->b:Landroid/widget/CompoundButton;

    .line 84
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/ui/activities/feed/viewbinder/ab$1;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;-><init>(Landroid/view/View;Lcom/yelp/android/ui/activities/feed/FeedType;)V

    return-void
.end method

.method private a(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 183
    if-lez p1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080042

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, p1, v3}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;->a:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/ci/f;)V
    .locals 6

    .prologue
    const/16 v5, 0x20

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 91
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;->c:Lcom/yelp/android/ch/d;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ch/d;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;)V

    .line 92
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;->e:Lcom/yelp/android/ch/a;

    invoke-virtual {v0, p1, p2, p4}, Lcom/yelp/android/ch/a;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ci/f;)V

    .line 95
    const-class v0, Lcom/yelp/android/serializable/FeedTipActivity;

    invoke-virtual {p1, v0}, Lcom/yelp/android/serializable/FeedItem;->a(Ljava/lang/Class;)Lcom/yelp/android/serializable/SingleFeedActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedTipActivity;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedTipActivity;->d()Lcom/yelp/android/serializable/Tip;

    move-result-object v3

    .line 96
    invoke-virtual {v3}, Lcom/yelp/android/serializable/Tip;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;->f:Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;->setVisibility(I)V

    .line 120
    :goto_0
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedType;->ME:Lcom/yelp/android/ui/activities/feed/FeedType;

    if-ne p3, v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;->b:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;->h:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Tip;->e()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;->h:Landroid/widget/TextView;

    new-instance v1, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a$2;

    invoke-direct {v1, p0, p3, p1, v3}, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a$2;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/serializable/FeedItem;Lcom/yelp/android/serializable/Tip;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    invoke-virtual {v3}, Lcom/yelp/android/serializable/Tip;->g()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->d()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;->a(I)V

    .line 147
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;->b:Landroid/widget/CompoundButton;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 148
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;->b:Landroid/widget/CompoundButton;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Tip;->g()Lcom/yelp/android/serializable/Feedback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Feedback;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 149
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;->b:Landroid/widget/CompoundButton;

    new-instance v1, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a$3;

    invoke-direct {v1, p0, v3, p4, p1}, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a$3;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;Lcom/yelp/android/serializable/Tip;Lcom/yelp/android/ci/f;Lcom/yelp/android/serializable/FeedItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a$4;

    invoke-direct {v1, p0, v3}, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a$4;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;Lcom/yelp/android/serializable/Tip;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 104
    iget-object v4, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;->f:Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->l()Lcom/yelp/android/serializable/FeedGroupedByInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedGroupedByInfo;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->D()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;->f:Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;

    new-instance v1, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a$1;

    invoke-direct {v1, p0, p3, p1}, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a$1;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/serializable/FeedItem;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;->setHotAndNewClickListener(Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner$a;)V

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 104
    goto :goto_1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;I)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/ci/f;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yelp/android/ui/activities/feed/viewbinder/ab$a;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/ci/f;)V

    return-void
.end method
