.class Lcom/yelp/android/ui/activities/feed/viewbinder/g$a;
.super Ljava/lang/Object;
.source "CheckInFeedViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ch/d;

.field private final b:Landroid/widget/TextView;

.field private c:Lcom/yelp/android/ch/c;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Lcom/yelp/android/ui/widgets/AnimatedToggleButton;


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/yelp/android/ui/activities/feed/FeedType;)V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/yelp/android/ch/d;

    const v1, 0x7f0f0406

    invoke-direct {v0, p2, p1, v1}, Lcom/yelp/android/ch/d;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a;->a:Lcom/yelp/android/ch/d;

    .line 71
    const v0, 0x7f0f03c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a;->b:Landroid/widget/TextView;

    .line 72
    new-instance v0, Lcom/yelp/android/ch/c;

    const v1, 0x7f0f03d5

    invoke-direct {v0, p2, p1, v1}, Lcom/yelp/android/ch/c;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a;->c:Lcom/yelp/android/ch/c;

    .line 74
    const v0, 0x7f0f03db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a;->d:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f0f03da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a;->g:Landroid/view/View;

    .line 76
    const v0, 0x7f0f03dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a;->e:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0f03dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a;->f:Landroid/view/View;

    .line 79
    const v0, 0x7f0f03de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/AnimatedToggleButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a;->h:Lcom/yelp/android/ui/widgets/AnimatedToggleButton;

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/ui/activities/feed/viewbinder/g$1;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a;-><init>(Landroid/view/View;Lcom/yelp/android/ui/activities/feed/FeedType;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpCheckIn;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 152
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpCheckIn;->u()I

    move-result v3

    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpCheckIn;->A()Lcom/yelp/android/serializable/Comment;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    sub-int v5, v3, v0

    .line 154
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpCheckIn;->n()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->d()I

    move-result v6

    .line 155
    const v0, 0x7f080039

    invoke-static {p1, v0, v5}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    .line 157
    const v0, 0x7f080042

    invoke-static {p1, v0, v6}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 159
    const/4 v4, 0x0

    .line 160
    if-lez v6, :cond_2

    .line 161
    if-lez v5, :cond_0

    const v4, 0x7f070715

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    aput-object v3, v5, v1

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 170
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    return-void

    :cond_1
    move v0, v2

    .line 152
    goto :goto_0

    .line 166
    :cond_2
    if-lez v5, :cond_4

    move-object v0, v3

    .line 167
    goto :goto_1

    .line 173
    :cond_3
    const/4 v2, 0x4

    goto :goto_2

    :cond_4
    move-object v0, v4

    goto :goto_1
.end method

.method private a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ci/f;I)V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a;->a:Lcom/yelp/android/ch/d;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ch/d;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;)V

    .line 88
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a;->c:Lcom/yelp/android/ch/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/ch/c;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ci/f;)V

    .line 91
    const-class v0, Lcom/yelp/android/serializable/FeedCheckInActivity;

    invoke-virtual {p1, v0}, Lcom/yelp/android/serializable/FeedItem;->a(Ljava/lang/Class;)Lcom/yelp/android/serializable/SingleFeedActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedCheckInActivity;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedCheckInActivity;->d()Lcom/yelp/android/serializable/YelpCheckIn;

    move-result-object v1

    .line 93
    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpCheckIn;->A()Lcom/yelp/android/serializable/Comment;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Comment;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/util/StringUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    :goto_0
    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-static {v0}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 102
    :goto_1
    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a;->g:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 105
    invoke-direct {p0, p2, v1}, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpCheckIn;)V

    .line 107
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a;->e:Landroid/widget/TextView;

    new-instance v2, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a$1;

    invoke-direct {v2, p0, p3, p1, p4}, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a$1;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/g$a;Lcom/yelp/android/ci/f;Lcom/yelp/android/serializable/FeedItem;I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a;->f:Landroid/view/View;

    new-instance v2, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a$2;

    invoke-direct {v2, p0, p3, p1, p4}, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a$2;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/g$a;Lcom/yelp/android/ci/f;Lcom/yelp/android/serializable/FeedItem;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a;->h:Lcom/yelp/android/ui/widgets/AnimatedToggleButton;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpCheckIn;->n()Lcom/yelp/android/serializable/Feedback;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Feedback;->c()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/AnimatedToggleButton;->setChecked(Z)V

    .line 128
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a;->h:Lcom/yelp/android/ui/widgets/AnimatedToggleButton;

    new-instance v2, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a$3;

    invoke-direct {v2, p0, v1, p3, p1}, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a$3;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/g$a;Lcom/yelp/android/serializable/YelpCheckIn;Lcom/yelp/android/ci/f;Lcom/yelp/android/serializable/FeedItem;)V

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/AnimatedToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    return-void

    .line 94
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 100
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/viewbinder/g$a;Landroid/content/Context;Lcom/yelp/android/serializable/YelpCheckIn;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpCheckIn;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/viewbinder/g$a;Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ci/f;I)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ci/f;I)V

    return-void
.end method
