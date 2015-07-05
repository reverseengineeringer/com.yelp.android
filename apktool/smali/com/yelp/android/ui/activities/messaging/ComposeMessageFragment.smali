.class public Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;
.super Lcom/yelp/android/ui/activities/support/YelpFragment;
.source "ComposeMessageFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/widgets/z;


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/yelp/android/ui/widgets/RecipientBoxView;

.field private c:Landroid/os/Bundle;

.field private d:Lcom/yelp/android/appdata/webrequests/gp;

.field private e:Lcom/yelp/android/ui/activities/messaging/f;

.field private g:Lcom/yelp/android/appdata/webrequests/messaging/e;

.field private h:Lcom/yelp/android/ui/activities/messaging/FriendsFragment;

.field private i:Lcom/yelp/android/serializable/User;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/EditText;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->a:Ljava/util/ArrayList;

    .line 66
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->l:Z

    .line 67
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->m:Z

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->n:Z

    .line 69
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->o:Z

    .line 494
    return-void
.end method

.method public static a(Lcom/yelp/android/serializable/User;)Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;
    .locals 3

    .prologue
    .line 106
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;-><init>()V

    .line 107
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 108
    const-string/jumbo v2, "args_recipient"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 109
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 110
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)Lcom/yelp/android/ui/widgets/RecipientBoxView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    return-object v0
.end method

.method public static a()V
    .locals 3

    .prologue
    .line 114
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->MessagingNewConversationCanceled:Lcom/yelp/android/analytics/iris/EventIri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 116
    return-void
.end method

.method private a(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 402
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    # invokes: Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;->getErrorMessage(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;->access$900(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v0

    .line 404
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->o:Z

    return p1
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->k:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->m:Z

    return p1
.end method

.method private d(Lcom/yelp/android/serializable/User;)V
    .locals 2

    .prologue
    .line 451
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/q;->h()Lcom/yelp/android/ay/a;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/messaging/d;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/messaging/d;-><init>(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)V

    invoke-virtual {v0, p1, v1}, Lcom/yelp/android/ay/a;->a(Lcom/yelp/android/serializable/User;Lcom/yelp/android/database/w;)V

    .line 469
    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)V
    .locals 0

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->w()V

    return-void
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->i()V

    return-void
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->r()V

    return-void
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)Lcom/yelp/android/ui/activities/messaging/f;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->e:Lcom/yelp/android/ui/activities/messaging/f;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "args_recipient"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    .line 308
    if-nez v0, :cond_0

    sget-object v0, Lcom/yelp/android/analytics/iris/IriSource;->Inbox:Lcom/yelp/android/analytics/iris/IriSource;

    .line 309
    :goto_0
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->MessagingNewConversationSend:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {v0}, Lcom/yelp/android/analytics/iris/IriSource;->getMapWithParameter()Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 310
    return-void

    .line 308
    :cond_0
    sget-object v0, Lcom/yelp/android/analytics/iris/IriSource;->UserProfile:Lcom/yelp/android/analytics/iris/IriSource;

    goto :goto_0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->o:Z

    .line 367
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->j()V

    .line 368
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->w()V

    .line 369
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->e()V

    .line 371
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->getRecipientView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/cr;->b(Landroid/view/View;)V

    .line 376
    :goto_0
    return-void

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->a(Ljava/util/ArrayList;)V

    .line 375
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->getRecipientView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/cr;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method private k()Z
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->g:Lcom/yelp/android/appdata/webrequests/messaging/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->g:Lcom/yelp/android/appdata/webrequests/messaging/e;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/messaging/e;->isFetching()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->d:Lcom/yelp/android/appdata/webrequests/gp;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->d:Lcom/yelp/android/appdata/webrequests/gp;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/gp;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()V
    .locals 1

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->m()Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;

    move-result-object v0

    .line 385
    if-eqz v0, :cond_0

    .line 386
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->a(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;)V

    .line 390
    :goto_0
    return-void

    .line 388
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->n()V

    goto :goto_0
.end method

