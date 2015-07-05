.class public Lcom/yelp/android/ui/activities/events/al;
.super Ljava/lang/Object;
.source "EventSubscriptionController.java"


# instance fields
.field private a:Lcom/yelp/android/ui/activities/events/EventFragment;

.field private b:Landroid/view/View;

.field private c:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

.field private final d:Landroid/view/View$OnClickListener;

.field private final e:Landroid/view/View$OnClickListener;

.field private final f:Landroid/widget/AdapterView$OnItemSelectedListener;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/events/EventFragment;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    new-instance v0, Lcom/yelp/android/ui/activities/events/an;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/an;-><init>(Lcom/yelp/android/ui/activities/events/al;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/al;->d:Landroid/view/View$OnClickListener;

    .line 206
    new-instance v0, Lcom/yelp/android/ui/activities/events/ao;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/ao;-><init>(Lcom/yelp/android/ui/activities/events/al;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/al;->e:Landroid/view/View$OnClickListener;

    .line 217
    new-instance v0, Lcom/yelp/android/ui/activities/events/ap;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/ap;-><init>(Lcom/yelp/android/ui/activities/events/al;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/al;->f:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 37
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/al;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    .line 38
    if-eqz p2, :cond_0

    .line 39
    const-string/jumbo v0, "saved_rsvp_change"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/al;->c:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    sget-object v0, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->Unassigned:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/al;->c:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/events/al;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/al;->f:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/events/al;)Lcom/yelp/android/serializable/Event;
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/al;->e()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/events/al;)Lcom/yelp/android/ui/activities/events/EventFragment;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/al;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    return-object v0
.end method

.method private c()V
    .locals 8

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 141
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/al;->b:Landroid/view/View;

    const v3, 0x7f0c03cf

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 142
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/al;->b:Landroid/view/View;

    const v3, 0x7f0c03d1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 143
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/al;->b:Landroid/view/View;

    const v3, 0x7f0c03d5

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 144
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/al;->b:Landroid/view/View;

    const v3, 0x7f0c03d8

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 146
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/al;->e()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->getSubscriptionStatusEnum()Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    move-result-object v0

    sget-object v3, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->Unassigned:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    if-eq v0, v3, :cond_1

    const/4 v0, 0x1

    move v3, v0

    .line 150
    :goto_0
    if-eqz v3, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 151
    if-eqz v3, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 153
    if-eqz v3, :cond_4

    move v0, v2

    :goto_3
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 154
    if-eqz v3, :cond_5

    :goto_4
    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    .line 156
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/al;->d()V

    .line 158
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/al;->b()V

    .line 160
    :cond_0
    return-void

    :cond_1
    move v3, v2

    .line 146
    goto :goto_0

    :cond_2
    move v0, v2

    .line 150
    goto :goto_1

    :cond_3
    move v0, v2

    .line 151
    goto :goto_2

    :cond_4
    move v0, v1

    .line 153
    goto :goto_3

    :cond_5
    move v2, v1

    .line 154
    goto :goto_4
.end method

.method private d()V
    .locals 4

    .prologue
    .line 163
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/al;->b:Landroid/view/View;

    const v1, 0x7f0c03d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 168
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 171
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 172
    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/al;->e()Lcom/yelp/android/serializable/Event;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Event;->getSubscriptionStatusEnum()Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 174
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 181
    :cond_0
    new-instance v1, Lcom/yelp/android/ui/activities/events/am;

    invoke-direct {v1, p0, v0}, Lcom/yelp/android/ui/activities/events/am;-><init>(Lcom/yelp/android/ui/activities/events/al;Landroid/widget/Spinner;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->post(Ljava/lang/Runnable;)Z

    .line 188
    return-void

    .line 171
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private e()Lcom/yelp/android/serializable/Event;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/al;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->d()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/al;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 108
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/al;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->c()Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    move-result-object v0

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/al;->e()Lcom/yelp/android/serializable/Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/al;->c:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Ljava/lang/String;Lcom/yelp/android/serializable/Event$SubscriptionStatus;)V

    .line 110
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 47
    const-string/jumbo v0, "saved_rsvp_change"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/al;->c:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 49
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2

    .prologue
    .line 121
    sget-object v0, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->Unassigned:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/al;->c:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    .line 122
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/al;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cr;->a(Ljava/lang/CharSequence;I)V

    .line 123
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/al;->c()V

    .line 124
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Event$SubscriptionStatus;)V
    .locals 3

    .prologue
    .line 93
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/al;->c:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    .line 95
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/al;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 97
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/al;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->c()Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    move-result-object v0

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/al;->e()Lcom/yelp/android/serializable/Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/al;->c:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Ljava/lang/String;Lcom/yelp/android/serializable/Event$SubscriptionStatus;)V

    .line 104
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/al;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/al;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f070364

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x41a

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/events/EventFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/ui/util/bs;Landroid/view/ViewGroup;)V
    .locals 7

    .prologue
    const v6, 0x7f03010d

    const/4 v5, 0x0

    .line 61
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/al;->e()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->getRsvp()Lcom/yelp/android/serializable/EventRsvp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/al;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v6, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/al;->b:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/al;->b:Landroid/view/View;

    const v1, 0x7f0c03d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 69
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/al;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/al;->b:Landroid/view/View;

    const v1, 0x7f0c03d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 72
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/al;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/al;->b:Landroid/view/View;

    const v1, 0x7f0c03d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 76
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/al;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f03010e

    invoke-static {}, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->values()[Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 79
    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 80
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 82
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/al;->b:Landroid/view/View;

    const v1, 0x7f0c03da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/YelpToggleButton;

    .line 84
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/al;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/YelpToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    new-instance v0, Lcom/yelp/android/ui/util/h;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/al;->b:Landroid/view/View;

    aput-object v2, v1, v5

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/util/h;-><init>([Landroid/view/View;)V

    invoke-static {v0}, Lcom/yelp/android/ui/util/bw;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 89
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/al;->c()V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 127
    check-cast p1, Lcom/yelp/android/serializable/Event;

    .line 134
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/al;->e()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event;->getSubscriptionStatusEnum()Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/Event;->setSubscriptionStatus(Lcom/yelp/android/serializable/Event$SubscriptionStatus;)V

    .line 135
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/al;->e()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event;->getReminderNotification()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/Event;->setReminderNotification(Z)V

    .line 136
    sget-object v0, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->Unassigned:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/al;->c:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    .line 137
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/al;->c()V

    .line 138
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/al;->b:Landroid/view/View;

    const v1, 0x7f0c03da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/YelpToggleButton;

    .line 115
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/al;->e()Lcom/yelp/android/serializable/Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->getReminderNotification()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/YelpToggleButton;->setChecked(Z)V

    .line 116
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/al;->e()Lcom/yelp/android/serializable/Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->getSubscriptionStatusEnum()Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->Unassigned:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/YelpToggleButton;->setEnabled(Z)V

    .line 118
    return-void

    .line 116
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
