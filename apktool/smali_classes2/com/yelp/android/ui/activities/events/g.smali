.class public Lcom/yelp/android/ui/activities/events/g;
.super Lcom/yelp/android/ui/widgets/d;
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

.field private final e:Lcom/yelp/android/ui/util/t;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/util/ScrollToLoadListView;Lcom/yelp/android/ui/widgets/d$a;Landroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    .line 30
    invoke-virtual {p1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030168

    invoke-direct {p0, v0, v1, p2, p1}, Lcom/yelp/android/ui/widgets/d;-><init>(Landroid/content/Context;ILcom/yelp/android/ui/widgets/d$a;Lcom/yelp/android/ui/util/PullDownListView;)V

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/g;->setPulledPhotoAlpha(I)V

    .line 35
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/g;->getPanel()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f04aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/RoundedImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/g;->a:Lcom/yelp/android/ui/widgets/RoundedImageView;

    .line 36
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/g;->a:Lcom/yelp/android/ui/widgets/RoundedImageView;

    invoke-virtual {v0, p3}, Lcom/yelp/android/ui/widgets/RoundedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/g;->getPanel()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f04ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/g;->b:Landroid/widget/TextView;

    .line 38
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/g;->getPanel()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f04ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/g;->c:Landroid/widget/TextView;

    .line 39
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/g;->getPanel()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0543

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/g;->d:Landroid/widget/TextView;

    .line 40
    invoke-virtual {p1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/t;->a(Landroid/content/Context;)Lcom/yelp/android/ui/util/t;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/g;->e:Lcom/yelp/android/ui/util/t;

    .line 41
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/Event;Lcom/yelp/android/ui/util/PullDownListView;)V
    .locals 5

    .prologue
    const v3, 0x7f0200c2

    const/4 v4, 0x0

    .line 44
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/g;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 46
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event;->J()Lcom/yelp/android/serializable/Photo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 47
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/g;->e:Lcom/yelp/android/ui/util/t;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event;->J()Lcom/yelp/android/serializable/Photo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Photo;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/util/u$a;->b(I)Lcom/yelp/android/ui/util/u$a;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/g;->a:Lcom/yelp/android/ui/widgets/RoundedImageView;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 51
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event;->J()Lcom/yelp/android/serializable/Photo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Photo;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/events/g;->setPulledPhotoUrl(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/activities/events/g;->a(Lcom/yelp/android/ui/util/PullDownListView;)V

    .line 58
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/g;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event;->K()Lcom/yelp/android/serializable/Event$EventType;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/serializable/Event$EventType;->ELITE:Lcom/yelp/android/serializable/Event$EventType;

    if-ne v1, v2, :cond_2

    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/g;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    :cond_0
    :goto_1
    return-void

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/g;->a:Lcom/yelp/android/ui/widgets/RoundedImageView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/g;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/widgets/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/events/g;->setPulledPhotoUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/g;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    const v1, 0x7f0706ed

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event;->C()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const v4, 0x7f07067e

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/g;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
