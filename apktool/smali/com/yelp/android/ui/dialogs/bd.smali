.class Lcom/yelp/android/ui/dialogs/bd;
.super Ljava/lang/Object;
.source "PrivacyPolicyDialog.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/bd;->a:Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/bd;->a:Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;->a(Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;)Lcom/yelp/android/ui/dialogs/be;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/bd;->a:Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;->a(Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;)Lcom/yelp/android/ui/dialogs/be;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/yelp/android/ui/dialogs/be;->a(I)V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/bd;->a:Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$SelectPrivacyLevelDialog;->dismiss()V

    .line 301
    return-void
.end method
