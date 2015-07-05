.class public Lcom/yelp/android/ui/activities/feed/k;
.super Lcom/yelp/android/ui/activities/feed/b;
.source "CheckInMeFeedViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/feed/b",
        "<",
        "Lcom/yelp/android/serializable/CheckInFeedEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/View$OnClickListener;

.field private final b:Lcom/yelp/android/ui/widgets/j;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/feed/n;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/feed/b;-><init>()V

    .line 34
    if-nez p1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/activities/feed/l;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/ui/activities/feed/l;-><init>(Lcom/yelp/android/ui/activities/feed/k;Lcom/yelp/android/ui/activities/feed/n;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/k;->a:Landroid/view/View$OnClickListener;

    .line 45
    new-instance v0, Lcom/yelp/android/ui/activities/feed/m;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/ui/activities/feed/m;-><init>(Lcom/yelp/android/ui/activities/feed/k;Lcom/yelp/android/ui/activities/feed/n;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/k;->b:Lcom/yelp/android/ui/widgets/j;

    .line 53
    return-void
.end method

.method private a(Landroid/view/View;ILcom/yelp/android/serializable/FeedEntry;)V
    .locals 2

    .prologue
    .line 117
    const v0, 0x7f0c002f

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 118
    const v0, 0x7f0c0026

    invoke-virtual {p1, v0, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 119
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/FeedEntry;Lcom/yelp/android/ui/activities/feed/FeedType;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v3, 0x5

    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 58
    if-nez p4, :cond_0

    .line 59
    invoke-virtual {p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300f1

    invoke-virtual {v0, v1, p5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 61
    new-instance v1, Lcom/yelp/android/ui/activities/feed/o;

    invoke-direct {v1, p2, p4}, Lcom/yelp/android/ui/activities/feed/o;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;)V

    .line 62
    invoke-virtual {p4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    invoke-static {v1}, Lcom/yelp/android/ui/activities/feed/o;->a(Lcom/yelp/android/ui/activities/feed/o;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/k;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-static {v1}, Lcom/yelp/android/ui/activities/feed/o;->b(Lcom/yelp/android/ui/activities/feed/o;)Lcom/yelp/android/ui/widgets/SpannableWidget;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/k;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-static {v1}, Lcom/yelp/android/ui/activities/feed/o;->c(Lcom/yelp/android/ui/activities/feed/o;)Lcom/yelp/android/ui/widgets/SpannableWidget;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/k;->b:Lcom/yelp/android/ui/widgets/j;

    invoke-interface {v0, v2}, Lcom/yelp/android/ui/widgets/SpannableWidget;->setOnCheckedChangeListener(Lcom/yelp/android/ui/widgets/j;)V

    .line 70
    invoke-static {v1}, Lcom/yelp/android/ui/activities/feed/o;->a(Lcom/yelp/android/ui/activities/feed/o;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 72
    iget-object v2, v1, Lcom/yelp/android/ui/activities/feed/o;->i:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 78
    iget-object v0, v1, Lcom/yelp/android/ui/activities/feed/o;->j:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 79
    iget-object v2, v1, Lcom/yelp/android/ui/activities/feed/o;->i:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 80
    iget-object v1, v1, Lcom/yelp/android/ui/activities/feed/o;->i:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 83
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/feed/o;

    .line 84
    invoke-virtual {p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, p3, v1}, Lcom/yelp/android/ui/activities/feed/o;->a(Lcom/yelp/android/serializable/FeedEntry;ILandroid/content/Context;)V

    move-object v1, p1

    .line 86
    check-cast v1, Lcom/yelp/android/serializable/CheckInFeedEntry;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/CheckInFeedEntry;->getCheckIn()Lcom/yelp/android/serializable/YelpCheckIn;

    move-result-object v2

    .line 88
    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/o;->a(Lcom/yelp/android/ui/activities/feed/o;)Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0, v1, p3, p1}, Lcom/yelp/android/ui/activities/feed/k;->a(Landroid/view/View;ILcom/yelp/android/serializable/FeedEntry;)V

    .line 89
    invoke-virtual {p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/yelp/android/serializable/YelpCheckIn;->getCommentCountLikeCountText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v1

    .line 91
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/16 v5, 0x12

    invoke-virtual {v1, v3, v6, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 93
    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/o;->a(Lcom/yelp/android/ui/activities/feed/o;)Landroid/widget/TextView;

    move-result-object v3

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 94
    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/o;->b(Lcom/yelp/android/ui/activities/feed/o;)Lcom/yelp/android/ui/widgets/SpannableWidget;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-direct {p0, v1, p3, p1}, Lcom/yelp/android/ui/activities/feed/k;->a(Landroid/view/View;ILcom/yelp/android/serializable/FeedEntry;)V

    .line 95
    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/o;->c(Lcom/yelp/android/ui/activities/feed/o;)Lcom/yelp/android/ui/widgets/SpannableWidget;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-direct {p0, v1, p3, p1}, Lcom/yelp/android/ui/activities/feed/k;->a(Landroid/view/View;ILcom/yelp/android/serializable/FeedEntry;)V

    .line 96
    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/o;->c(Lcom/yelp/android/ui/activities/feed/o;)Lcom/yelp/android/ui/widgets/SpannableWidget;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/yelp/android/ui/widgets/SpannableWidget;->setOnCheckedChangeListener(Lcom/yelp/android/ui/widgets/j;)V

    .line 97
    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/o;->c(Lcom/yelp/android/ui/activities/feed/o;)Lcom/yelp/android/ui/widgets/SpannableWidget;

    move-result-object v1

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpCheckIn;->getFeedback()Lcom/yelp/android/serializable/Feedback;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Feedback;->isLikedByUser()Z

    move-result v3

    invoke-interface {v1, v3}, Lcom/yelp/android/ui/widgets/SpannableWidget;->setChecked(Z)V

    .line 98
    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/o;->c(Lcom/yelp/android/ui/activities/feed/o;)Lcom/yelp/android/ui/widgets/SpannableWidget;

    move-result-object v1

    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/k;->b:Lcom/yelp/android/ui/widgets/j;

    invoke-interface {v1, v3}, Lcom/yelp/android/ui/widgets/SpannableWidget;->setOnCheckedChangeListener(Lcom/yelp/android/ui/widgets/j;)V

    .line 100
    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpCheckIn;->getPrimaryComment()Lcom/yelp/android/serializable/Comment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 101
    iget-object v1, v0, Lcom/yelp/android/ui/activities/feed/o;->h:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpCheckIn;->getPrimaryComment()Lcom/yelp/android/serializable/Comment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Comment;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v1, v0, Lcom/yelp/android/ui/activities/feed/o;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    iget-object v1, v0, Lcom/yelp/android/ui/activities/feed/o;->j:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/o;->a(Lcom/yelp/android/ui/activities/feed/o;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/feed/o;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v0

    invoke-virtual {v1, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 113
    :goto_0
    return-object p4

    .line 107
    :cond_1
    iget-object v1, v0, Lcom/yelp/android/ui/activities/feed/o;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v1, v0, Lcom/yelp/android/ui/activities/feed/o;->j:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/o;->a(Lcom/yelp/android/ui/activities/feed/o;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/feed/o;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v1, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0
.end method
