.class public Lcom/yelp/android/ui/activities/feed/viewbinder/l;
.super Lcom/yelp/android/ui/activities/feed/viewbinder/o;
.source "EventListView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/feed/viewbinder/o",
        "<",
        "Lcom/yelp/android/cg/e;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;ILcom/yelp/android/ui/activities/feed/FeedType;)V
    .locals 3

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/feed/viewbinder/o;-><init>(Landroid/view/View;ILcom/yelp/android/ui/activities/feed/FeedType;)V

    .line 29
    new-instance v0, Lcom/yelp/android/cg/e;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/l;->d:Landroid/view/View;

    const v2, 0x7f0f03e1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/cg/e;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/l;->a:Lcom/yelp/android/cg/f;

    .line 31
    new-instance v0, Lcom/yelp/android/cg/e;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/l;->d:Landroid/view/View;

    const v2, 0x7f0f03e2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/cg/e;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/l;->b:Lcom/yelp/android/cg/f;

    .line 33
    new-instance v0, Lcom/yelp/android/cg/e;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/l;->d:Landroid/view/View;

    const v2, 0x7f0f03e3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/cg/e;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/l;->c:Lcom/yelp/android/cg/f;

    .line 35
    return-void
.end method

.method private a(Lcom/yelp/android/serializable/FeedItem;I)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/l$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/viewbinder/l$2;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/l;Lcom/yelp/android/serializable/FeedItem;I)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/viewbinder/o;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;)V

    .line 39
    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 56
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/l;->a:Lcom/yelp/android/cg/f;

    check-cast v0, Lcom/yelp/android/cg/e;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/SingleFeedActivity;

    invoke-interface {v1}, Lcom/yelp/android/serializable/SingleFeedActivity;->a()Lcom/yelp/android/serializable/Event;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/yelp/android/cg/e;->a(Lcom/yelp/android/serializable/Event;Landroid/content/Context;)V

    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/l;->a:Lcom/yelp/android/cg/f;

    check-cast v0, Lcom/yelp/android/cg/e;

    invoke-direct {p0, p1, v2}, Lcom/yelp/android/ui/activities/feed/viewbinder/l;->a(Lcom/yelp/android/serializable/FeedItem;I)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/cg/e;->b(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/l;->b:Lcom/yelp/android/cg/f;

    check-cast v0, Lcom/yelp/android/cg/e;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/SingleFeedActivity;

    invoke-interface {v1}, Lcom/yelp/android/serializable/SingleFeedActivity;->a()Lcom/yelp/android/serializable/Event;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/yelp/android/cg/e;->a(Lcom/yelp/android/serializable/Event;Landroid/content/Context;)V

    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/l;->b:Lcom/yelp/android/cg/f;

    check-cast v0, Lcom/yelp/android/cg/e;

    invoke-direct {p0, p1, v3}, Lcom/yelp/android/ui/activities/feed/viewbinder/l;->a(Lcom/yelp/android/serializable/FeedItem;I)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/cg/e;->b(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/l;->e:Landroid/widget/TextView;

    const v1, 0x7f07053d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/l;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/yelp/android/ui/activities/feed/viewbinder/l$1;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/ui/activities/feed/viewbinder/l$1;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/l;Lcom/yelp/android/serializable/FeedItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    :goto_0
    return-void

    .line 41
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/l;->c:Lcom/yelp/android/cg/f;

    check-cast v0, Lcom/yelp/android/cg/e;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/SingleFeedActivity;

    invoke-interface {v1}, Lcom/yelp/android/serializable/SingleFeedActivity;->a()Lcom/yelp/android/serializable/Event;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/yelp/android/cg/e;->a(Lcom/yelp/android/serializable/Event;Landroid/content/Context;)V

    .line 43
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/l;->c:Lcom/yelp/android/cg/f;

    check-cast v0, Lcom/yelp/android/cg/e;

    invoke-direct {p0, p1, v4}, Lcom/yelp/android/ui/activities/feed/viewbinder/l;->a(Lcom/yelp/android/serializable/FeedItem;I)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/cg/e;->b(Landroid/view/View$OnClickListener;)V

    .line 46
    :pswitch_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/l;->b:Lcom/yelp/android/cg/f;

    check-cast v0, Lcom/yelp/android/cg/e;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/SingleFeedActivity;

    invoke-interface {v1}, Lcom/yelp/android/serializable/SingleFeedActivity;->a()Lcom/yelp/android/serializable/Event;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/yelp/android/cg/e;->a(Lcom/yelp/android/serializable/Event;Landroid/content/Context;)V

    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/l;->b:Lcom/yelp/android/cg/f;

    check-cast v0, Lcom/yelp/android/cg/e;

    invoke-direct {p0, p1, v3}, Lcom/yelp/android/ui/activities/feed/viewbinder/l;->a(Lcom/yelp/android/serializable/FeedItem;I)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/cg/e;->b(Landroid/view/View$OnClickListener;)V

    .line 51
    :pswitch_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/l;->a:Lcom/yelp/android/cg/f;

    check-cast v0, Lcom/yelp/android/cg/e;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/SingleFeedActivity;

    invoke-interface {v1}, Lcom/yelp/android/serializable/SingleFeedActivity;->a()Lcom/yelp/android/serializable/Event;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/yelp/android/cg/e;->a(Lcom/yelp/android/serializable/Event;Landroid/content/Context;)V

    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/l;->a:Lcom/yelp/android/cg/f;

    check-cast v0, Lcom/yelp/android/cg/e;

    invoke-direct {p0, p1, v2}, Lcom/yelp/android/ui/activities/feed/viewbinder/l;->a(Lcom/yelp/android/serializable/FeedItem;I)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/cg/e;->b(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
