.class Lcom/yelp/android/ui/activities/feed/viewbinder/u$a;
.super Ljava/lang/Object;
.source "ReservationSearchFeedViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/TextView;

.field private final c:Lcom/yelp/android/ch/a;

.field private final d:Landroid/view/ViewGroup;

.field private final e:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/yelp/android/ui/activities/feed/FeedType;)V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const v0, 0x7f0f03f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/u$a;->a:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f0f03c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/u$a;->b:Landroid/widget/TextView;

    .line 78
    new-instance v0, Lcom/yelp/android/ch/a;

    const v1, 0x7f0f03c7

    invoke-direct {v0, p2, p1, v1}, Lcom/yelp/android/ch/a;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/u$a;->c:Lcom/yelp/android/ch/a;

    .line 81
    const v0, 0x7f0f023a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/u$a;->d:Landroid/view/ViewGroup;

    .line 82
    const v0, 0x7f0f03f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/u$a;->e:Landroid/widget/TextView;

    .line 84
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/ui/activities/feed/viewbinder/u$1;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/viewbinder/u$a;-><init>(Landroid/view/View;Lcom/yelp/android/ui/activities/feed/FeedType;)V

    return-void
.end method

.method private a(Lcom/yelp/android/serializable/BusinessSearchResult;Lcom/yelp/android/serializable/ReservationSearchAction;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 151
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/u$a$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/viewbinder/u$a$2;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/u$a;Lcom/yelp/android/serializable/BusinessSearchResult;Lcom/yelp/android/serializable/ReservationSearchAction;)V

    return-object v0
.end method

.method private a(Ljava/util/ArrayList;)Lcom/yelp/android/serializable/SearchAction;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/SearchAction;",
            ">;)",
            "Lcom/yelp/android/serializable/SearchAction;"
        }
    .end annotation

    .prologue
    .line 140
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SearchAction;

    .line 141
    invoke-interface {v0}, Lcom/yelp/android/serializable/SearchAction;->b()Z

    move-result v2

    if-nez v2, :cond_0

    .line 145
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ci/f;)V
    .locals 5

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/u$a;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/u$a;->c:Lcom/yelp/android/ch/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/ch/a;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ci/f;)V

    .line 91
    const-class v0, Lcom/yelp/android/serializable/FeedReservationSearchActivity;

    invoke-virtual {p1, v0}, Lcom/yelp/android/serializable/FeedItem;->a(Ljava/lang/Class;)Lcom/yelp/android/serializable/SingleFeedActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedReservationSearchActivity;

    .line 93
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedReservationSearchActivity;->d()Lcom/yelp/android/serializable/BusinessSearchResult;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Lcom/yelp/android/serializable/BusinessSearchResult;->c()Ljava/util/ArrayList;

    move-result-object v2

    .line 96
    invoke-direct {p0, v2}, Lcom/yelp/android/ui/activities/feed/viewbinder/u$a;->a(Ljava/util/ArrayList;)Lcom/yelp/android/serializable/SearchAction;

    move-result-object v0

    .line 97
    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ReservationSearchAction;

    .line 101
    :goto_0
    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/u$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReservationSearchAction;->j()[I

    move-result-object v4

    invoke-static {v4}, Lcom/yelp/android/ui/util/ah;->a([I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/u$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReservationSearchAction;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/u$a;->a:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/u$a;->a(Lcom/yelp/android/serializable/BusinessSearchResult;Lcom/yelp/android/serializable/ReservationSearchAction;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/u$a;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 108
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SearchAction;

    .line 109
    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/u$a;->d:Landroid/view/ViewGroup;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-static {v3, v0, v4, p2}, Lcom/yelp/android/ui/util/ah;->a(Landroid/view/ViewGroup;Lcom/yelp/android/serializable/SearchAction;Landroid/view/LayoutInflater;Landroid/content/Context;)Landroid/widget/Button;

    move-result-object v3

    .line 112
    iget-object v4, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/u$a;->d:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 113
    check-cast v0, Lcom/yelp/android/serializable/ReservationSearchAction;

    invoke-direct {p0, v1, v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/u$a;->a(Lcom/yelp/android/serializable/BusinessSearchResult;Lcom/yelp/android/serializable/ReservationSearchAction;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 97
    :cond_0
    check-cast v0, Lcom/yelp/android/serializable/ReservationSearchAction;

    goto :goto_0

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/u$a;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/yelp/android/ui/activities/feed/viewbinder/u$a$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/feed/viewbinder/u$a$1;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/u$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/viewbinder/u$a;Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ci/f;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/feed/viewbinder/u$a;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ci/f;)V

    return-void
.end method
