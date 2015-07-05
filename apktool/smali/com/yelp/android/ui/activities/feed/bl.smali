.class public Lcom/yelp/android/ui/activities/feed/bl;
.super Lcom/yelp/android/ui/activities/feed/v;
.source "TipMeFeedViewBinder.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/feed/at;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/feed/v",
        "<",
        "Lcom/yelp/android/serializable/TipFeedEntry;",
        ">;",
        "Lcom/yelp/android/ui/activities/feed/at",
        "<",
        "Lcom/yelp/android/serializable/TipFeedEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/View$OnClickListener;

.field private final b:Landroid/view/View$OnClickListener;

.field private final c:Landroid/view/View$OnClickListener;

.field private final d:Lcom/yelp/android/ui/widgets/j;

.field private final e:Lcom/yelp/android/ui/util/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/util/x",
            "<",
            "Lcom/yelp/android/serializable/TipFeedEntry;",
            "Landroid/text/Spannable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/feed/br;)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/feed/v;-><init>()V

    .line 75
    new-instance v0, Lcom/yelp/android/ui/activities/feed/bq;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/bq;-><init>(Lcom/yelp/android/ui/activities/feed/bl;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/bl;->e:Lcom/yelp/android/ui/util/x;

    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/activities/feed/bm;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/ui/activities/feed/bm;-><init>(Lcom/yelp/android/ui/activities/feed/bl;Lcom/yelp/android/ui/activities/feed/br;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/bl;->a:Landroid/view/View$OnClickListener;

    .line 49
    new-instance v0, Lcom/yelp/android/ui/activities/feed/bn;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/ui/activities/feed/bn;-><init>(Lcom/yelp/android/ui/activities/feed/bl;Lcom/yelp/android/ui/activities/feed/br;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/bl;->b:Landroid/view/View$OnClickListener;

    .line 57
    new-instance v0, Lcom/yelp/android/ui/activities/feed/bo;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/ui/activities/feed/bo;-><init>(Lcom/yelp/android/ui/activities/feed/bl;Lcom/yelp/android/ui/activities/feed/br;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/bl;->c:Landroid/view/View$OnClickListener;

    .line 65
    new-instance v0, Lcom/yelp/android/ui/activities/feed/bp;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/ui/activities/feed/bp;-><init>(Lcom/yelp/android/ui/activities/feed/bl;Lcom/yelp/android/ui/activities/feed/br;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/bl;->d:Lcom/yelp/android/ui/widgets/j;

    .line 73
    return-void
.end method

.method private a(Landroid/view/View;ILcom/yelp/android/serializable/FeedEntry;)V
    .locals 2

    .prologue
    .line 171
    const v0, 0x7f0c002f

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 172
    const v0, 0x7f0c0026

    invoke-virtual {p1, v0, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 173
    return-void
.end method


# virtual methods
.method public b(Lcom/yelp/android/serializable/FeedEntry;Lcom/yelp/android/ui/activities/feed/FeedType;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 87
    if-nez p4, :cond_0

    .line 88
    invoke-virtual {p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030150

    invoke-virtual {v0, v1, p5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 90
    new-instance v1, Lcom/yelp/android/ui/activities/feed/bs;

    invoke-direct {v1, p0, p2, p4}, Lcom/yelp/android/ui/activities/feed/bs;-><init>(Lcom/yelp/android/ui/activities/feed/bl;Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;)V

    .line 91
    invoke-virtual {p4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 92
    invoke-static {v1}, Lcom/yelp/android/ui/activities/feed/bs;->a(Lcom/yelp/android/ui/activities/feed/bs;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/bl;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-static {v1}, Lcom/yelp/android/ui/activities/feed/bs;->b(Lcom/yelp/android/ui/activities/feed/bs;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/bl;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    invoke-static {v1}, Lcom/yelp/android/ui/activities/feed/bs;->c(Lcom/yelp/android/ui/activities/feed/bs;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/bl;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-static {v1}, Lcom/yelp/android/ui/activities/feed/bs;->d(Lcom/yelp/android/ui/activities/feed/bs;)Lcom/yelp/android/ui/widgets/SpannableWidget;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/bl;->d:Lcom/yelp/android/ui/widgets/j;

    invoke-interface {v0, v2}, Lcom/yelp/android/ui/widgets/SpannableWidget;->setOnCheckedChangeListener(Lcom/yelp/android/ui/widgets/j;)V

    .line 96
    invoke-static {v1}, Lcom/yelp/android/ui/activities/feed/bs;->a(Lcom/yelp/android/ui/activities/feed/bs;)Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f02012d

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 99
    invoke-static {v1}, Lcom/yelp/android/ui/activities/feed/bs;->a(Lcom/yelp/android/ui/activities/feed/bs;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 101
    const/4 v2, 0x3

    invoke-static {v1}, Lcom/yelp/android/ui/activities/feed/bs;->e(Lcom/yelp/android/ui/activities/feed/bs;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v0, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 102
    const/4 v2, 0x5

    invoke-static {v1}, Lcom/yelp/android/ui/activities/feed/bs;->e(Lcom/yelp/android/ui/activities/feed/bs;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v0, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 103
    sget v2, Lcom/yelp/android/appdata/ao;->j:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move-object v2, v1

    .line 107
    :goto_0
    invoke-virtual {p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2, p1, p3, v0}, Lcom/yelp/android/ui/activities/feed/bs;->a(Lcom/yelp/android/serializable/FeedEntry;ILandroid/content/Context;)V

    move-object v0, p1

    .line 109
    check-cast v0, Lcom/yelp/android/serializable/TipFeedEntry;

    .line 110
    invoke-virtual {v0}, Lcom/yelp/android/serializable/TipFeedEntry;->getTip()Lcom/yelp/android/serializable/Tip;

    move-result-object v1

    invoke-virtual {p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/yelp/android/serializable/Tip;->getCountsText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 111
    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/bs;->a(Lcom/yelp/android/ui/activities/feed/bs;)Landroid/widget/TextView;

    move-result-object v5

    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/util/StringUtils;->a(Landroid/text/Spanned;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/bs;->a(Lcom/yelp/android/ui/activities/feed/bs;)Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0, v1, p3, p1}, Lcom/yelp/android/ui/activities/feed/bl;->a(Landroid/view/View;ILcom/yelp/android/serializable/FeedEntry;)V

    .line 115
    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/bs;->b(Lcom/yelp/android/ui/activities/feed/bs;)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p3, p1}, Lcom/yelp/android/ui/activities/feed/bl;->a(Landroid/view/View;ILcom/yelp/android/serializable/FeedEntry;)V

    .line 117
    invoke-virtual {v0}, Lcom/yelp/android/serializable/TipFeedEntry;->getContentPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 118
    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/bs;->f(Lcom/yelp/android/ui/activities/feed/bs;)Lcom/yelp/android/ui/widgets/WebImageView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/TipFeedEntry;->getContentPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/serializable/Photo;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 119
    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/bs;->f(Lcom/yelp/android/ui/activities/feed/bs;)Lcom/yelp/android/ui/widgets/WebImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 124
    :goto_1
    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/bs;->g(Lcom/yelp/android/ui/activities/feed/bs;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0}, Lcom/yelp/android/serializable/TipFeedEntry;->getTip()Lcom/yelp/android/serializable/Tip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Tip;->isFirstTip()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    :goto_2
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/bs;->h(Lcom/yelp/android/ui/activities/feed/bs;)Landroid/view/View;

    move-result-object v5

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/bl;->e:Lcom/yelp/android/ui/util/x;

    invoke-virtual {p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v1, p3, v6, v0}, Lcom/yelp/android/ui/util/x;->a(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/TipFeedEntry;->getTip()Lcom/yelp/android/serializable/Tip;

    move-result-object v6

    invoke-static {v5, v1, v6}, Lcom/yelp/android/ui/util/cr;->a(Landroid/view/View;Landroid/text/Spannable;Lcom/yelp/android/serializable/Tip;)V

    .line 130
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v1

    .line 131
    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/yelp/android/serializable/TipFeedEntry;->isFromLoggedInUser()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 132
    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/bs;->c(Lcom/yelp/android/ui/activities/feed/bs;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 133
    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/bs;->a(Lcom/yelp/android/ui/activities/feed/bs;)Landroid/widget/TextView;

    move-result-object v1

    const v3, 0x7f07066e

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHint(I)V

    .line 139
    :goto_3
    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/bs;->c(Lcom/yelp/android/ui/activities/feed/bs;)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p3, p1}, Lcom/yelp/android/ui/activities/feed/bl;->a(Landroid/view/View;ILcom/yelp/android/serializable/FeedEntry;)V

    .line 141
    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/bs;->d(Lcom/yelp/android/ui/activities/feed/bs;)Lcom/yelp/android/ui/widgets/SpannableWidget;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/yelp/android/ui/widgets/SpannableWidget;->setOnCheckedChangeListener(Lcom/yelp/android/ui/widgets/j;)V

    .line 142
    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/bs;->d(Lcom/yelp/android/ui/activities/feed/bs;)Lcom/yelp/android/ui/widgets/SpannableWidget;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/TipFeedEntry;->getTip()Lcom/yelp/android/serializable/Tip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->getFeedback()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->isLikedByUser()Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/yelp/android/ui/widgets/SpannableWidget;->setChecked(Z)V

    .line 143
    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/bs;->d(Lcom/yelp/android/ui/activities/feed/bs;)Lcom/yelp/android/ui/widgets/SpannableWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/bl;->d:Lcom/yelp/android/ui/widgets/j;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/widgets/SpannableWidget;->setOnCheckedChangeListener(Lcom/yelp/android/ui/widgets/j;)V

    .line 144
    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/bs;->d(Lcom/yelp/android/ui/activities/feed/bs;)Lcom/yelp/android/ui/widgets/SpannableWidget;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0, p3, p1}, Lcom/yelp/android/ui/activities/feed/bl;->a(Landroid/view/View;ILcom/yelp/android/serializable/FeedEntry;)V

    .line 146
    return-object p4

    .line 105
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/feed/bs;

    move-object v2, v0

    goto/16 :goto_0

    .line 121
    :cond_1
    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/bs;->f(Lcom/yelp/android/ui/activities/feed/bs;)Lcom/yelp/android/ui/widgets/WebImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_2
    move v1, v4

    .line 124
    goto/16 :goto_2

    .line 135
    :cond_3
    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/bs;->c(Lcom/yelp/android/ui/activities/feed/bs;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 136
    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/bs;->a(Lcom/yelp/android/ui/activities/feed/bs;)Landroid/widget/TextView;

    move-result-object v1

    const v3, 0x7f07033c

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHint(I)V

    goto :goto_3
.end method
