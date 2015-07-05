.class public Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;
.super Lcom/yelp/android/ui/activities/support/YelpFragment;
.source "MessageTheBusinessFragment.java"


# instance fields
.field private a:Lcom/yelp/android/serializable/YelpBusiness;

.field private b:Landroid/widget/TextView;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Landroid/widget/EditText;

.field private g:Lcom/yelp/android/ui/dialogs/bn;

.field private h:Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;

.field private i:Lcom/yelp/android/ay/i;

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->j:Z

    .line 290
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method public static a(Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;
    .locals 3

    .prologue
    .line 62
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;-><init>()V

    .line 64
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 65
    const-string/jumbo v2, "business_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 66
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->setArguments(Landroid/os/Bundle;)V

    .line 68
    return-object v0
.end method

.method private a(Lcom/yelp/android/appdata/webrequests/messaging/j;)V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p1, Lcom/yelp/android/appdata/webrequests/messaging/j;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->d:Ljava/lang/String;

    .line 224
    iget-boolean v0, p1, Lcom/yelp/android/appdata/webrequests/messaging/j;->b:Z

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->c:Z

    .line 225
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->g:Lcom/yelp/android/ui/dialogs/bn;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/bn;->dismiss()V

    .line 226
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->h()V

    .line 227
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->b(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;Lcom/yelp/android/appdata/webrequests/messaging/j;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->a(Lcom/yelp/android/appdata/webrequests/messaging/j;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->g:Lcom/yelp/android/ui/dialogs/bn;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/bn;->dismiss()V

    .line 203
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->m()V

    .line 206
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->e:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 207
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 208
    const-string/jumbo v1, "confirmation_message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 210
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 211
    return-void
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/util/StringUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 171
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    const v0, 0x7f0702d5

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v0

    .line 174
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 180
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->c()V

    goto :goto_0

    .line 178
    :cond_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->f()V

    goto :goto_0
.end method

.method private b(Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 214
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->g:Lcom/yelp/android/ui/dialogs/bn;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/bn;->dismiss()V

    .line 215
    invoke-static {p1}, Lcom/yelp/android/appdata/webrequests/ApiException;->isUserBlocked(Lcom/yelp/android/appdata/webrequests/YelpException;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->j:Z

    .line 217
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->w()V

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cr;->a(Ljava/lang/CharSequence;I)V

    .line 220
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->g()V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f07035a

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x413

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 187
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->h:Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;->a(Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;Ljava/lang/String;)V

    .line 191
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->i()V

    .line 192
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->h:Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;->a(Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->i()V

    .line 198
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessMessageTheBusinessSend:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 199
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->g:Lcom/yelp/android/ui/dialogs/bn;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/bn;->dismiss()V

    .line 231
    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 234
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->b:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->c:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0201bc

    :goto_0
    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 241
    :cond_0
    return-void

    .line 237
    :cond_1
    const v0, 0x7f0202db

    goto :goto_0
.end method

.method private i()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 244
    new-instance v0, Lcom/yelp/android/ui/dialogs/bn;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/dialogs/bn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->g:Lcom/yelp/android/ui/dialogs/bn;

    .line 245
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->g:Lcom/yelp/android/ui/dialogs/bn;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/dialogs/bn;->setProgressStyle(I)V

    .line 246
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->g:Lcom/yelp/android/ui/dialogs/bn;

    const v1, 0x7f07033f

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/bn;->setMessage(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->g:Lcom/yelp/android/ui/dialogs/bn;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/dialogs/bn;->setCancelable(Z)V

    .line 248
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->g:Lcom/yelp/android/ui/dialogs/bn;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/bn;->show()V

    .line 249
    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    .line 252
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->i:Lcom/yelp/android/ay/i;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->a:Lcom/yelp/android/serializable/YelpBusiness;

    new-instance v2, Lcom/yelp/android/ui/activities/messaging/y;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/messaging/y;-><init>(Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ay/i;->a(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/database/w;)V

    .line 268
    return-void
.end method

.method private l()V
    .locals 3

    .prologue
    .line 271
    new-instance v0, Lcom/yelp/android/ay/t;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ay/t;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->i:Lcom/yelp/android/ay/i;

    new-instance v2, Lcom/yelp/android/ui/activities/messaging/z;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/messaging/z;-><init>(Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;)V

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ay/i;->a(Lcom/yelp/android/ay/t;Lcom/yelp/android/database/w;)V

    .line 284
    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->i:Lcom/yelp/android/ay/i;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ay/i;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 288
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 100
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 v0, 0x413

    if-ne p1, v0, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->f()V

    .line 103
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/q;->j()Lcom/yelp/android/ay/i;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->i:Lcom/yelp/android/ay/i;

    .line 75
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "business_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->a:Lcom/yelp/android/serializable/YelpBusiness;

    .line 76
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "request_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->h:Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;

    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->h:Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->h:Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;

    .line 80
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->h:Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;

    const-string/jumbo v2, "request_fragment"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->h:Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 83
    if-nez p1, :cond_1

    .line 91
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->k()V

    .line 92
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->e()V

    .line 94
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->setHasOptionsMenu(Z)V

    .line 95
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 146
    const v0, 0x7f100015

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 147
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 127
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 128
    const v1, 0x7f0300cb

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 129
    const v0, 0x7f0c02f8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->e:Landroid/widget/EditText;

    .line 130
    const v0, 0x7f0c02f7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->b:Landroid/widget/TextView;

    .line 131
    if-eqz p3, :cond_1

    .line 132
    const-string/jumbo v0, "saved_blocked_by_business"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->j:Z

    .line 133
    const-string/jumbo v0, "response_time_text"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->d:Ljava/lang/String;

    .line 134
    const-string/jumbo v0, "show_warning_icon"

    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->c:Z

    .line 135
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->h:Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;->a(Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->i()V

    .line 138
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->h()V

    .line 140
    :cond_1
    return-object v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 157
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 162
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 159
    :pswitch_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->b()V

    .line 160
    const/4 v0, 0x1

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x7f0c050b
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onPause()V

    .line 116
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->l()V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->m()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 152
    const v0, 0x7f0c050b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 153
    return-void

    .line 152
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 108
    const-string/jumbo v0, "saved_blocked_by_business"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->j:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 109
    const-string/jumbo v0, "response_time_text"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string/jumbo v0, "show_warning_icon"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->c:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 111
    return-void
.end method
