.class public Lcom/yelp/android/ui/activities/events/af;
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

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/events/af;->l:Z

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/events/af;->m:Z

    .line 332
    new-instance v0, Lcom/yelp/android/ui/activities/events/ah;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/ah;-><init>(Lcom/yelp/android/ui/activities/events/af;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->n:Landroid/view/View$OnClickListener;

    .line 339
    new-instance v0, Lcom/yelp/android/ui/activities/events/ai;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/ai;-><init>(Lcom/yelp/android/ui/activities/events/af;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->o:Landroid/view/View$OnClickListener;

    .line 351
    new-instance v0, Lcom/yelp/android/ui/activities/events/aj;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/aj;-><init>(Lcom/yelp/android/ui/activities/events/af;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->p:Landroid/view/View$OnClickListener;

    .line 64
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/af;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    .line 65
    if-eqz p2, :cond_0

    .line 66
    const-string/jumbo v0, "is_rsvp_button_enabled"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/events/af;->l:Z

    .line 68
    const-string/jumbo v0, "should_open_rsvp_flow"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/events/af;->m:Z

    .line 69
    const-string/jumbo v0, "saved_new_guests"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->b:Ljava/util/ArrayList;

    .line 71
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/events/af;)Lcom/yelp/android/ui/activities/events/EventFragment;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/events/af;Z)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/events/af;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 321
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03009e

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/af;->d:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->e:Landroid/view/View;

    .line 323
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/af;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 324
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->e:Landroid/view/View;

    const v1, 0x7f0c00a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 325
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
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
    .line 274
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->i:Landroid/widget/TextView;

    const-string/jumbo v1, "\n"

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e0013

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/af;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/af;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->getRsvp()Lcom/yelp/android/serializable/EventRsvp;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->a(Lcom/yelp/android/serializable/EventRsvp;Z)Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/af;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 286
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/af;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/events/af;)Lcom/yelp/android/serializable/Event;
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/af;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/events/af;Z)Z
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/events/af;->m:Z

    return p1
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/events/af;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/af;->i()V

    return-void
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/af;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->getType()Lcom/yelp/android/serializable/Event$EventType;

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

    .line 171
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 172
    iput-object v1, p0, Lcom/yelp/android/ui/activities/events/af;->e:Landroid/view/View;

    .line 173
    iput-object v1, p0, Lcom/yelp/android/ui/activities/events/af;->f:Landroid/view/View;

    .line 174
    iput-object v1, p0, Lcom/yelp/android/ui/activities/events/af;->g:Landroid/view/View;

    .line 175
    iput-object v1, p0, Lcom/yelp/android/ui/activities/events/af;->i:Landroid/widget/TextView;

    .line 176
    iput-object v1, p0, Lcom/yelp/android/ui/activities/events/af;->h:Landroid/widget/TextView;

    .line 177
    iput-object v1, p0, Lcom/yelp/android/ui/activities/events/af;->k:Landroid/widget/Button;

    .line 178
    iput-object v1, p0, Lcom/yelp/android/ui/activities/events/af;->j:Landroid/widget/Button;

    .line 180
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 183
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/af;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->getRsvp()Lcom/yelp/android/serializable/EventRsvp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/EventRsvp;->getUserHasReplied()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 184
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/af;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->hasPartyPass()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/af;->e()V

    .line 186
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->c:Landroid/widget/TextView;

    const v1, 0x7f0701cb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 191
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->k:Landroid/widget/Button;

    const v1, 0x7f070114

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 192
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->k:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/events/af;->l:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 194
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/af;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->getRsvp()Lcom/yelp/android/serializable/EventRsvp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/EventRsvp;->getEventRsvpStatusText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/events/af;->a(Ljava/lang/String;)V

    .line 195
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/af;->g()V

    .line 196
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/af;->h()V

    .line 230
    :cond_1
    :goto_1
    return-void

    .line 188
    :cond_2
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/af;->f()V

    .line 189
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->c:Landroid/widget/TextView;

    const v1, 0x7f0705e3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 198
    :cond_3
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    .line 201
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/af;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->k()Z

    move-result v0

    if-nez v0, :cond_4

    .line 202
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->c:Landroid/widget/TextView;

    const v1, 0x7f070237

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 203
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    const v1, 0x7f070231

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/events/af;->a(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->e:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ui/activities/events/ag;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/events/ag;-><init>(Lcom/yelp/android/ui/activities/events/af;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->e:Landroid/view/View;

    const v1, 0x7f0c01e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 216
    :cond_4
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/af;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->getRsvp()Lcom/yelp/android/serializable/EventRsvp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/EventRsvp;->getStatus()Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/af;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;->getRsvpTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    invoke-virtual {v0}, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;->canUserRSVP()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 219
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/af;->f()V

    .line 220
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/af;->k:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;->getRsvpButtonText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 225
    :cond_5
    sget-object v1, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;->Open:Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;

    if-eq v0, v1, :cond_1

    .line 226
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/af;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->getRsvp()Lcom/yelp/android/serializable/EventRsvp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/EventRsvp;->getEventRsvpStatusText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/events/af;->a(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private e()V
    .locals 4

    .prologue
    .line 233
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03010a

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/af;->d:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 235
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 236
    const v0, 0x7f0c03cd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->j:Landroid/widget/Button;

    .line 237
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->j:Landroid/widget/Button;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/af;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    const v0, 0x7f0c03ce

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->k:Landroid/widget/Button;

    .line 239
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->k:Landroid/widget/Button;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/af;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 243
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03010c

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/af;->d:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 245
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/af;->d:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 246
    const v1, 0x7f0c03ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->k:Landroid/widget/Button;

    .line 247
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->k:Landroid/widget/Button;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/af;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 251
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03009f

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/af;->d:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->f:Landroid/view/View;

    .line 254
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/af;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 255
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->f:Landroid/view/View;

    const v1, 0x7f0c023e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 256
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/dc;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    .line 260
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 261
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/af;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->getRsvp()Lcom/yelp/android/serializable/EventRsvp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/EventRsvp;->getUserGuests()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 262
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03009d

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/af;->d:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->g:Landroid/view/View;

    .line 264
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/af;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 265
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->g:Landroid/view/View;

    const v1, 0x7f0c0284

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->i:Landroid/widget/TextView;

    .line 266
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->g:Landroid/view/View;

    const v1, 0x7f0c0283

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->h:Landroid/widget/TextView;

    .line 267
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/af;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/af;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->getRsvp()Lcom/yelp/android/serializable/EventRsvp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/EventRsvp;->getUserGuests()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/events/af;->a(Ljava/util/List;)V

    .line 271
    :cond_0
    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 301
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/events/af;->m:Z

    .line 305
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/af;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->getRsvp()Lcom/yelp/android/serializable/EventRsvp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/EventRsvp;->getUserHasReplied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v0, v3, v2}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 307
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->c()Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    move-result-object v0

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/af;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->b(Lcom/yelp/android/serializable/Event;)V

    .line 318
    :goto_0
    return-void

    .line 310
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/af;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->getRsvp()Lcom/yelp/android/serializable/EventRsvp;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Lcom/yelp/android/serializable/EventRsvp;->getGuestsAllowed()I

    move-result v1

    if-gtz v1, :cond_1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/EventRsvp;->getFreeformQuestion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 313
    :cond_1
    invoke-direct {p0, v2}, Lcom/yelp/android/ui/activities/events/af;->a(Z)V

    goto :goto_0

    .line 315
    :cond_2
    invoke-virtual {p0, v3, v3}, Lcom/yelp/android/ui/activities/events/af;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private j()Lcom/yelp/android/serializable/Event;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->d()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/af;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->getRsvp()Lcom/yelp/android/serializable/EventRsvp;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/af;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/EventRsvp;->setUserGuests(Ljava/util/List;)V

    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->b:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/events/af;->a(Ljava/util/List;)V

    .line 131
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->k:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 75
    const-string/jumbo v0, "is_rsvp_button_enabled"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/af;->k:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 77
    :cond_0
    const-string/jumbo v0, "should_open_rsvp_flow"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/events/af;->m:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 78
    const-string/jumbo v0, "saved_new_guests"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/af;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 79
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2

    .prologue
    .line 116
    instance-of v0, p1, Lcom/yelp/android/appdata/webrequests/ApiException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ApiException;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiException;->getResultCode()I

    move-result v0

    const/16 v1, 0x6a4

    if-ne v0, v1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->k:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 120
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cr;->a(Ljava/lang/CharSequence;I)V

    .line 121
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/EventRsvp;)V
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/af;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Event;->setRsvp(Lcom/yelp/android/serializable/EventRsvp;)V

    .line 125
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/af;->d()V

    .line 126
    return-void
.end method

.method public a(Lcom/yelp/android/ui/util/bs;Landroid/view/ViewGroup;)V
    .locals 7

    .prologue
    const v6, 0x7f03010b

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 92
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v1

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/af;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->getUser()Lcom/yelp/android/serializable/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/User;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/dc;->a(Ljava/lang/String;)Z

    move-result v1

    .line 94
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/af;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->getRsvp()Lcom/yelp/android/serializable/EventRsvp;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/af;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->getRsvp()Lcom/yelp/android/serializable/EventRsvp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/EventRsvp;->getStatus()Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;->Locked:Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;

    if-eq v2, v3, :cond_0

    if-eqz v1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iput-object v4, p0, Lcom/yelp/android/ui/activities/events/af;->e:Landroid/view/View;

    .line 103
    iput-object v4, p0, Lcom/yelp/android/ui/activities/events/af;->f:Landroid/view/View;

    .line 104
    iput-object v4, p0, Lcom/yelp/android/ui/activities/events/af;->g:Landroid/view/View;

    .line 106
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v6, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 108
    const v0, 0x7f0c03d0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->d:Landroid/view/ViewGroup;

    .line 109
    const v0, 0x7f0c03cf

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->c:Landroid/widget/TextView;

    .line 110
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/af;->d()V

    .line 111
    new-instance v0, Lcom/yelp/android/ui/util/h;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/View;

    aput-object v1, v2, v5

    invoke-direct {v0, v2}, Lcom/yelp/android/ui/util/h;-><init>([Landroid/view/View;)V

    invoke-static {v0}, Lcom/yelp/android/ui/util/bw;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

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
    .line 134
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/af;->b:Ljava/util/ArrayList;

    .line 135
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 136
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->c()Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    move-result-object v0

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/af;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Lcom/yelp/android/serializable/Event;Ljava/util/ArrayList;)V

    .line 137
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
    .line 140
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 141
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/af;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->c()Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    move-result-object v0

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/af;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Lcom/yelp/android/serializable/Event;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 145
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    .line 146
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/af;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->getUser()Lcom/yelp/android/serializable/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dc;->a(Ljava/lang/String;)Z

    move-result v1

    .line 150
    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/events/af;->m:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/af;->j()Lcom/yelp/android/serializable/Event;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->getRsvp()Lcom/yelp/android/serializable/EventRsvp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/EventRsvp;->getUserHasReplied()Z

    move-result v2

    if-nez v2, :cond_3

    .line 152
    if-eqz v1, :cond_1

    .line 153
    const v0, 0x7f070258

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cr;->a(II)V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->k()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/af;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    :cond_2
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/af;->i()V

    goto :goto_0

    .line 159
    :cond_3
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/events/af;->m:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->k()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/af;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/af;->d()V

    goto :goto_0
.end method
