.class public Lcom/yelp/android/ch/d;
.super Ljava/lang/Object;
.source "FeedUserProfileViewHolder.java"


# instance fields
.field private final a:Lcom/yelp/android/ui/activities/feed/FeedType;

.field private final b:Landroid/widget/TextView;

.field private final c:Lcom/yelp/android/cg/g;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 31
    iput-object p1, p0, Lcom/yelp/android/ch/d;->a:Lcom/yelp/android/ui/activities/feed/FeedType;

    .line 32
    const v0, 0x7f0f0360

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ch/d;->b:Landroid/widget/TextView;

    .line 33
    const v0, 0x7f0f0406

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 34
    new-instance v1, Lcom/yelp/android/cg/g;

    invoke-direct {v1, v0}, Lcom/yelp/android/cg/g;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/yelp/android/ch/d;->c:Lcom/yelp/android/cg/g;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ch/d;)Lcom/yelp/android/ui/activities/feed/FeedType;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yelp/android/ch/d;->a:Lcom/yelp/android/ui/activities/feed/FeedType;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 43
    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->m()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/yelp/android/ch/d;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    :goto_0
    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->l()Lcom/yelp/android/serializable/FeedGroupedByInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedGroupedByInfo;->b()Lcom/yelp/android/serializable/User;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/yelp/android/ch/d;->c:Lcom/yelp/android/cg/g;

    invoke-virtual {v1, v0, p2}, Lcom/yelp/android/cg/g;->a(Lcom/yelp/android/serializable/User;Landroid/content/Context;)V

    .line 55
    iget-object v1, p0, Lcom/yelp/android/ch/d;->a:Lcom/yelp/android/ui/activities/feed/FeedType;

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedType;->ME:Lcom/yelp/android/ui/activities/feed/FeedType;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ch/d;->a:Lcom/yelp/android/ui/activities/feed/FeedType;

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedType;->USER:Lcom/yelp/android/ui/activities/feed/FeedType;

    if-eq v1, v2, :cond_0

    .line 56
    iget-object v1, p0, Lcom/yelp/android/ch/d;->c:Lcom/yelp/android/cg/g;

    new-instance v2, Lcom/yelp/android/ch/d$1;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/yelp/android/ch/d$1;-><init>(Lcom/yelp/android/ch/d;Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/serializable/User;)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/cg/g;->b(Landroid/view/View$OnClickListener;)V

    .line 68
    :cond_0
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ch/d;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lcom/yelp/android/ch/d;->b:Landroid/widget/TextView;

    sget-object v1, Lcom/yelp/android/util/StringUtils$Format;->LONG:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->m()Ljava/util/Date;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
