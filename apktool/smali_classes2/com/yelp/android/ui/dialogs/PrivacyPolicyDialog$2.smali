.class Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$2;
.super Ljava/lang/Object;
.source "PrivacyPolicyDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$2;->a:Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$2;->a:Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->b(Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;)I

    move-result v0

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;->a(I)Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$2;->a:Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;

    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->c(Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;)Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;->a(Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog$a;)V

    .line 121
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$2;->a:Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;

    invoke-virtual {v1}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 122
    return-void
.end method
