.class public Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "PrivacyPolicyDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectPrivacyLevelDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 298
    const-string/jumbo v0, "privacy_level"

    sput-object v0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 343
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;)Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog$a;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;->b:Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog$a;

    return-object v0
.end method

.method public static a(I)Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;
    .locals 3

    .prologue
    .line 303
    new-instance v0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;

    invoke-direct {v0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;-><init>()V

    .line 304
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 305
    sget-object v2, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 306
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;->setArguments(Landroid/os/Bundle;)V

    .line 307
    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog$a;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;->b:Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog$a;

    .line 341
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 312
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 313
    const v0, 0x7f070131

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 318
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0300ac

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 322
    const v0, 0x7f0f02a6

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 323
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 324
    new-instance v3, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog$1;

    invoke-direct {v3, p0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog$1;-><init>(Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 335
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 336
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
