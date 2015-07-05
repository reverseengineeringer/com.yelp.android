.class Lcom/yelp/android/ui/dialogs/ay;
.super Landroid/text/style/ClickableSpan;
.source "PrivacyPolicyDialog.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/ay;->a:Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 148
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/ay;->a:Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;

    const v3, 0x7f07049d

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 150
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/ay;->a:Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->startActivity(Landroid/content/Intent;)V

    .line 151
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 157
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/ay;->a:Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 158
    return-void
.end method
