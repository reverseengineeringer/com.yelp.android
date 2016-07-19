.class public Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;
.super Lcom/yelp/android/ui/activities/support/YelpFragment;
.source "ComposeMessageFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/widgets/RecipientBoxView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$a;,
        Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;
    }
.end annotation


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

.field private d:Lcom/yelp/android/appdata/webrequests/fh;

.field private e:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$a;

.field private f:Lcom/yelp/android/appdata/webrequests/messaging/e;

.field private g:Lcom/yelp/android/ui/activities/messaging/FriendsFragment;

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

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->a:Ljava/util/ArrayList;

    .line 68
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->l:Z

    .line 69
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->m:Z

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->n:Z

    .line 71
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->o:Z

    .line 536
    return-void
.end method

.method public static a(Lcom/yelp/android/serializable/User;Ljava/lang/String;)Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;
    .locals 3

    .prologue
    .line 108
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;-><init>()V

    .line 109
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 110
    const-string/jumbo v2, "args_recipient"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 111
    const-string/jumbo v2, "args_message"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 113
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)Lcom/yelp/android/ui/widgets/RecipientBoxView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    return-object v0
.end method

.method private a(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 426
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;->access$900(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v0

    .line 428
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 429
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

.method private c(Lcom/yelp/android/serializable/User;)V
    .locals 2

    .prologue
    .line 479
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/g;->f()Lcom/yelp/android/cc/a;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$3;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$3;-><init>(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)V

    invoke-virtual {v0, p1, v1}, Lcom/yelp/android/cc/a;->a(Lcom/yelp/android/serializable/User;Lcom/yelp/android/database/h$b;)V

    .line 502
    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->m:Z

    return p1
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)V
    .locals 0

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->y()V

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
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->j()V

    return-void
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->s()V

    return-void
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$a;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->e:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$a;

    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "args_recipient"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    .line 321
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "args_message"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 323
    if-eqz v1, :cond_0

    .line 324
    sget-object v0, Lcom/yelp/android/analytics/iris/IriSource;->Share:Lcom/yelp/android/analytics/iris/IriSource;

    .line 330
    :goto_0
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->MessagingNewConversationSend:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {v0}, Lcom/yelp/android/analytics/iris/IriSource;->getMapWithParameter()Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 331
    return-void

    .line 325
    :cond_0
    if-eqz v0, :cond_1

    .line 326
    sget-object v0, Lcom/yelp/android/analytics/iris/IriSource;->UserProfile:Lcom/yelp/android/analytics/iris/IriSource;

    goto :goto_0

    .line 328
    :cond_1
    sget-object v0, Lcom/yelp/android/analytics/iris/IriSource;->Inbox:Lcom/yelp/android/analytics/iris/IriSource;

    goto :goto_0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 390
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->o:Z

    .line 391
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->l()V

    .line 392
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->y()V

    .line 393
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->f()V

    .line 395
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->getRecipientView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/as;->b(Landroid/view/View;)V

    .line 400
    :goto_0
    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->a(Ljava/util/ArrayList;)V

    .line 399
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->getRecipientView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/as;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method private k()Z
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->f:Lcom/yelp/android/appdata/webrequests/messaging/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->f:Lcom/yelp/android/appdata/webrequests/messaging/e;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/messaging/e;->u()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->d:Lcom/yelp/android/appdata/webrequests/fh;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->d:Lcom/yelp/android/appdata/webrequests/fh;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/fh;->u()Z

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

.method private m()V
    .locals 1

    .prologue
    .line 408
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->n()Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;

    move-result-object v0

    .line 409
    if-eqz v0, :cond_0

    .line 410
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->a(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;)V

    .line 414
    :goto_0
    return-void

    .line 412
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->o()V

    goto :goto_0
.end method

.method private n()Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;
    .locals 5

    .prologue
    .line 417
    invoke-static {}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;->values()[Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 418
    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;->isValid(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 422
    :goto_1
    return-object v0

    .line 417
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 422
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private o()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 432
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->f:Lcom/yelp/android/appdata/webrequests/messaging/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->f:Lcom/yelp/android/appdata/webrequests/messaging/e;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/messaging/e;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    :goto_0
    return-void

    .line 435
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$2;-><init>(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)V

    .line 451
    new-instance v1, Lcom/yelp/android/appdata/webrequests/messaging/e;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-virtual {v2}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->getRecipient()Lcom/yelp/android/serializable/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/User;->ae()Ljava/lang/String;

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

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/yelp/android/appdata/webrequests/messaging/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->f:Lcom/yelp/android/appdata/webrequests/messaging/e;

    .line 457
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->f:Lcom/yelp/android/appdata/webrequests/messaging/e;

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/messaging/e;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 459
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->f:Lcom/yelp/android/appdata/webrequests/messaging/e;

    invoke-virtual {p0, v0, v5}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 462
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->k:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/yelp/android/ui/util/as;->b(Landroid/view/View;)V

    goto :goto_0
.end method

.method private p()V
    .locals 1

    .prologue
    .line 466
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->r()V

    .line 472
    :goto_0
    return-void

    .line 470
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->s()V

    goto :goto_0
.end method

.method private q()Z
    .locals 1

    .prologue
    .line 475
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

.method private r()V
    .locals 4

    .prologue
    .line 505
    new-instance v0, Lcom/yelp/android/cc/d;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-virtual {v1}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->getRecipient()Lcom/yelp/android/serializable/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->i()Ljava/lang/String;

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

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/cc/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/database/g;->f()Lcom/yelp/android/cc/a;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$4;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$4;-><init>(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)V

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/cc/a;->a(Lcom/yelp/android/cc/d;Lcom/yelp/android/database/h$b;)V

    .line 527
    return-void
.end method

.method private s()V
    .locals 2

    .prologue
    .line 530
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/g;->f()Lcom/yelp/android/cc/a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-virtual {v1}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->getRecipient()Lcom/yelp/android/serializable/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/cc/a;->a(Lcom/yelp/android/serializable/User;)V

    .line 534
    return-void
.end method


# virtual methods
.method public E_()V
    .locals 3

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->a(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 307
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->MessagingNewConversationFindFriends:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 308
    return-void
.end method

.method public a()V
    .locals 3

    .prologue
    .line 117
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->MessagingNewConversationCanceled:Lcom/yelp/android/analytics/iris/EventIri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 120
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/User;)V
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->n:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->c(Lcom/yelp/android/serializable/User;)V

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->n:Z

    .line 260
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->g:Lcom/yelp/android/ui/activities/messaging/FriendsFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->g:Lcom/yelp/android/ui/activities/messaging/FriendsFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/FriendsFragment;->b()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->g:Lcom/yelp/android/ui/activities/messaging/FriendsFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/FriendsFragment;->b()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/cl/a;

    .line 267
    invoke-virtual {v0}, Lcom/yelp/android/cl/a;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 269
    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    const v3, 0x7f0f0297

    .line 273
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    .line 274
    invoke-virtual {v1, v3}, Landroid/support/v4/app/l;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/messaging/FriendsFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->g:Lcom/yelp/android/ui/activities/messaging/FriendsFragment;

    .line 276
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->g:Lcom/yelp/android/ui/activities/messaging/FriendsFragment;

    if-eqz v0, :cond_0

    .line 295
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->l:Z

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/FriendsFragment;->a(Ljava/util/ArrayList;)Lcom/yelp/android/ui/activities/messaging/FriendsFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->g:Lcom/yelp/android/ui/activities/messaging/FriendsFragment;

    .line 281
    invoke-virtual {v1}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    .line 282
    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->g:Lcom/yelp/android/ui/activities/messaging/FriendsFragment;

    invoke-virtual {v0, v3, v2}, Landroid/support/v4/app/o;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/o;

    .line 283
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/o;

    .line 284
    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 291
    invoke-virtual {v1}, Landroid/support/v4/app/l;->b()Z

    goto :goto_0

    .line 293
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->h()V

    goto :goto_0
.end method

.method public b(Lcom/yelp/android/serializable/User;)V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->a(Lcom/yelp/android/serializable/User;)V

    .line 335
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->g:Lcom/yelp/android/ui/activities/messaging/FriendsFragment;

    .line 300
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->y()V

    .line 301
    return-void
.end method

.method public f()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 311
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;

    .line 312
    sget-object v1, Lcom/yelp/android/util/ErrorType;->NEED_FRIENDS_COMPOSE_MESSAGE:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->populateError(Lcom/yelp/android/util/ErrorType;)V

    .line 313
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->getErrorPanel()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->setBackgroundResource(I)V

    .line 314
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->c()V

    .line 315
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 317
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->getRecipientView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/as;->b(Landroid/view/View;)V

    .line 343
    return-void
.end method

.method public h()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 346
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->d:Lcom/yelp/android/appdata/webrequests/fh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->d:Lcom/yelp/android/appdata/webrequests/fh;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/fh;->v()Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    :goto_0
    return-void

    .line 350
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$1;-><init>(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)V

    .line 382
    new-instance v1, Lcom/yelp/android/appdata/webrequests/fh;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/yelp/android/appdata/webrequests/fh;-><init>(Lcom/yelp/android/serializable/User;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->d:Lcom/yelp/android/appdata/webrequests/fh;

    .line 385
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->d:Lcom/yelp/android/appdata/webrequests/fh;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fh;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 386
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->d:Lcom/yelp/android/appdata/webrequests/fh;

    invoke-virtual {p0, v0, v3}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 138
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->c:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->k:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "args_message"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "args_recipient"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->i:Lcom/yelp/android/serializable/User;

    .line 145
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->i:Lcom/yelp/android/serializable/User;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->i:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->setRecipient(Lcom/yelp/android/serializable/User;)V

    .line 147
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b()V

    .line 148
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->h()V

    goto :goto_0

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b(Landroid/os/Bundle;)V

    .line 160
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    goto :goto_0

    .line 162
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->c:Landroid/os/Bundle;

    const-string/jumbo v1, "saved_empty_view_visible"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->f()V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onAttach(Landroid/app/Activity;)V

    .line 172
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$a;

    move-object v1, v0

    iput-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->e:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$a;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    return-void

    .line 173
    :catch_0
    move-exception v1

    .line 174
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
    .line 124
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 125
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->setRetainInstance(Z)V

    .line 127
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->c:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->c:Landroid/os/Bundle;

    .line 130
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->getRecipient()Lcom/yelp/android/serializable/User;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    :cond_0
    const v0, 0x7f100007

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 241
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 182
    const v1, 0x7f030095

    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 186
    const v0, 0x7f0f0294

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->j:Landroid/widget/TextView;

    .line 187
    const v0, 0x7f0f0296

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->k:Landroid/widget/EditText;

    .line 188
    const v0, 0x7f0f0292

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/RecipientBoxView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    .line 189
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->setOnRecipientBoxListener(Lcom/yelp/android/ui/widgets/RecipientBoxView$a;)V

    .line 190
    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 224
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onDestroy()V

    .line 225
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->d:Lcom/yelp/android/appdata/webrequests/fh;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->c(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->f:Lcom/yelp/android/appdata/webrequests/messaging/e;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->c(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 227
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 245
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 251
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 247
    :pswitch_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->m()V

    .line 248
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->i()V

    .line 249
    const/4 v0, 0x1

    goto :goto_0

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f05fc
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 214
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onPause()V

    .line 215
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->g:Lcom/yelp/android/ui/activities/messaging/FriendsFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->g:Lcom/yelp/android/ui/activities/messaging/FriendsFragment;

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

    .line 218
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->p()V

    .line 220
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 206
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onResume()V

    .line 207
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->o:Z

    if-eqz v0, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->j()V

    .line 210
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 195
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 196
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->a(Landroid/os/Bundle;)V

    .line 197
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->getErrorPanel()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_0

    .line 199
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->c:Landroid/os/Bundle;

    const-string/jumbo v2, "saved_empty_view_visible"

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/PanelError;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 202
    :cond_0
    return-void

    .line 199
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
