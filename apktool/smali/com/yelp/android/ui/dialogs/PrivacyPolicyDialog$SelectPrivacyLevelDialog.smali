.class public Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "PrivacyPolicyDialog.java"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/yelp/android/ui/dialogs/be;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 268
    const-string/jumbo v0, "privacy_level"

    sput-object v0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 311
    return-void
.end method

.method public static a(I)Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;
    .locals 3

    .prologue
    .line 273
    new-instance v0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;

    invoke-direct {v0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;-><init>()V

    .line 274
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 275
    sget-object v2, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 276
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;->setArguments(Landroid/os/Bundle;)V

    .line 277
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;)Lcom/yelp/android/ui/dialogs/be;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;->b:Lcom/yelp/android/ui/dialogs/be;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/dialogs/be;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;->b:Lcom/yelp/android/ui/dialogs/be;

    .line 309
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 282
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 283
    const v0, 0x7f0700b3

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 288
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030095

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 291
    const v0, 0x7f0c025d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 292
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 293
    new-instance v3, Lcom/yelp/android/ui/dialogs/bd;

    invoke-direct {v3, p0}, Lcom/yelp/android/ui/dialogs/bd;-><init>(Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 303
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 304
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
