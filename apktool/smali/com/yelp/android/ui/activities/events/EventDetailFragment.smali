.class public Lcom/yelp/android/ui/activities/events/EventDetailFragment;
.super Lcom/yelp/android/ui/activities/support/YelpFragment;
.source "EventDetailFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/yelp/android/serializable/Event;)Lcom/yelp/android/ui/activities/events/EventDetailFragment;
    .locals 3

    .prologue
    .line 26
    new-instance v0, Lcom/yelp/android/ui/activities/events/EventDetailFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/events/EventDetailFragment;-><init>()V

    .line 27
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 28
    const-string/jumbo v2, "args_event"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 29
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/events/EventDetailFragment;->setArguments(Landroid/os/Bundle;)V

    .line 30
    return-object v0
.end method

.method private a(Landroid/view/View;Lcom/yelp/android/serializable/Event;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 44
    const v0, 0x7f0c019c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 45
    invoke-virtual {p2}, Lcom/yelp/android/serializable/Event;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 47
    invoke-virtual {p2}, Lcom/yelp/android/serializable/Event;->getTicketsUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Event;->getEventUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 48
    :cond_0
    const v0, 0x7f0c00ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 49
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 50
    const v0, 0x7f0c0281

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 51
    invoke-virtual {p2}, Lcom/yelp/android/serializable/Event;->getTicketsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 52
    const v1, 0x7f0705f2

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Event;->getTicketsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/util/StringUtils;->a(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 53
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    :cond_1
    invoke-virtual {p2}, Lcom/yelp/android/serializable/Event;->getEventUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 56
    const v0, 0x7f0c0280

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 57
    const v1, 0x7f070418

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Event;->getEventUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/util/StringUtils;->a(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 59
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    :cond_2
    :goto_0
    return-void

    .line 61
    :cond_3
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->EventDetails:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/b;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "args_event"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event;

    .line 74
    const-string/jumbo v1, "event_id"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 35
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 36
    const v1, 0x7f03009c

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 37
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "args_event"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/Event;

    .line 39
    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/events/EventDetailFragment;->a(Landroid/view/View;Lcom/yelp/android/serializable/Event;)V

    .line 40
    return-object v0
.end method
