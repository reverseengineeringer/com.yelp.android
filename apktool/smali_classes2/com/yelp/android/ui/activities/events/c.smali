.class public Lcom/yelp/android/ui/activities/events/c;
.super Ljava/lang/Object;
.source "EventRsvpController.java"


# instance fields
.field private a:Lcom/yelp/android/ui/activities/events/EventFragment;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/ViewGroup;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/Button;

.field private l:Z

.field private m:Z

.field private final n:Landroid/view/View$OnClickListener;

.field private final o:Landroid/view/View$OnClickListener;

.field private final p:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/events/EventFragment;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/events/c;->l:Z

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/events/c;->m:Z

    .line 362
    new-instance v0, Lcom/yelp/android/ui/activities/events/c$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/c$2;-><init>(Lcom/yelp/android/ui/activities/events/c;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->n:Landroid/view/View$OnClickListener;

    .line 370
    new-instance v0, Lcom/yelp/android/ui/activities/events/c$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/c$3;-><init>(Lcom/yelp/android/ui/activities/events/c;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->o:Landroid/view/View$OnClickListener;

    .line 388
    new-instance v0, Lcom/yelp/android/ui/activities/events/c$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/c$4;-><init>(Lcom/yelp/android/ui/activities/events/c;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->p:Landroid/view/View$OnClickListener;

    .line 65
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/c;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    .line 66
    if-eqz p2, :cond_0

    .line 67
    const-string/jumbo v0, "is_rsvp_button_enabled"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/events/c;->l:Z

    .line 69
    const-string/jumbo v0, "should_open_rsvp_flow"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/events/c;->m:Z

    .line 70
    const-string/jumbo v0, "saved_new_guests"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->b:Ljava/util/ArrayList;

    .line 72
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/events/c;)Lcom/yelp/android/ui/activities/events/EventFragment;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/events/c;Z)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/events/c;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 348
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b6

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/c;->d:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->e:Landroid/view/View;

    .line 353
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/c;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 354
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->e:Landroid/view/View;

    const v1, 0x7f0f00e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 355
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 299
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->i:Landroid/widget/TextView;

    const-string/jumbo v1, "\n"

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f080013

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 305
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/c;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/c;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->L()Lcom/yelp/android/serializable/EventRsvp;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->a(Lcom/yelp/android/serializable/EventRsvp;Z)Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;

    move-result-object v0

    .line 311
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/c;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 312
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/c;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/events/c;)Lcom/yelp/android/serializable/Event;
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/c;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/events/c;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/events/c;->m:Z

    return p1
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/events/c;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/c;->i()V

    return-void
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/c;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->K()Lcom/yelp/android/serializable/Event$EventType;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Event$EventType;->ELITE:Lcom/yelp/android/serializable/Event$EventType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 176
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 177
    iput-object v1, p0, Lcom/yelp/android/ui/activities/events/c;->e:Landroid/view/View;

    .line 178
    iput-object v1, p0, Lcom/yelp/android/ui/activities/events/c;->f:Landroid/view/View;

    .line 179
    iput-object v1, p0, Lcom/yelp/android/ui/activities/events/c;->g:Landroid/view/View;

    .line 180
    iput-object v1, p0, Lcom/yelp/android/ui/activities/events/c;->i:Landroid/widget/TextView;

    .line 181
    iput-object v1, p0, Lcom/yelp/android/ui/activities/events/c;->h:Landroid/widget/TextView;

    .line 182
    iput-object v1, p0, Lcom/yelp/android/ui/activities/events/c;->k:Landroid/widget/Button;

    .line 183
    iput-object v1, p0, Lcom/yelp/android/ui/activities/events/c;->j:Landroid/widget/Button;

    .line 185
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 188
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/c;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->L()Lcom/yelp/android/serializable/EventRsvp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/EventRsvp;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 189
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/c;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/c;->e()V

    .line 191
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->c:Landroid/widget/TextView;

    const v1, 0x7f070216

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 196
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->k:Landroid/widget/Button;

    const v1, 0x7f070193

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 197
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->k:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/events/c;->l:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 199
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/c;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->L()Lcom/yelp/android/serializable/EventRsvp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/EventRsvp;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/events/c;->a(Ljava/lang/String;)V

    .line 200
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/c;->g()V

    .line 201
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/c;->h()V

    .line 239
    :cond_1
    :goto_1
    return-void

    .line 193
    :cond_2
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/c;->f()V

    .line 194
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->c:Landroid/widget/TextView;

    const v1, 0x7f0705cb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 203
    :cond_3
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    .line 206
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/c;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->g()Z

    move-result v0

    if-nez v0, :cond_4

    .line 207
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->c:Landroid/widget/TextView;

    const v1, 0x7f07028a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 208
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    const v1, 0x7f070282

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/events/c;->a(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->e:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ui/activities/events/c$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/events/c$1;-><init>(Lcom/yelp/android/ui/activities/events/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->e:Landroid/view/View;

    const v1, 0x7f0f021c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 225
    :cond_4
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/c;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->L()Lcom/yelp/android/serializable/EventRsvp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/EventRsvp;->a()Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/c;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;->getRsvpTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    invoke-virtual {v0}, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;->canUserRSVP()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 228
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/c;->f()V

    .line 229
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/c;->k:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;->getRsvpButtonText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 234
    :cond_5
    sget-object v1, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;->Open:Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;

    if-eq v0, v1, :cond_1

    .line 235
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/c;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->L()Lcom/yelp/android/serializable/EventRsvp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/EventRsvp;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/events/c;->a(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private e()V
    .locals 4

    .prologue
    .line 242
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03016a

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/c;->d:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 250
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 251
    const v0, 0x7f0f04b1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->j:Landroid/widget/Button;

    .line 252
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->j:Landroid/widget/Button;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/c;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    const v0, 0x7f0f04b2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->k:Landroid/widget/Button;

    .line 254
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->k:Landroid/widget/Button;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/c;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 258
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03016c

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/c;->d:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/c;->d:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 264
    const v1, 0x7f0f04b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->k:Landroid/widget/Button;

    .line 265
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->k:Landroid/widget/Button;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/c;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 269
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b7

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/c;->d:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->f:Landroid/view/View;

    .line 277
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/c;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 278
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->f:Landroid/view/View;

    const v1, 0x7f0f0285

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 279
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/co;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    .line 283
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 284
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/c;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->L()Lcom/yelp/android/serializable/EventRsvp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/EventRsvp;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b5

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/c;->d:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->g:Landroid/view/View;

    .line 289
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/c;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 290
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->g:Landroid/view/View;

    const v1, 0x7f0f02db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->i:Landroid/widget/TextView;

    .line 291
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->g:Landroid/view/View;

    const v1, 0x7f0f02da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->h:Landroid/widget/TextView;

    .line 292
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/c;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/c;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->L()Lcom/yelp/android/serializable/EventRsvp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/EventRsvp;->g()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/events/c;->a(Ljava/util/List;)V

    .line 296
    :cond_0
    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 328
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/events/c;->m:Z

    .line 332
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/c;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->L()Lcom/yelp/android/serializable/EventRsvp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/EventRsvp;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v0, v3, v2}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 334
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->c()Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    move-result-object v0

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/c;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->b(Lcom/yelp/android/serializable/Event;)V

    .line 345
    :goto_0
    return-void

    .line 337
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/c;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->L()Lcom/yelp/android/serializable/EventRsvp;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Lcom/yelp/android/serializable/EventRsvp;->b()I

    move-result v1

    if-gtz v1, :cond_1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/EventRsvp;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 340
    :cond_1
    invoke-direct {p0, v2}, Lcom/yelp/android/ui/activities/events/c;->a(Z)V

    goto :goto_0

    .line 342
    :cond_2
    invoke-virtual {p0, v3, v3}, Lcom/yelp/android/ui/activities/events/c;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private j()Lcom/yelp/android/serializable/Event;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->d()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/c;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->L()Lcom/yelp/android/serializable/EventRsvp;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/EventRsvp;->a(Ljava/util/List;)V

    .line 136
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->b:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/events/c;->a(Ljava/util/List;)V

    .line 137
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->k:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 76
    const-string/jumbo v0, "is_rsvp_button_enabled"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/c;->k:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 78
    :cond_0
    const-string/jumbo v0, "should_open_rsvp_flow"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/events/c;->m:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 79
    const-string/jumbo v0, "saved_new_guests"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/c;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 80
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2

    .prologue
    .line 121
    instance-of v0, p1, Lcom/yelp/android/appdata/webrequests/ApiException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ApiException;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiException;->getResultCode()I

    move-result v0

    const/16 v1, 0x6a4

    if-ne v0, v1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->k:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 126
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    .line 127
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/EventRsvp;)V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/c;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Event;->a(Lcom/yelp/android/serializable/EventRsvp;)V

    .line 131
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/c;->d()V

    .line 132
    return-void
.end method

.method public a(Lcom/yelp/android/ui/util/aj;Landroid/view/ViewGroup;)V
    .locals 7

    .prologue
    const v6, 0x7f03016b

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 90
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 93
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v1

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/c;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->u()Lcom/yelp/android/serializable/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/User;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/co;->a(Ljava/lang/String;)Z

    move-result v1

    .line 97
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/c;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->L()Lcom/yelp/android/serializable/EventRsvp;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/c;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->L()Lcom/yelp/android/serializable/EventRsvp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/EventRsvp;->a()Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;->Locked:Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;

    if-eq v2, v3, :cond_0

    if-eqz v1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iput-object v4, p0, Lcom/yelp/android/ui/activities/events/c;->e:Landroid/view/View;

    .line 107
    iput-object v4, p0, Lcom/yelp/android/ui/activities/events/c;->f:Landroid/view/View;

    .line 108
    iput-object v4, p0, Lcom/yelp/android/ui/activities/events/c;->g:Landroid/view/View;

    .line 110
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v6, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 112
    const v0, 0x7f0f04b4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->d:Landroid/view/ViewGroup;

    .line 113
    const v0, 0x7f0f04b3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->c:Landroid/widget/TextView;

    .line 114
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/c;->d()V

    .line 115
    new-instance v0, Lcom/yelp/android/ui/util/e;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/View;

    aput-object v1, v2, v5

    invoke-direct {v0, v2}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    invoke-static {v0}, Lcom/yelp/android/ui/util/aj$c;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/c;->b:Ljava/util/ArrayList;

    .line 141
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 142
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->c()Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    move-result-object v0

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/c;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Lcom/yelp/android/serializable/Event;Ljava/util/ArrayList;)V

    .line 143
    return-void
.end method

.method public a(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 147
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->c()Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    move-result-object v0

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/c;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Lcom/yelp/android/serializable/Event;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 151
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    .line 152
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/c;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->u()Lcom/yelp/android/serializable/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/co;->a(Ljava/lang/String;)Z

    move-result v1

    .line 155
    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/events/c;->m:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/c;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->L()Lcom/yelp/android/serializable/EventRsvp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/EventRsvp;->c()Z

    move-result v2

    if-nez v2, :cond_3

    .line 157
    if-eqz v1, :cond_1

    .line 158
    const v0, 0x7f0702b0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(II)V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->g()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    :cond_2
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/c;->i()V

    goto :goto_0

    .line 164
    :cond_3
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/events/c;->m:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/c;->d()V

    goto :goto_0
.end method
