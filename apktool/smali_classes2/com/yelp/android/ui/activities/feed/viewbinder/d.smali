.class public Lcom/yelp/android/ui/activities/feed/viewbinder/d;
.super Lcom/yelp/android/ui/activities/feed/viewbinder/o;
.source "BusinessListView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/feed/viewbinder/o",
        "<",
        "Lcom/yelp/android/cg/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;ILcom/yelp/android/ui/activities/feed/FeedType;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/feed/viewbinder/o;-><init>(Landroid/view/View;ILcom/yelp/android/ui/activities/feed/FeedType;)V

    .line 29
    new-instance v0, Lcom/yelp/android/cg/c;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/d;->d:Landroid/view/View;

    const v2, 0x7f0f03d1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/cg/c;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/d;->a:Lcom/yelp/android/cg/f;

    .line 32
    new-instance v0, Lcom/yelp/android/cg/c;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/d;->d:Landroid/view/View;

    const v2, 0x7f0f03d2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/cg/c;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/d;->b:Lcom/yelp/android/cg/f;

    .line 35
    new-instance v0, Lcom/yelp/android/cg/c;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/d;->d:Landroid/view/View;

    const v2, 0x7f0f03d3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/cg/c;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/d;->c:Lcom/yelp/android/cg/f;

    .line 38
    return-void
.end method

.method private a(Lcom/yelp/android/serializable/FeedItem;I)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/d$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/viewbinder/d$2;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/d;Lcom/yelp/android/serializable/FeedItem;I)V

    return-object v0
.end method

