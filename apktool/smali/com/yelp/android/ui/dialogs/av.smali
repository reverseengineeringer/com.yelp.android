.class Lcom/yelp/android/ui/dialogs/av;
.super Ljava/lang/Object;
.source "PrivacyPolicyDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/av;->a:Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/av;->a:Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->a(Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;)V

    .line 64
    return-void
.end method
