.class public Lcom/yelp/android/ui/activities/events/a;
.super Lcom/yelp/android/ui/util/w;
.source "EventAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/events/a$1;,
        Lcom/yelp/android/ui/activities/events/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/w",
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

.field private f:Lcom/yelp/android/ui/util/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/yelp/android/serializable/Event;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Event;-><init>()V

    sput-object v0, Lcom/yelp/android/ui/activities/events/a;->a:Lcom/yelp/android/serializable/Event;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    .line 63
    invoke-static {p2}, Lcom/yelp/android/ui/util/t;->a(Landroid/support/v4/app/Fragment;)Lcom/yelp/android/ui/util/t;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/a;->f:Lcom/yelp/android/ui/util/t;

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/events/a;->b:Z

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/yelp/android/ui/activities/events/a;->d:I

    .line 66
    if-eqz p1, :cond_0

    const-string/jumbo v0, "saved_events"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const-string/jumbo v0, "saved_events"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/a;->a(Ljava/util/List;)V

    .line 69
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/EventSection;Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    .line 50
    invoke-static {p2}, Lcom/yelp/android/ui/util/t;->a(Landroid/support/v4/app/Fragment;)Lcom/yelp/android/ui/util/t;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/a;->f:Lcom/yelp/android/ui/util/t;

    .line 51
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/a;->e:Lcom/yelp/android/serializable/EventSection;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/events/a;->b:Z

    .line 53
    invoke-virtual {p1}, Lcom/yelp/android/serializable/EventSection;->a()[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/a;->c:[I

    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/a;->c:[I

    array-length v0, v0

    iput v0, p0, Lcom/yelp/android/ui/activities/events/a;->d:I

    .line 55
    return-void
.end method

.method private a(ILcom/yelp/android/ui/activities/events/a$a;Landroid/content/Context;)V
    .locals 8

    .prologue
    const v6, 0x7f0200c3

    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 146
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/events/a;->a(I)Lcom/yelp/android/serializable/Event;

    move-result-object v4

    .line 148
    invoke-virtual {v4}, Lcom/yelp/android/serializable/Event;->J()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/a;->f:Lcom/yelp/android/ui/util/t;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/Event;->J()Lcom/yelp/android/serializable/Photo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/serializable/Photo;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/yelp/android/ui/util/u$a;->b(I)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    invoke-static {p2}, Lcom/yelp/android/ui/activities/events/a$a;->a(Lcom/yelp/android/ui/activities/events/a$a;)Lcom/yelp/android/ui/widgets/RoundedImageView;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 157
    :goto_0
    invoke-static {p2}, Lcom/yelp/android/ui/activities/events/a$a;->b(Lcom/yelp/android/ui/activities/events/a$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4}, Lcom/yelp/android/serializable/Event;->G()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    invoke-static {p2}, Lcom/yelp/android/ui/activities/events/a$a;->c(Lcom/yelp/android/ui/activities/events/a$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4, p3}, Lcom/yelp/android/serializable/Event;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    invoke-virtual {v4}, Lcom/yelp/android/serializable/Event;->L()Lcom/yelp/android/serializable/EventRsvp;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {v0}, Lcom/yelp/android/serializable/EventRsvp;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 164
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    const v5, 0x7f070583

    invoke-virtual {v0, v5}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    :goto_1
    invoke-static {p2}, Lcom/yelp/android/ui/activities/events/a$a;->d(Lcom/yelp/android/ui/activities/events/a$a;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 176
    :goto_2
    invoke-static {p2}, Lcom/yelp/android/ui/activities/events/a$a;->d(Lcom/yelp/android/ui/activities/events/a$a;)Landroid/widget/TextView;

    move-result-object v5

    invoke-direct {p0, v4}, Lcom/yelp/android/ui/activities/events/a;->a(Lcom/yelp/android/serializable/Event;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_3
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    invoke-static {p2}, Lcom/yelp/android/ui/activities/events/a$a;->d(Lcom/yelp/android/ui/activities/events/a$a;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    invoke-static {p2}, Lcom/yelp/android/ui/activities/events/a$a;->e(Lcom/yelp/android/ui/activities/events/a$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4}, Lcom/yelp/android/serializable/Event;->K()Lcom/yelp/android/serializable/Event$EventType;

    move-result-object v1

    sget-object v4, Lcom/yelp/android/serializable/Event$EventType;->ELITE:Lcom/yelp/android/serializable/Event$EventType;

    if-ne v1, v4, :cond_3

    :goto_4
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    return-void

    .line 154
    :cond_0
    invoke-static {p2}, Lcom/yelp/android/ui/activities/events/a$a;->a(Lcom/yelp/android/ui/activities/events/a$a;)Lcom/yelp/android/ui/widgets/RoundedImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/yelp/android/ui/widgets/RoundedImageView;->setImageResource(I)V

    goto :goto_0

    .line 168
    :cond_1
    const v0, 0x7f070698

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/Event;->h()Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p3, v0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {p2}, Lcom/yelp/android/ui/activities/events/a$a;->d(Lcom/yelp/android/ui/activities/events/a$a;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020454

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_2
    move v1, v3

    .line 176
    goto :goto_3

    :cond_3
    move v2, v3

    .line 179
    goto :goto_4

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method private a(Lcom/yelp/android/serializable/Event;)Z
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event;->L()Lcom/yelp/android/serializable/EventRsvp;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event;->L()Lcom/yelp/android/serializable/EventRsvp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/EventRsvp;->c()Z

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
    .line 119
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/events/a;->b:Z

    if-nez v0, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/yelp/android/ui/activities/events/a;->d:I

    if-ge p1, v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/a;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/a;->c:[I

    aget v1, v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event;

    .line 127
    :goto_0
    return-object v0

    .line 123
    :cond_0
    sget-object v0, Lcom/yelp/android/ui/activities/events/a;->a:Lcom/yelp/android/serializable/Event;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/a;->e:Lcom/yelp/android/serializable/EventSection;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/EventSection;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/Event;->b(Ljava/lang/String;)V

    .line 124
    sget-object v0, Lcom/yelp/android/ui/activities/events/a;->a:Lcom/yelp/android/serializable/Event;

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/a;->a()Ljava/util/List;

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
    .line 196
    invoke-super {p0}, Lcom/yelp/android/ui/util/w;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/a;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    const-string/jumbo v1, "saved_events"

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/a;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 193
    :cond_0
    return-void
.end method

.method public b()Lcom/yelp/android/serializable/EventSection;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/a;->e:Lcom/yelp/android/serializable/EventSection;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 107
    iget v0, p0, Lcom/yelp/android/ui/activities/events/a;->d:I

    if-nez v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 110
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/a;->e:Lcom/yelp/android/serializable/EventSection;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/EventSection;->b()I

    move-result v0

    iget v1, p0, Lcom/yelp/android/ui/activities/events/a;->d:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/events/a;->a(I)Lcom/yelp/android/serializable/Event;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/events/a;->b:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/yelp/android/ui/activities/events/a;->d:I

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

    .line 74
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 75
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/events/a;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030106

    invoke-virtual {v0, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 79
    const v0, 0x7f0f001f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0f03df

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 80
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/a;->e:Lcom/yelp/android/serializable/EventSection;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/EventSection;->b()I

    move-result v0

    iget v2, p0, Lcom/yelp/android/ui/activities/events/a;->d:I

    sub-int/2addr v0, v2

    .line 81
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08002c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 85
    const v0, 0x7f0f03a9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :goto_0
    return-object p2

    .line 87
    :cond_0
    if-nez p2, :cond_1

    .line 88
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030162

    invoke-virtual {v0, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 90
    new-instance v0, Lcom/yelp/android/ui/activities/events/a$a;

    const/4 v2, 0x0

    invoke-direct {v0, p2, v2}, Lcom/yelp/android/ui/activities/events/a$a;-><init>(Landroid/view/View;Lcom/yelp/android/ui/activities/events/a$1;)V

    .line 91
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 96
    :goto_1
    invoke-direct {p0, p1, v0, v1}, Lcom/yelp/android/ui/activities/events/a;->a(ILcom/yelp/android/ui/activities/events/a$a;Landroid/content/Context;)V

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/events/a$a;

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x2

    return v0
.end method
