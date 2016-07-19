.class public Lcom/yelp/android/ui/activities/events/d;
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

    .line 211
    new-instance v0, Lcom/yelp/android/ui/activities/events/d$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/d$2;-><init>(Lcom/yelp/android/ui/activities/events/d;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/d;->d:Landroid/view/View$OnClickListener;

    .line 224
    new-instance v0, Lcom/yelp/android/ui/activities/events/d$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/d$3;-><init>(Lcom/yelp/android/ui/activities/events/d;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/d;->e:Landroid/view/View$OnClickListener;

    .line 236
    new-instance v0, Lcom/yelp/android/ui/activities/events/d$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/d$4;-><init>(Lcom/yelp/android/ui/activities/events/d;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/d;->f:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 37
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/d;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    .line 38
    if-eqz p2, :cond_0

    .line 39
    const-string/jumbo v0, "saved_rsvp_change"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/d;->c:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    sget-object v0, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->Unassigned:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/d;->c:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/events/d;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/d;->f:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/events/d;)Lcom/yelp/android/serializable/Event;
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/d;->e()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/events/d;)Lcom/yelp/android/ui/activities/events/EventFragment;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/d;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    return-object v0
.end method

.method private c()V
    .locals 8

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 156
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/d;->b:Landroid/view/View;

    const v3, 0x7f0f04b3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 157
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/d;->b:Landroid/view/View;

    const v3, 0x7f0f04b8

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 158
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/d;->b:Landroid/view/View;

    const v3, 0x7f0f04bc

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 159
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/d;->b:Landroid/view/View;

    const v3, 0x7f0f04bf

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 161
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/d;->e()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->h()Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    move-result-object v0

    sget-object v3, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->Unassigned:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    if-eq v0, v3, :cond_1

    const/4 v0, 0x1

    move v3, v0

    .line 166
    :goto_0
    if-eqz v3, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 167
    if-eqz v3, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 169
    if-eqz v3, :cond_4

    move v0, v2

    :goto_3
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 170
    if-eqz v3, :cond_5

    :goto_4
    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    .line 172
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/d;->d()V

    .line 174
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/d;->b()V

    .line 176
    :cond_0
    return-void

    :cond_1
    move v3, v2

    .line 161
    goto :goto_0

    :cond_2
    move v0, v2

    .line 166
    goto :goto_1

    :cond_3
    move v0, v2

    .line 167
    goto :goto_2

    :cond_4
    move v0, v1

    .line 169
    goto :goto_3

    :cond_5
    move v2, v1

    .line 170
    goto :goto_4
.end method

.method private d()V
    .locals 4

    .prologue
    .line 179
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/d;->b:Landroid/view/View;

    const v1, 0x7f0f04be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 184
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 187
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 188
    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/d;->e()Lcom/yelp/android/serializable/Event;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Event;->h()Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 190
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 197
    :cond_0
    new-instance v1, Lcom/yelp/android/ui/activities/events/d$1;

    invoke-direct {v1, p0, v0}, Lcom/yelp/android/ui/activities/events/d$1;-><init>(Lcom/yelp/android/ui/activities/events/d;Landroid/widget/Spinner;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->post(Ljava/lang/Runnable;)Z

    .line 205
    return-void

    .line 187
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private e()Lcom/yelp/android/serializable/Event;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/d;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->d()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/d;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 121
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/d;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->c()Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    move-result-object v0

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/d;->e()Lcom/yelp/android/serializable/Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->I()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/d;->c:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Ljava/lang/String;Lcom/yelp/android/serializable/Event$SubscriptionStatus;)V

    .line 124
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 49
    const-string/jumbo v0, "saved_rsvp_change"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/d;->c:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 51
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2

    .prologue
    .line 136
    sget-object v0, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->Unassigned:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/d;->c:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    .line 137
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/d;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    .line 138
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/d;->c()V

    .line 139
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Event$SubscriptionStatus;)V
    .locals 4

    .prologue
    .line 102
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/d;->c:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    .line 104
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/d;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 106
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/d;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->c()Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    move-result-object v0

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/d;->e()Lcom/yelp/android/serializable/Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->I()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/d;->c:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Ljava/lang/String;Lcom/yelp/android/serializable/Event$SubscriptionStatus;)V

    .line 117
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/d;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/d;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f07020a

    const v3, 0x7f0703a0

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/app/Activity;II)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x423

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/events/EventFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/ui/util/aj;Landroid/view/ViewGroup;)V
    .locals 7

    .prologue
    const v6, 0x7f03016e

    const/4 v5, 0x0

    .line 63
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/d;->e()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->L()Lcom/yelp/android/serializable/EventRsvp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/d;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v6, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/d;->b:Landroid/view/View;

    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/d;->b:Landroid/view/View;

    const v1, 0x7f0f04ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 74
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/d;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/d;->b:Landroid/view/View;

    const v1, 0x7f0f04bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 77
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/d;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/d;->b:Landroid/view/View;

    const v1, 0x7f0f04be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 81
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/d;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f03016f

    invoke-static {}, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->values()[Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 86
    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 87
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/d;->b:Landroid/view/View;

    const v1, 0x7f0f04c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/YelpToggleButton;

    .line 92
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/d;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/YelpToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    new-instance v0, Lcom/yelp/android/ui/util/e;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/d;->b:Landroid/view/View;

    aput-object v2, v1, v5

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    invoke-static {v0}, Lcom/yelp/android/ui/util/aj$c;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 98
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/d;->c()V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 142
    check-cast p1, Lcom/yelp/android/serializable/Event;

    .line 149
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/d;->e()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event;->h()Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/Event;->a(Lcom/yelp/android/serializable/Event$SubscriptionStatus;)V

    .line 150
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/d;->e()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event;->r()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/Event;->a(Z)V

    .line 151
    sget-object v0, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->Unassigned:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/d;->c:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    .line 152
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/d;->c()V

    .line 153
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/d;->b:Landroid/view/View;

    const v1, 0x7f0f04c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/YelpToggleButton;

    .line 130
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/d;->e()Lcom/yelp/android/serializable/Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->r()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/YelpToggleButton;->setChecked(Z)V

    .line 131
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/d;->e()Lcom/yelp/android/serializable/Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->h()Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->Unassigned:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/YelpToggleButton;->setEnabled(Z)V

    .line 133
    return-void

    .line 131
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
