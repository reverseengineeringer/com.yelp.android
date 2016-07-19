.class public Lcom/yelp/android/ui/activities/profile/d;
.super Lcom/yelp/android/ui/util/w;
.source "ReviewTipAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/profile/d$1;,
        Lcom/yelp/android/ui/activities/profile/d$c;,
        Lcom/yelp/android/ui/activities/profile/d$b;,
        Lcom/yelp/android/ui/activities/profile/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/w",
        "<",
        "Lcom/yelp/android/serializable/SingleFeedEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/util/t;

.field private b:Lcom/yelp/android/serializable/User;

.field private final c:Lcom/yelp/android/ui/activities/profile/d$c;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/util/t;Lcom/yelp/android/serializable/User;Lcom/yelp/android/ui/activities/profile/d$c;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/d;->a:Lcom/yelp/android/ui/util/t;

    .line 45
    iput-object p2, p0, Lcom/yelp/android/ui/activities/profile/d;->b:Lcom/yelp/android/serializable/User;

    .line 46
    iput-object p3, p0, Lcom/yelp/android/ui/activities/profile/d;->c:Lcom/yelp/android/ui/activities/profile/d$c;

    .line 47
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/yelp/android/serializable/SingleFeedEntry;
    .locals 2

    .prologue
    .line 109
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/d;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 110
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/profile/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SingleFeedEntry;

    invoke-interface {v0}, Lcom/yelp/android/serializable/SingleFeedEntry;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/profile/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SingleFeedEntry;

    .line 114
    :goto_1
    return-object v0

    .line 109
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 114
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Lcom/yelp/android/serializable/SingleFeedEntry;)V
    .locals 3

    .prologue
    .line 118
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/d;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 119
    invoke-interface {p1}, Lcom/yelp/android/serializable/SingleFeedEntry;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/profile/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SingleFeedEntry;

    invoke-interface {v0}, Lcom/yelp/android/serializable/SingleFeedEntry;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/profile/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SingleFeedEntry;

    invoke-interface {p1}, Lcom/yelp/android/serializable/SingleFeedEntry;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yelp/android/serializable/SingleFeedEntry;->a(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/d;->notifyDataSetChanged()V

    .line 125
    :cond_0
    return-void

    .line 118
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public b()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/SingleFeedEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/d;->a()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/d;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 129
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SingleFeedEntry;

    invoke-interface {v0}, Lcom/yelp/android/serializable/SingleFeedEntry;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 132
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/d;->notifyDataSetChanged()V

    .line 136
    :cond_1
    return-void
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/profile/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SingleFeedEntry;

    .line 52
    instance-of v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    if-eqz v1, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 57
    :goto_0
    return v0

    .line 54
    :cond_0
    instance-of v0, v0, Lcom/yelp/android/serializable/Tip;

    if-eqz v0, :cond_1

    .line 55
    const/4 v0, 0x1

    goto :goto_0

    .line 57
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 68
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/profile/d;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 101
    :goto_0
    return-object p2

    .line 71
    :pswitch_0
    if-nez p2, :cond_0

    .line 72
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0301a1

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 75
    new-instance v0, Lcom/yelp/android/ui/activities/profile/d$a;

    invoke-direct {v0, p2, v3}, Lcom/yelp/android/ui/activities/profile/d$a;-><init>(Landroid/view/View;Lcom/yelp/android/ui/activities/profile/d$1;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 77
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/profile/d$a;

    .line 78
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/profile/d;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/YelpBusinessReview;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/d;->b:Lcom/yelp/android/serializable/User;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/profile/d;->a:Lcom/yelp/android/ui/util/t;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/profile/d$a;->a(Lcom/yelp/android/ui/activities/profile/d$a;Lcom/yelp/android/serializable/YelpBusinessReview;Lcom/yelp/android/serializable/User;Landroid/content/Context;Lcom/yelp/android/ui/util/t;)V

    goto :goto_0

    .line 86
    :pswitch_1
    if-nez p2, :cond_1

    .line 87
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0301b3

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 90
    new-instance v0, Lcom/yelp/android/ui/activities/profile/d$b;

    invoke-direct {v0, p2, v3}, Lcom/yelp/android/ui/activities/profile/d$b;-><init>(Landroid/view/View;Lcom/yelp/android/ui/activities/profile/d$1;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 92
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/profile/d$b;

    .line 93
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/profile/d;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/Tip;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/profile/d;->b:Lcom/yelp/android/serializable/User;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/profile/d;->a:Lcom/yelp/android/ui/util/t;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/profile/d;->c:Lcom/yelp/android/ui/activities/profile/d$c;

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/activities/profile/d$b;->a(Lcom/yelp/android/ui/activities/profile/d$b;Lcom/yelp/android/serializable/Tip;Landroid/content/Context;Lcom/yelp/android/serializable/User;Lcom/yelp/android/ui/util/t;Lcom/yelp/android/ui/activities/profile/d$c;)V

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x2

    return v0
.end method
