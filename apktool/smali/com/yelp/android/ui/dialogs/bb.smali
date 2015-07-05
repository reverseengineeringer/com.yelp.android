.class Lcom/yelp/android/ui/dialogs/bb;
.super Ljava/lang/Object;
.source "PrivacyPolicyDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/bb;->a:Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/bb;->a:Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->dismiss()V

    .line 245
    return-void
.end method
