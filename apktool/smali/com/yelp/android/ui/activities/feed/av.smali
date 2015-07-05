.class abstract Lcom/yelp/android/ui/activities/feed/av;
.super Ljava/lang/Object;
.source "FeedViewWithHeaderHolder.java"


# instance fields
.field private final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public q:Lcom/yelp/android/ui/widgets/WebImageView;

.field public r:Landroid/widget/TextView;

.field public s:Landroid/widget/TextView;

.field public t:Landroid/widget/TextView;

.field protected final u:Lcom/yelp/android/ui/activities/feed/FeedType;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const v0, 0x7f0c0292

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/av;->q:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 29
    const v0, 0x7f0c0293

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/av;->r:Landroid/widget/TextView;

    .line 30
    const v0, 0x7f0c0291

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/av;->s:Landroid/widget/TextView;

    .line 31
    const v0, 0x7f0c0348

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/av;->t:Landroid/widget/TextView;

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/av;->a:Landroid/util/SparseArray;

    .line 33
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/av;->b:Landroid/util/SparseArray;

    .line 34
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/av;->u:Lcom/yelp/android/ui/activities/feed/FeedType;

    .line 35
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 41
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/av;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 42
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/av;->q:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/WebImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 44
    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/av;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    :cond_0
    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/av;->q:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v3, v0}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/av;->q:Lcom/yelp/android/ui/widgets/WebImageView;

    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 49
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/av;->r:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/av;->r:Landroid/widget/TextView;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/av;->t:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/av;->s:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/av;->s:Landroid/widget/TextView;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    return-void

    :cond_1
    move v0, v2

    .line 47
    goto :goto_0

    :cond_2
    move v0, v2

    .line 50
    goto :goto_1

    :cond_3
    move v1, v2

    .line 54
    goto :goto_2
.end method

.method public a(Landroid/content/Context;ILcom/yelp/android/serializable/FeedEntry;)V
    .locals 4

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/av;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    invoke-virtual {p3}, Lcom/yelp/android/serializable/FeedEntry;->getDate()Ljava/util/Date;

    move-result-object v1

    .line 61
    if-eqz v1, :cond_0

    .line 62
    sget-object v0, Lcom/yelp/android/util/StringUtils$Format;->LONG:Lcom/yelp/android/util/StringUtils$Format;

    invoke-static {p1, v0, v1}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/av;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 67
    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/av;->u:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {p3, p1, v2}, Lcom/yelp/android/serializable/FeedEntry;->getSubTitle(Landroid/content/Context;Lcom/yelp/android/ui/activities/feed/FeedType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/yelp/android/serializable/FeedEntry;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/yelp/android/ui/activities/feed/av;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/av;->q:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {p3, v0}, Lcom/yelp/android/serializable/FeedEntry;->setHeaderIcon(Lcom/yelp/android/ui/widgets/WebImageView;)V

    .line 69
    return-void
.end method