.method private a(Lcom/yelp/android/serializable/FeedItem;ILcom/yelp/android/ci/f;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/d$3;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/yelp/android/ui/activities/feed/viewbinder/d$3;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/d;Lcom/yelp/android/ci/f;Lcom/yelp/android/serializable/FeedItem;I)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ci/f;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/viewbinder/o;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;)V

    .line 43
    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/d;->a:Lcom/yelp/android/cg/f;

    check-cast v0, Lcom/yelp/android/cg/c;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/SingleFeedActivity;

    invoke-interface {v1}, Lcom/yelp/android/serializable/SingleFeedActivity;->b()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/yelp/android/cg/c;->a(Lcom/yelp/android/serializable/YelpBusiness;Landroid/content/Context;)V

    .line 71
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/d;->a:Lcom/yelp/android/cg/f;

    check-cast v0, Lcom/yelp/android/cg/c;

    invoke-direct {p0, p1, v2}, Lcom/yelp/android/ui/activities/feed/viewbinder/d;->a(Lcom/yelp/android/serializable/FeedItem;I)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/cg/c;->b(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/d;->a:Lcom/yelp/android/cg/f;

    check-cast v0, Lcom/yelp/android/cg/c;

    invoke-direct {p0, p1, v2, p3}, Lcom/yelp/android/ui/activities/feed/viewbinder/d;->a(Lcom/yelp/android/serializable/FeedItem;ILcom/yelp/android/ci/f;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/cg/c;->a(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/d;->b:Lcom/yelp/android/cg/f;

    check-cast v0, Lcom/yelp/android/cg/c;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/SingleFeedActivity;

    invoke-interface {v1}, Lcom/yelp/android/serializable/SingleFeedActivity;->b()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/yelp/android/cg/c;->a(Lcom/yelp/android/serializable/YelpBusiness;Landroid/content/Context;)V

    .line 77
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/d;->b:Lcom/yelp/android/cg/f;

    check-cast v0, Lcom/yelp/android/cg/c;

    invoke-direct {p0, p1, v3}, Lcom/yelp/android/ui/activities/feed/viewbinder/d;->a(Lcom/yelp/android/serializable/FeedItem;I)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/cg/c;->b(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/d;->b:Lcom/yelp/android/cg/f;

    check-cast v0, Lcom/yelp/android/cg/c;

    invoke-direct {p0, p1, v3, p3}, Lcom/yelp/android/ui/activities/feed/viewbinder/d;->a(Lcom/yelp/android/serializable/FeedItem;ILcom/yelp/android/ci/f;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/cg/c;->a(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/d;->e:Landroid/widget/TextView;

    const v1, 0x7f070542

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 82
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/d;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/yelp/android/ui/activities/feed/viewbinder/d$1;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/ui/activities/feed/viewbinder/d$1;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/d;Lcom/yelp/android/serializable/FeedItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    :goto_0
    return-void

    .line 45
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/d;->c:Lcom/yelp/android/cg/f;

    check-cast v0, Lcom/yelp/android/cg/c;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/SingleFeedActivity;

    invoke-interface {v1}, Lcom/yelp/android/serializable/SingleFeedActivity;->b()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/yelp/android/cg/c;->a(Lcom/yelp/android/serializable/YelpBusiness;Landroid/content/Context;)V

    .line 47
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/d;->c:Lcom/yelp/android/cg/f;

    check-cast v0, Lcom/yelp/android/cg/c;

    invoke-direct {p0, p1, v4}, Lcom/yelp/android/ui/activities/feed/viewbinder/d;->a(Lcom/yelp/android/serializable/FeedItem;I)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/cg/c;->b(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/d;->c:Lcom/yelp/android/cg/f;

    check-cast v0, Lcom/yelp/android/cg/c;

    invoke-direct {p0, p1, v4, p3}, Lcom/yelp/android/ui/activities/feed/viewbinder/d;->a(Lcom/yelp/android/serializable/FeedItem;ILcom/yelp/android/ci/f;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/cg/c;->a(Landroid/view/View$OnClickListener;)V

    .line 53
    :pswitch_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/d;->b:Lcom/yelp/android/cg/f;

    check-cast v0, Lcom/yelp/android/cg/c;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/SingleFeedActivity;

    invoke-interface {v1}, Lcom/yelp/android/serializable/SingleFeedActivity;->b()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/yelp/android/cg/c;->a(Lcom/yelp/android/serializable/YelpBusiness;Landroid/content/Context;)V

    .line 55
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/d;->b:Lcom/yelp/android/cg/f;

    check-cast v0, Lcom/yelp/android/cg/c;

    invoke-direct {p0, p1, v3}, Lcom/yelp/android/ui/activities/feed/viewbinder/d;->a(Lcom/yelp/android/serializable/FeedItem;I)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/cg/c;->b(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/d;->b:Lcom/yelp/android/cg/f;

    check-cast v0, Lcom/yelp/android/cg/c;

    invoke-direct {p0, p1, v3, p3}, Lcom/yelp/android/ui/activities/feed/viewbinder/d;->a(Lcom/yelp/android/serializable/FeedItem;ILcom/yelp/android/ci/f;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/cg/c;->a(Landroid/view/View$OnClickListener;)V

    .line 61
    :pswitch_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/d;->a:Lcom/yelp/android/cg/f;

    check-cast v0, Lcom/yelp/android/cg/c;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/SingleFeedActivity;

    invoke-interface {v1}, Lcom/yelp/android/serializable/SingleFeedActivity;->b()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/yelp/android/cg/c;->a(Lcom/yelp/android/serializable/YelpBusiness;Landroid/content/Context;)V

    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/d;->a:Lcom/yelp/android/cg/f;

    check-cast v0, Lcom/yelp/android/cg/c;

    invoke-direct {p0, p1, v2}, Lcom/yelp/android/ui/activities/feed/viewbinder/d;->a(Lcom/yelp/android/serializable/FeedItem;I)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/cg/c;->b(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/d;->a:Lcom/yelp/android/cg/f;

    check-cast v0, Lcom/yelp/android/cg/c;

    invoke-direct {p0, p1, v2, p3}, Lcom/yelp/android/ui/activities/feed/viewbinder/d;->a(Lcom/yelp/android/serializable/FeedItem;ILcom/yelp/android/ci/f;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/cg/c;->a(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
