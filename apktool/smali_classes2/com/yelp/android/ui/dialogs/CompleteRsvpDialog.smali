.class public Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "CompleteRsvpDialog.java"


# instance fields
.field private a:Lcom/yelp/android/serializable/EventRsvp;

.field private b:Z

.field private c:Landroid/view/ViewGroup;

.field private d:Landroid/widget/EditText;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method public static a(Lcom/yelp/android/serializable/EventRsvp;Z)Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;
    .locals 3

    .prologue
    .line 37
    new-instance v0, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;

    invoke-direct {v0}, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;-><init>()V

    .line 38
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 39
    const-string/jumbo v2, "args_event_rsvp"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 40
    const-string/jumbo v2, "args_update_GUESTS"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 41
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->setArguments(Landroid/os/Bundle;)V

    .line 42
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;Z)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->a(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private a(Z)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->c:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    :goto_0
    return-object v0

    .line 174
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 175
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 176
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 178
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 179
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_2

    .line 180
    :cond_1
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 183
    goto :goto_0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->f:Landroid/view/ViewGroup;

    const v1, 0x7f0f0285

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 109
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/co;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    return-void
.end method

.method private b()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 113
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->f:Landroid/view/ViewGroup;

    const v1, 0x7f0f0286

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 114
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->a:Lcom/yelp/android/serializable/EventRsvp;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/EventRsvp;->b()I

    move-result v1

    if-nez v1, :cond_1

    .line 115
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    :cond_0
    return-void

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->f:Landroid/view/ViewGroup;

    const v2, 0x7f0f0287

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->c:Landroid/view/ViewGroup;

    .line 120
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->a:Lcom/yelp/android/serializable/EventRsvp;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/EventRsvp;->g()Ljava/util/List;

    move-result-object v1

    .line 121
    iget-boolean v2, p0, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->b:Z

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v3, v1

    .line 122
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f080000

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v4, v5

    .line 127
    :goto_1
    if-ge v4, v3, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030091

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 144
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 145
    const v2, 0x7f07031b

    new-array v6, v8, [Ljava/lang/Object;

    add-int/lit8 v7, v4, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {p0, v2, v6}, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 149
    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 150
    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->e:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 127
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 121
    :cond_3
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->a:Lcom/yelp/android/serializable/EventRsvp;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/EventRsvp;->b()I

    move-result v1

    move v3, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->b:Z

    return v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->a:Lcom/yelp/android/serializable/EventRsvp;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/EventRsvp;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->b:Z

    if-eqz v0, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->f:Landroid/view/ViewGroup;

    const v1, 0x7f0f0288

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 163
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 164
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->f:Landroid/view/ViewGroup;

    const v1, 0x7f0f0289

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 165
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->a:Lcom/yelp/android/serializable/EventRsvp;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/EventRsvp;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->f:Landroid/view/ViewGroup;

    const v1, 0x7f0f028a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->d:Landroid/widget/EditText;

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "args_event_rsvp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/EventRsvp;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->a:Lcom/yelp/android/serializable/EventRsvp;

    .line 52
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "args_update_GUESTS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->b:Z

    .line 54
    if-eqz p1, :cond_0

    .line 55
    const-string/jumbo v0, "saved_guest_names"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->e:Ljava/util/List;

    .line 62
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030092

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->f:Landroid/view/ViewGroup;

    .line 68
    new-instance v1, Lcom/yelp/android/ui/dialogs/d;

    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/yelp/android/ui/dialogs/d;-><init>(Landroid/content/Context;)V

    .line 69
    iget-boolean v0, p0, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->b:Z

    if-eqz v0, :cond_2

    const v0, 0x7f070626

    :goto_1
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/dialogs/d;->a(I)Lcom/yelp/android/ui/dialogs/d;

    .line 70
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->f:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/dialogs/d;->a(Landroid/view/View;)Lcom/yelp/android/ui/dialogs/d;

    .line 71
    iget-boolean v0, p0, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->b:Z

    if-eqz v0, :cond_3

    const v0, 0x7f070625

    :goto_2
    new-instance v2, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog$1;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog$1;-><init>(Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;)V

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/dialogs/d;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/yelp/android/ui/dialogs/d;

    .line 86
    const v0, 0x1040009

    new-instance v2, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog$2;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog$2;-><init>(Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;)V

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/dialogs/d;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/yelp/android/ui/dialogs/d;

    .line 95
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->a()V

    .line 96
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->b()V

    .line 97
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->c()V

    .line 98
    invoke-virtual {v1}, Lcom/yelp/android/ui/dialogs/d;->a()Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 56
    :cond_0
    iget-boolean v0, p0, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->b:Z

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->a:Lcom/yelp/android/serializable/EventRsvp;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/EventRsvp;->g()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->e:Ljava/util/List;

    goto :goto_0

    .line 59
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->e:Ljava/util/List;

    goto :goto_0

    .line 69
    :cond_2
    const v0, 0x7f0701dc

    goto :goto_1

    .line 71
    :cond_3
    const v0, 0x7f070552

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 104
    const-string/jumbo v0, "saved_guest_names"

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->a(Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 105
    return-void
.end method
