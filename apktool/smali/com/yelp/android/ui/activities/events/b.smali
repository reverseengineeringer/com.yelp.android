.class public Lcom/yelp/android/ui/activities/events/b;
.super Lcom/yelp/android/ui/util/au;
.source "EventAdapter.java"


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
.field private static final a:Lcom/yelp/android/serializable/Event;


# instance fields
.field private b:Z

.field private c:[I

.field private d:I

.field private e:Lcom/yelp/android/serializable/EventSection;

.field private f:Lcom/bumptech/glide/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/yelp/android/serializable/Event;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Event;-><init>()V

    sput-object v0, Lcom/yelp/android/ui/activities/events/b;->a:Lcom/yelp/android/serializable/Event;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;-><init>()V

    .line 64
    invoke-static {p2}, Lcom/bumptech/glide/h;->a(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/j;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/b;->f:Lcom/bumptech/glide/j;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/events/b;->b:Z

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/yelp/android/ui/activities/events/b;->d:I

    .line 67
    if-eqz p1, :cond_0

    const-string/jumbo v0, "saved_events"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const-string/jumbo v0, "saved_events"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/b;->a(Ljava/util/List;)V

    .line 70
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/EventSection;Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;-><init>()V

    .line 51
    invoke-static {p2}, Lcom/bumptech/glide/h;->a(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/j;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/b;->f:Lcom/bumptech/glide/j;

    .line 52
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/b;->e:Lcom/yelp/android/serializable/EventSection;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/events/b;->b:Z

    .line 54
    invoke-virtual {p1}, Lcom/yelp/android/serializable/EventSection;->getItemsToShow()[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/b;->c:[I

    .line 55
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/b;->c:[I

    array-length v0, v0

    iput v0, p0, Lcom/yelp/android/ui/activities/events/b;->d:I

    .line 56
    return-void
.end method

.method private a(ILcom/yelp/android/ui/activities/events/d;Landroid/content/Context;)V
    .locals 8

    .prologue
    const v6, 0x7f020098

    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 144
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/events/b;->a(I)Lcom/yelp/android/serializable/Event;

    move-result-object v4

    .line 146
    invoke-virtual {v4}, Lcom/yelp/android/serializable/Event;->getPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/b;->f:Lcom/bumptech/glide/j;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/Event;->getPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/serializable/Photo;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/bumptech/glide/j;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/bumptech/glide/d;->b(I)Lcom/bumptech/glide/c;

    move-result-object v0

    invoke-static {p2}, Lcom/yelp/android/ui/activities/events/d;->a(Lcom/yelp/android/ui/activities/events/d;)Lcom/yelp/android/ui/widgets/RoundedImageView;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/yelp/android/ag/j;

    .line 154
    :goto_0
    invoke-static {p2}, Lcom/yelp/android/ui/activities/events/d;->b(Lcom/yelp/android/ui/activities/events/d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4}, Lcom/yelp/android/serializable/Event;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    invoke-static {p2}, Lcom/yelp/android/ui/activities/events/d;->c(Lcom/yelp/android/ui/activities/events/d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4, p3}, Lcom/yelp/android/serializable/Event;->getFormattedTimeRange(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {v4}, Lcom/yelp/android/serializable/Event;->getRsvp()Lcom/yelp/android/serializable/EventRsvp;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {v0}, Lcom/yelp/android/serializable/EventRsvp;->getUserHasReplied()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 161
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    const v5, 0x7f07057b

    invoke-virtual {v0, v5}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 163
    :goto_1
    invoke-static {p2}, Lcom/yelp/android/ui/activities/events/d;->d(Lcom/yelp/android/ui/activities/events/d;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 171
    :goto_2
    invoke-static {p2}, Lcom/yelp/android/ui/activities/events/d;->d(Lcom/yelp/android/ui/activities/events/d;)Landroid/widget/TextView;

    move-result-object v5

    invoke-direct {p0, v4}, Lcom/yelp/android/ui/activities/events/b;->a(Lcom/yelp/android/serializable/Event;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_3
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    invoke-static {p2}, Lcom/yelp/android/ui/activities/events/d;->d(Lcom/yelp/android/ui/activities/events/d;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    invoke-static {p2}, Lcom/yelp/android/ui/activities/events/d;->e(Lcom/yelp/android/ui/activities/events/d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4}, Lcom/yelp/android/serializable/Event;->getType()Lcom/yelp/android/serializable/Event$EventType;

    move-result-object v1

    sget-object v4, Lcom/yelp/android/serializable/Event$EventType;->ELITE:Lcom/yelp/android/serializable/Event$EventType;

    if-ne v1, v4, :cond_3

    :goto_4
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    return-void

    .line 151
    :cond_0
    invoke-static {p2}, Lcom/yelp/android/ui/activities/events/d;->a(Lcom/yelp/android/ui/activities/events/d;)Lcom/yelp/android/ui/widgets/RoundedImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/yelp/android/ui/widgets/RoundedImageView;->setImageResource(I)V

    goto :goto_0

    .line 165
    :cond_1
    const v0, 0x7f0706c9

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/Event;->getSubscriptionStatusEnum()Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p3, v0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-static {p2}, Lcom/yelp/android/ui/activities/events/d;->d(Lcom/yelp/android/ui/activities/events/d;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02031d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_2
    move v1, v3

    .line 171
    goto :goto_3

    :cond_3
    move v2, v3

    .line 174
    goto :goto_4

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method private a(Lcom/yelp/android/serializable/Event;)Z
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event;->getSubscriptionStatus()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event;->getRsvp()Lcom/yelp/android/serializable/EventRsvp;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event;->getRsvp()Lcom/yelp/android/serializable/EventRsvp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/EventRsvp;->getUserHasReplied()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)Lcom/yelp/android/serializable/Event;
    .locals 2

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/events/b;->b:Z

    if-nez v0, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/yelp/android/ui/activities/events/b;->d:I

    if-ge p1, v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/b;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/b;->c:[I

    aget v1, v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event;

    .line 125
    :goto_0
    return-object v0

    .line 121
    :cond_0
    sget-object v0, Lcom/yelp/android/ui/activities/events/b;->a:Lcom/yelp/android/serializable/Event;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/b;->e:Lcom/yelp/android/serializable/EventSection;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/EventSection;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/Event;->setId(Ljava/lang/String;)V

    .line 122
    sget-object v0, Lcom/yelp/android/ui/activities/events/b;->a:Lcom/yelp/android/serializable/Event;

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event;

    goto :goto_0
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    invoke-super {p0}, Lcom/yelp/android/ui/util/au;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/b;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    const-string/jumbo v1, "saved_events"

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/b;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 188
    :cond_0
    return-void
.end method

.method public b()Lcom/yelp/android/serializable/EventSection;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/b;->e:Lcom/yelp/android/serializable/EventSection;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 105
    iget v0, p0, Lcom/yelp/android/ui/activities/events/b;->d:I

    if-nez v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 108
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/b;->e:Lcom/yelp/android/serializable/EventSection;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/EventSection;->getTotal()I

    move-result v0

    iget v1, p0, Lcom/yelp/android/ui/activities/events/b;->d:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/events/b;->a(I)Lcom/yelp/android/serializable/Event;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/events/b;->b:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/yelp/android/ui/activities/events/b;->d:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 75
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 76
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/events/b;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 77
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0300d6

    invoke-virtual {v0, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 79
    const v0, 0x7f0c001d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0c03b4

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 80
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/b;->e:Lcom/yelp/android/serializable/EventSection;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/EventSection;->getTotal()I

    move-result v0

    iget v2, p0, Lcom/yelp/android/ui/activities/events/b;->d:I

    sub-int/2addr v0, v2

    .line 81
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0029

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 83
    const v0, 0x7f0c0324

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :goto_0
    return-object p2

    .line 85
    :cond_0
    if-nez p2, :cond_1

    .line 86
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030102

    invoke-virtual {v0, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 88
    new-instance v0, Lcom/yelp/android/ui/activities/events/d;

    const/4 v2, 0x0

    invoke-direct {v0, p2, v2}, Lcom/yelp/android/ui/activities/events/d;-><init>(Landroid/view/View;Lcom/yelp/android/ui/activities/events/c;)V

    .line 89
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 94
    :goto_1
    invoke-direct {p0, p1, v0, v1}, Lcom/yelp/android/ui/activities/events/b;->a(ILcom/yelp/android/ui/activities/events/d;Landroid/content/Context;)V

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/events/d;

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x2

    return v0
.end method
