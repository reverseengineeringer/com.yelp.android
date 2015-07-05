.class public Lcom/yelp/android/ui/activities/events/ba;
.super Lcom/yelp/android/ui/widgets/k;
.source "PanelEventsPageHeader.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/ui/widgets/RoundedImageView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Lcom/bumptech/glide/j;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/util/ScrollToLoadListView;Lcom/yelp/android/ui/widgets/o;Landroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030108

    invoke-direct {p0, v0, v1, p2, p1}, Lcom/yelp/android/ui/widgets/k;-><init>(Landroid/content/Context;ILcom/yelp/android/ui/widgets/o;Lcom/yelp/android/ui/util/PullDownListView;)V

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/ba;->setPulledPhotoAlpha(I)V

    .line 34
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/ba;->getPanel()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c03c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/RoundedImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/ba;->a:Lcom/yelp/android/ui/widgets/RoundedImageView;

    .line 35
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/ba;->a:Lcom/yelp/android/ui/widgets/RoundedImageView;

    invoke-virtual {v0, p3}, Lcom/yelp/android/ui/widgets/RoundedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/ba;->getPanel()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c03c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/ba;->b:Landroid/widget/TextView;

    .line 37
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/ba;->getPanel()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c03c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/ba;->c:Landroid/widget/TextView;

    .line 38
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/ba;->getPanel()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0452

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/ba;->d:Landroid/widget/TextView;

    .line 39
    invoke-virtual {p1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/h;->c(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/ba;->e:Lcom/bumptech/glide/j;

    .line 40
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/Event;Lcom/yelp/android/ui/util/PullDownListView;)V
    .locals 5

    .prologue
    const v3, 0x7f020097

    const/4 v4, 0x0

    .line 43
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/ba;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 45
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event;->getPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 46
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/ba;->e:Lcom/bumptech/glide/j;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event;->getPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Photo;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/j;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/d;->b(I)Lcom/bumptech/glide/c;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/ba;->a:Lcom/yelp/android/ui/widgets/RoundedImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/yelp/android/ag/j;

    .line 49
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event;->getPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Photo;->getLargeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/events/ba;->setPulledPhotoUrl(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/activities/events/ba;->a(Lcom/yelp/android/ui/util/PullDownListView;)V

    .line 56
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/ba;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event;->getType()Lcom/yelp/android/serializable/Event$EventType;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/serializable/Event$EventType;->ELITE:Lcom/yelp/android/serializable/Event$EventType;

    if-ne v1, v2, :cond_2

    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/ba;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    :cond_0
    :goto_1
    return-void

    .line 52
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/ba;->a:Lcom/yelp/android/ui/widgets/RoundedImageView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/ba;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/widgets/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/events/ba;->setPulledPhotoUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event;->isYelpCommunity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/ba;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    const v1, 0x7f070309

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event;->getCategoryName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const v4, 0x7f0706ad

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/ba;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