.method private m()Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;
    .locals 5

    .prologue
    .line 393
    invoke-static {}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;->values()[Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 394
    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;->isValid(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 398
    :goto_1
    return-object v0

    .line 393
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 398
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private n()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 408
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->g:Lcom/yelp/android/appdata/webrequests/messaging/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->g:Lcom/yelp/android/appdata/webrequests/messaging/e;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/messaging/e;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    :goto_0
    return-void

    .line 411
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/c;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/messaging/c;-><init>(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)V

    .line 426
    new-instance v1, Lcom/yelp/android/appdata/webrequests/messaging/e;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-virtual {v2}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->getRecipient()Lcom/yelp/android/serializable/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/User;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->k:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/yelp/android/appdata/webrequests/messaging/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->g:Lcom/yelp/android/appdata/webrequests/messaging/e;

    .line 429
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->g:Lcom/yelp/android/appdata/webrequests/messaging/e;

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/messaging/e;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 431
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->g:Lcom/yelp/android/appdata/webrequests/messaging/e;

    invoke-virtual {p0, v0, v5}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 434
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->k:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/yelp/android/ui/util/cr;->b(Landroid/view/View;)V

    goto :goto_0
.end method

.method private o()V
    .locals 1

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->q()V

    .line 444
    :goto_0
    return-void

    .line 442
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->r()V

    goto :goto_0
.end method

.method private p()Z
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private q()V
    .locals 4

    .prologue
    .line 472
    new-instance v0, Lcom/yelp/android/ay/m;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-virtual {v1}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->getRecipient()Lcom/yelp/android/serializable/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->getUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->k:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ay/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/database/q;->h()Lcom/yelp/android/ay/a;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/ui/activities/messaging/e;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/messaging/e;-><init>(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)V

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ay/a;->a(Lcom/yelp/android/ay/m;Lcom/yelp/android/database/w;)V

    .line 487
    return-void
.end method

.method private r()V
    .locals 2

    .prologue
    .line 490
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/q;->h()Lcom/yelp/android/ay/a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-virtual {v1}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->getRecipient()Lcom/yelp/android/serializable/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ay/a;->a(Lcom/yelp/android/serializable/User;)V

    .line 492
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->h:Lcom/yelp/android/ui/activities/messaging/FriendsFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->h:Lcom/yelp/android/ui/activities/messaging/FriendsFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/FriendsFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->h:Lcom/yelp/android/ui/activities/messaging/FriendsFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/FriendsFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/bb/a;

    .line 254
    invoke-virtual {v0}, Lcom/yelp/android/bb/a;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 256
    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    const v3, 0x7f0c0251

    .line 260
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 261
    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/messaging/FriendsFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->h:Lcom/yelp/android/ui/activities/messaging/FriendsFragment;

    .line 263
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->h:Lcom/yelp/android/ui/activities/messaging/FriendsFragment;

    if-eqz v0, :cond_0

    .line 282
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->l:Z

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/FriendsFragment;->a(Ljava/util/ArrayList;)Lcom/yelp/android/ui/activities/messaging/FriendsFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->h:Lcom/yelp/android/ui/activities/messaging/FriendsFragment;

    .line 268
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 269
    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->h:Lcom/yelp/android/ui/activities/messaging/FriendsFragment;

    invoke-virtual {v0, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 270
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 271
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 278
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    goto :goto_0

    .line 280
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->g()V

    goto :goto_0
.end method

.method public b(Lcom/yelp/android/serializable/User;)V
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->n:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->d(Lcom/yelp/android/serializable/User;)V

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->n:Z

    .line 247
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->h:Lcom/yelp/android/ui/activities/messaging/FriendsFragment;

    .line 287
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->w()V

    .line 288
    return-void
.end method

.method public c(Lcom/yelp/android/serializable/User;)V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->a(Lcom/yelp/android/serializable/User;)V

    .line 314
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 293
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v2, v2}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->a(Landroid/content/Context;ZZ)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 294
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->MessagingNewConversationFindFriends:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 295
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 298
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;

    .line 299
    sget-object v1, Lcom/yelp/android/util/ErrorType;->NEED_FRIENDS_COMPOSE_MESSAGE:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->populateError(Lcom/yelp/android/util/ErrorType;)V

    .line 300
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->getErrorPanel()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->setBackgroundResource(I)V

    .line 301
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->c()V

    .line 302
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 304
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->getRecipientView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/cr;->b(Landroid/view/View;)V

    .line 322
    return-void
.end method

.method public g()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 325
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->d:Lcom/yelp/android/appdata/webrequests/gp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->d:Lcom/yelp/android/appdata/webrequests/gp;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/gp;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    :goto_0
    return-void

    .line 329
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/b;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/messaging/b;-><init>(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)V

    .line 359
    new-instance v1, Lcom/yelp/android/appdata/webrequests/gp;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/webrequests/dc;->s()Lcom/yelp/android/serializable/User;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/yelp/android/appdata/webrequests/gp;-><init>(Lcom/yelp/android/serializable/User;Lcom/yelp/android/appdata/webrequests/m;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->d:Lcom/yelp/android/appdata/webrequests/gp;

    .line 361
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->d:Lcom/yelp/android/appdata/webrequests/gp;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/gp;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 362
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->d:Lcom/yelp/android/appdata/webrequests/gp;

    invoke-virtual {p0, v0, v3}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 134
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->c:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "args_recipient"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->i:Lcom/yelp/android/serializable/User;

    .line 138
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->i:Lcom/yelp/android/serializable/User;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->i:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->setRecipient(Lcom/yelp/android/serializable/User;)V

    .line 140
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b()V

    .line 141
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->g()V

    goto :goto_0

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b(Landroid/os/Bundle;)V

    .line 151
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    goto :goto_0

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->c:Landroid/os/Bundle;

    const-string/jumbo v1, "saved_empty_view_visible"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->e()V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onAttach(Landroid/app/Activity;)V

    .line 163
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/yelp/android/ui/activities/messaging/f;

    move-object v1, v0

    iput-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->e:Lcom/yelp/android/ui/activities/messaging/f;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    return-void

    .line 164
    :catch_0
    move-exception v1

    .line 165
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " must implement the ComposeMessageListener interface"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 121
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->setRetainInstance(Z)V

    .line 123
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->c:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->c:Landroid/os/Bundle;

    .line 126
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->getRecipient()Lcom/yelp/android/serializable/User;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 226
    :cond_0
    const v0, 0x7f100005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 228
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 172
    const v1, 0x7f03008c

    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 174
    const v0, 0x7f0c024e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->j:Landroid/widget/TextView;

    .line 175
    const v0, 0x7f0c0250

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->k:Landroid/widget/EditText;

    .line 176
    const v0, 0x7f0c024c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/RecipientBoxView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    .line 177
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->setOnRecipientBoxListener(Lcom/yelp/android/ui/widgets/z;)V

    .line 178
    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 211
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onDestroy()V

    .line 212
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->d:Lcom/yelp/android/appdata/webrequests/gp;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 213
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->g:Lcom/yelp/android/appdata/webrequests/messaging/e;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 214
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 232
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 238
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 234
    :pswitch_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->l()V

    .line 235
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->h()V

    .line 236
    const/4 v0, 0x1

    goto :goto_0

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c04f2
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 202
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onPause()V

    .line 203
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->h:Lcom/yelp/android/ui/activities/messaging/FriendsFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->h:Lcom/yelp/android/ui/activities/messaging/FriendsFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/FriendsFragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->m:Z

    if-nez v0, :cond_1

    .line 205
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->o()V

    .line 207
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 194
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onResume()V

    .line 195
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->o:Z

    if-eqz v0, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->i()V

    .line 198
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 183
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 184
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->a(Landroid/os/Bundle;)V

    .line 185
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->getErrorPanel()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_0

    .line 187
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->c:Landroid/os/Bundle;

    const-string/jumbo v2, "saved_empty_view_visible"

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/PanelError;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 190
    :cond_0
    return-void

    .line 187
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
