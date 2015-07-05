.class Lcom/yelp/android/ui/dialogs/aw;
.super Ljava/lang/Object;
.source "PrivacyPolicyDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/aw;->a:Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/aw;->a:Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->b(Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;)I

    move-result v0

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;->a(I)Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/aw;->a:Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;

    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->c(Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;)Lcom/yelp/android/ui/dialogs/be;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;->a(Lcom/yelp/android/ui/dialogs/be;)V

    .line 118
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/aw;->a:Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;

    invoke-virtual {v1}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 119
    return-void
.end method
