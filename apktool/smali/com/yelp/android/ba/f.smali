.class public Lcom/yelp/android/ba/f;
.super Ljava/lang/Object;
.source "FeedUserProfileViewHolder.java"


# instance fields
.field protected final a:Lcom/yelp/android/ui/activities/feed/FeedType;

.field private final b:Landroid/widget/TextView;

.field private final c:Lcom/yelp/android/ui/util/cn;

.field private final d:Landroid/view/View;

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/widget/TextView;

.field private final g:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;I)V
    .locals 4

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 44
    const v0, 0x7f0c02eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ba/f;->b:Landroid/widget/TextView;

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ba/f;->e:Landroid/util/SparseArray;

    .line 46
    iput-object p1, p0, Lcom/yelp/android/ba/f;->a:Lcom/yelp/android/ui/activities/feed/FeedType;

    .line 48
    const v0, 0x7f0c033d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ba/f;->d:Landroid/view/View;

    .line 49
    new-instance v0, Lcom/yelp/android/ui/util/cn;

    iget-object v2, p0, Lcom/yelp/android/ba/f;->d:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/yelp/android/ui/util/cn;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/yelp/android/ba/f;->c:Lcom/yelp/android/ui/util/cn;

    .line 50
    const v0, 0x7f0c033f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ba/f;->f:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f0c033e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ba/f;->g:Landroid/view/View;

    .line 52
    return-void
.end method

.method private a(Landroid/content/Context;ILcom/yelp/android/serializable/FeedEntry;)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/yelp/android/ba/f;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    invoke-virtual {p3}, Lcom/yelp/android/serializable/FeedEntry;->getDate()Ljava/util/Date;

    move-result-object v1

    .line 104
    if-eqz v1, :cond_0

    .line 105
    sget-object v0, Lcom/yelp/android/util/StringUtils$Format;->LONG:Lcom/yelp/android/util/StringUtils$Format;

    invoke-static {p1, v0, v1}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ba/f;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ba/f;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v1, p0, Lcom/yelp/android/ba/f;->b:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    invoke-virtual {p3}, Lcom/yelp/android/serializable/FeedEntry;->getUser()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {p3}, Lcom/yelp/android/serializable/FeedEntry;->getUserIriParams()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/yelp/android/ba/f;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;Ljava/util/Map;)V

    .line 115
    return-void

    .line 111
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lcom/yelp/android/serializable/FeedEntry;)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/yelp/android/ba/f;->f:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Lcom/yelp/android/serializable/FeedEntry;->getActivitySubtitle(Landroid/content/Context;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/yelp/android/ba/f;->g:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ba/h;

    invoke-direct {v1, p0, p2, p1}, Lcom/yelp/android/ba/h;-><init>(Lcom/yelp/android/ba/f;Lcom/yelp/android/serializable/FeedEntry;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/yelp/android/serializable/User;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/serializable/User;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/ba/f;->c:Lcom/yelp/android/ui/util/cn;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/User;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/yelp/android/serializable/User;->getFriendCount()I

    move-result v3

    invoke-virtual {p2}, Lcom/yelp/android/serializable/User;->getReviewCount()I

    move-result v4

    invoke-virtual {p2}, Lcom/yelp/android/serializable/User;->getPhotoCount()I

    move-result v5

    invoke-virtual {p2}, Lcom/yelp/android/serializable/User;->getVideoCount()I

    move-result v6

    invoke-virtual {p2}, Lcom/yelp/android/serializable/User;->getMediaCount()I

    move-result v7

    invoke-virtual {p2}, Lcom/yelp/android/serializable/User;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lcom/yelp/android/serializable/User;->isEliteUser()Z

    move-result v9

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Lcom/yelp/android/ui/util/cn;->a(Landroid/content/Context;Ljava/lang/CharSequence;IIIIILjava/lang/String;Z)V

    .line 78
    iget-object v0, p0, Lcom/yelp/android/ba/f;->d:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ba/g;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/yelp/android/ba/g;-><init>(Lcom/yelp/android/ba/f;Ljava/util/Map;Landroid/content/Context;Lcom/yelp/android/serializable/User;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/FeedEntry;ILandroid/content/Context;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p3, p2, p1}, Lcom/yelp/android/ba/f;->a(Landroid/content/Context;ILcom/yelp/android/serializable/FeedEntry;)V

    .line 62
    invoke-direct {p0, p3, p1}, Lcom/yelp/android/ba/f;->a(Landroid/content/Context;Lcom/yelp/android/serializable/FeedEntry;)V

    .line 63
    return-void
.end method
