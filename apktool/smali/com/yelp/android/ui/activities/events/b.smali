.class public Lcom/yelp/android/ui/activities/events/b;
.super Lcom/yelp/android/ui/util/w;
.source "EventAttendeesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/w",
        "<",
        "Lcom/yelp/android/serializable/User;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/serializable/EventAttendees;


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/EventAttendees;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/b;->a:Lcom/yelp/android/serializable/EventAttendees;

    .line 33
    if-eqz p2, :cond_0

    .line 34
    const-string/jumbo v0, "adapter_attendees_list"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 36
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/b;->a(Ljava/util/List;)V

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/b;->a:Lcom/yelp/android/serializable/EventAttendees;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/EventAttendees;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/b;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method private a(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/events/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030164

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 93
    check-cast v0, Lcom/yelp/android/ui/widgets/SpannedTextView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090154

    invoke-virtual {v0, v2, v3}, Lcom/yelp/android/ui/widgets/SpannedTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 101
    :goto_0
    return-object v1

    .line 95
    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0301bb

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 98
    new-instance v0, Lcom/yelp/android/ui/util/ap$b;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/util/ap$b;-><init>(Landroid/view/View;Z)V

    .line 99
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private b(I)Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 132
    if-nez p1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v1

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/b;->a:Lcom/yelp/android/serializable/EventAttendees;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/EventAttendees;->a()[I

    move-result-object v0

    aget v0, v0, v3

    move v2, v0

    move v0, v1

    .line 137
    :goto_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/b;->d()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 138
    add-int/lit8 v4, v2, 0x1

    if-eq p1, v4, :cond_0

    .line 142
    iget-object v4, p0, Lcom/yelp/android/ui/activities/events/b;->a:Lcom/yelp/android/serializable/EventAttendees;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/EventAttendees;->a()[I

    move-result-object v4

    aget v4, v4, v0

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v3

    .line 144
    goto :goto_0
.end method

.method private c(I)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 154
    move v1, v2

    move v0, v2

    .line 155
    :goto_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/b;->d()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 156
    iget-object v3, p0, Lcom/yelp/android/ui/activities/events/b;->a:Lcom/yelp/android/serializable/EventAttendees;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/EventAttendees;->a()[I

    move-result-object v3

    aget v3, v3, v1

    add-int/2addr v3, v0

    .line 157
    if-gt p1, v3, :cond_0

    .line 158
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/b;->a:Lcom/yelp/android/serializable/EventAttendees;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/EventAttendees;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 159
    iget-object v3, p0, Lcom/yelp/android/ui/activities/events/b;->a:Lcom/yelp/android/serializable/EventAttendees;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/EventAttendees;->a()[I

    move-result-object v3

    aget v1, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    .line 161
    const v4, 0x7f0706ca

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    const/4 v0, 0x1

    aput-object v1, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 165
    :goto_1
    return-object v0

    .line 155
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_0

    .line 165
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private d()I
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/events/b;->d(I)I

    move-result v0

    return v0
.end method

.method private d(I)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 187
    .line 188
    const/4 v1, 0x1

    move v2, v0

    .line 189
    :goto_0
    iget-object v3, p0, Lcom/yelp/android/ui/activities/events/b;->a:Lcom/yelp/android/serializable/EventAttendees;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/EventAttendees;->a()[I

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 190
    iget-object v3, p0, Lcom/yelp/android/ui/activities/events/b;->a:Lcom/yelp/android/serializable/EventAttendees;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/EventAttendees;->a()[I

    move-result-object v3

    aget v3, v3, v0

    add-int/2addr v2, v3

    .line 191
    add-int v3, v2, v0

    if-le p1, v3, :cond_0

    .line 192
    add-int/lit8 v1, v1, 0x1

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_0
    return v1
.end method


# virtual methods
.method public a(I)Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/events/b;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/events/b;->d(I)I

    move-result v0

    sub-int v0, p1, v0

    .line 51
    invoke-super {p0, v0}, Lcom/yelp/android/ui/util/w;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    .line 53
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 105
    const-string/jumbo v0, "adapter_attendees_list"

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/b;->a()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 107
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    const/16 v1, 0x14

    .line 111
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 112
    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/b;->a:Lcom/yelp/android/serializable/EventAttendees;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/EventAttendees;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 115
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 116
    :goto_0
    if-ge v0, v1, :cond_0

    .line 117
    iget-object v3, p0, Lcom/yelp/android/ui/activities/events/b;->a:Lcom/yelp/android/serializable/EventAttendees;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/EventAttendees;->e()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_0
    return-object v2
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/b;->a:Lcom/yelp/android/serializable/EventAttendees;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/EventAttendees;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Lcom/yelp/android/ui/util/w;->getCount()I

    move-result v0

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/b;->d()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/events/b;->a(I)Lcom/yelp/android/serializable/User;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/events/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x1

    .line 61
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 71
    if-nez p2, :cond_1

    .line 72
    invoke-direct {p0, p1, p3}, Lcom/yelp/android/ui/activities/events/b;->a(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 75
    :goto_0
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/events/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 76
    check-cast v0, Lcom/yelp/android/ui/widgets/SpannedTextView;

    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/events/b;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/SpannedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :goto_1
    return-object v1

    .line 78
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/ap$b;

    .line 79
    iget-object v2, v0, Lcom/yelp/android/ui/util/ap$b;->n:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/events/b;->a(I)Lcom/yelp/android/serializable/User;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/ap$b;->a(Lcom/yelp/android/serializable/DisplayableAsUserBadge;)V

    goto :goto_1

    :cond_1
    move-object v1, p2

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x2

    return v0
.end method
