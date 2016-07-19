.class public Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "PrivacyPolicyDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/yelp/android/serializable/PrivacyPolicy;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;

.field private g:Lcom/yelp/android/appdata/webrequests/PrivacyPolicySaveRequest;

.field private final h:Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog$a;

.field private final i:Lcom/yelp/android/appdata/webrequests/core/c$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 39
    const v0, 0x7f0f02a8

    iput v0, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->a:I

    .line 241
    new-instance v0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$5;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$5;-><init>(Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;)V

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->h:Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog$a;

    .line 276
    new-instance v0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$8;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$8;-><init>(Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;)V

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->i:Lcom/yelp/android/appdata/webrequests/core/c$a;

    .line 295
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;I)I
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->a:I

    return p1
.end method

.method private a()Landroid/text/SpannableString;
    .locals 6

    .prologue
    const/16 v5, 0x21

    .line 139
    const v0, 0x7f0704b5

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 140
    const v1, 0x7f0704b6

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 141
    const-string/jumbo v2, "%1$s"

    .line 143
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 144
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    .line 146
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 147
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 149
    new-instance v0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$4;-><init>(Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;)V

    .line 168
    invoke-virtual {v1, v0, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 170
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1, v0, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 175
    return-object v1
.end method

.method public static a(Lcom/yelp/android/serializable/PrivacyPolicy;)Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;
    .locals 3

    .prologue
    .line 48
    new-instance v0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;

    invoke-direct {v0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;-><init>()V

    .line 49
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 50
    const-string/jumbo v2, "privacy_policy"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 51
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->setArguments(Landroid/os/Bundle;)V

    .line 52
    return-object v0
.end method

.method private a(I)V
    .locals 6

    .prologue
    const v5, 0x7f0705a5

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 179
    packed-switch p1, :pswitch_data_0

    .line 210
    :goto_0
    return-void

    .line 181
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->c:Landroid/widget/TextView;

    const v1, 0x7f0703fd

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->b:Lcom/yelp/android/serializable/PrivacyPolicy;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/PrivacyPolicy;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->e:Landroid/widget/TextView;

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->b:Lcom/yelp/android/serializable/PrivacyPolicy;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/PrivacyPolicy;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->b:Lcom/yelp/android/serializable/PrivacyPolicy;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/PrivacyPolicy;->h()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v5, v1}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 190
    :pswitch_1
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->c:Landroid/widget/TextView;

    const v1, 0x7f07024c

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->b:Lcom/yelp/android/serializable/PrivacyPolicy;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/PrivacyPolicy;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->e:Landroid/widget/TextView;

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->b:Lcom/yelp/android/serializable/PrivacyPolicy;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/PrivacyPolicy;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->b:Lcom/yelp/android/serializable/PrivacyPolicy;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/PrivacyPolicy;->e()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v5, v1}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 199
    :pswitch_2
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->c:Landroid/widget/TextView;

    const v1, 0x7f070158

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->b:Lcom/yelp/android/serializable/PrivacyPolicy;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/PrivacyPolicy;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->e:Landroid/widget/TextView;

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->b:Lcom/yelp/android/serializable/PrivacyPolicy;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/PrivacyPolicy;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->b:Lcom/yelp/android/serializable/PrivacyPolicy;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/PrivacyPolicy;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v5, v1}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x7f0f02a7
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->c()V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->a:I

    return v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 214
    iget v0, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->a:I

    packed-switch v0, :pswitch_data_0

    .line 225
    sget-object v0, Lcom/yelp/android/appdata/webrequests/PrivacyPolicySaveRequest$PrivacyLevel;->DEMOGRAPHICS:Lcom/yelp/android/appdata/webrequests/PrivacyPolicySaveRequest$PrivacyLevel;

    .line 228
    :goto_0
    new-instance v1, Lcom/yelp/android/appdata/webrequests/PrivacyPolicySaveRequest;

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->i:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-direct {v1, v2, v0}, Lcom/yelp/android/appdata/webrequests/PrivacyPolicySaveRequest;-><init>(Lcom/yelp/android/appdata/webrequests/core/c$a;Lcom/yelp/android/appdata/webrequests/PrivacyPolicySaveRequest$PrivacyLevel;)V

    iput-object v1, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->g:Lcom/yelp/android/appdata/webrequests/PrivacyPolicySaveRequest;

    .line 230
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->g:Lcom/yelp/android/appdata/webrequests/PrivacyPolicySaveRequest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/PrivacyPolicySaveRequest;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 231
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->f:Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;

    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 232
    return-void

    .line 216
    :pswitch_0
    sget-object v0, Lcom/yelp/android/appdata/webrequests/PrivacyPolicySaveRequest$PrivacyLevel;->NAME_AND_PROFILE:Lcom/yelp/android/appdata/webrequests/PrivacyPolicySaveRequest$PrivacyLevel;

    goto :goto_0

    .line 219
    :pswitch_1
    sget-object v0, Lcom/yelp/android/appdata/webrequests/PrivacyPolicySaveRequest$PrivacyLevel;->DEMOGRAPHICS:Lcom/yelp/android/appdata/webrequests/PrivacyPolicySaveRequest$PrivacyLevel;

    goto :goto_0

    .line 222
    :pswitch_2
    sget-object v0, Lcom/yelp/android/appdata/webrequests/PrivacyPolicySaveRequest$PrivacyLevel;->BASIC_INFO:Lcom/yelp/android/appdata/webrequests/PrivacyPolicySaveRequest$PrivacyLevel;

    goto :goto_0

    .line 214
    :pswitch_data_0
    .packed-switch 0x7f0f02a7
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->a(I)V

    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;)Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog$a;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->h:Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog$a;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->g:Lcom/yelp/android/appdata/webrequests/PrivacyPolicySaveRequest;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->g:Lcom/yelp/android/appdata/webrequests/PrivacyPolicySaveRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/PrivacyPolicySaveRequest;->a(Z)V

    .line 237
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->g:Lcom/yelp/android/appdata/webrequests/PrivacyPolicySaveRequest;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/PrivacyPolicySaveRequest;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 239
    :cond_0
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 252
    const v0, 0x7f070591

    const v1, 0x7f07018f

    const v2, 0x7f07060c

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->a(III)Lcom/yelp/android/ui/dialogs/TwoButtonDialog;

    move-result-object v0

    .line 257
    new-instance v1, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$6;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$6;-><init>(Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->a(Landroid/content/DialogInterface$OnClickListener;)V

    .line 265
    new-instance v1, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$7;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$7;-><init>(Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->b(Landroid/content/DialogInterface$OnClickListener;)V

    .line 273
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->b()V

    return-void
.end method

.method static synthetic e(Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;)Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->f:Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->d()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;->a(I)Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->f:Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;

    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->f:Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;

    new-instance v1, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$1;-><init>(Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;->a(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->setRetainInstance(Z)V

    .line 68
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "privacy_policy"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PrivacyPolicy;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->b:Lcom/yelp/android/serializable/PrivacyPolicy;

    .line 93
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 98
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ab

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 101
    const v0, 0x7f0f02a1

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->c:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f0f02a2

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->d:Landroid/widget/TextView;

    .line 103
    const v0, 0x7f0f02a3

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->e:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f0f029f

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 105
    const v1, 0x1020016

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 107
    iget v4, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->a:I

    invoke-direct {p0, v4}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->a(I)V

    .line 108
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 109
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->a()Landroid/text/SpannableString;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const v0, 0x7f0704b9

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 112
    const v0, 0x7f0f02a4

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$2;-><init>(Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v0, 0x7f0f02a5

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$3;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$3;-><init>(Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 134
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroy()V

    .line 86
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->c()V

    .line 87
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 80
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    .line 81
    return-void
.end method
