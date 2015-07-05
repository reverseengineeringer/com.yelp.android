.class public Lcom/yelp/android/ui/activities/events/ay;
.super Lcom/yelp/android/ui/util/au;
.source "NearbyEventAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/au",
        "<",
        "Lcom/yelp/android/serializable/Event;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Lcom/yelp/android/serializable/Event;


# instance fields
.field private b:Lcom/bumptech/glide/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/yelp/android/serializable/Event;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Event;-><init>()V

    sput-object v0, Lcom/yelp/android/ui/activities/events/ay;->a:Lcom/yelp/android/serializable/Event;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;-><init>()V

    .line 30
    invoke-static {p1}, Lcom/bumptech/glide/h;->a(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/j;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/ay;->b:Lcom/bumptech/glide/j;

    .line 31
    return-void
.end method


# virtual methods
.method public a(I)Lcom/yelp/android/serializable/Event;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/ay;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/ay;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/ay;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event;

    .line 101
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/yelp/android/ui/activities/events/ay;->a:Lcom/yelp/android/serializable/Event;

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/yelp/android/ui/util/au;->a(Ljava/util/List;)V

    .line 84
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/ay;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/ay;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/events/ay;->a(I)Lcom/yelp/android/serializable/Event;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const v5, 0x7f020098

    const/4 v3, 0x0

    .line 35
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 36
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/events/ay;->a(I)Lcom/yelp/android/serializable/Event;

    move-result-object v0

    sget-object v2, Lcom/yelp/android/ui/activities/events/ay;->a:Lcom/yelp/android/serializable/Event;

    if-ne v0, v2, :cond_0

    .line 37
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300d6

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 39
    const v0, 0x7f0c0324

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f07039c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 64
    :goto_0
    return-object p2

    .line 45
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/yelp/android/ui/activities/events/az;

    if-nez v0, :cond_2

    .line 46
    :cond_1
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0300d3

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 48
    new-instance v0, Lcom/yelp/android/ui/activities/events/az;

    invoke-direct {v0, p2}, Lcom/yelp/android/ui/activities/events/az;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 51
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/events/az;

    .line 52
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/events/ay;->a(I)Lcom/yelp/android/serializable/Event;

    move-result-object v2

    .line 54
    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->getPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 55
    iget-object v3, p0, Lcom/yelp/android/ui/activities/events/ay;->b:Lcom/bumptech/glide/j;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->getPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/serializable/Photo;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/j;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/bumptech/glide/d;->b(I)Lcom/bumptech/glide/c;

    move-result-object v3

    iget-object v4, v0, Lcom/yelp/android/ui/activities/events/az;->a:Lcom/yelp/android/ui/widgets/RoundedImageView;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/yelp/android/ag/j;

    .line 62
    :goto_1
    iget-object v3, v0, Lcom/yelp/android/ui/activities/events/az;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, v0, Lcom/yelp/android/ui/activities/events/az;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Lcom/yelp/android/serializable/Event;->getFormattedTimeRange(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 59
    :cond_3
    iget-object v3, v0, Lcom/yelp/android/ui/activities/events/az;->a:Lcom/yelp/android/ui/widgets/RoundedImageView;

    invoke-virtual {v3, v5}, Lcom/yelp/android/ui/widgets/RoundedImageView;->setImageResource(I)V

    goto :goto_1
.end method
