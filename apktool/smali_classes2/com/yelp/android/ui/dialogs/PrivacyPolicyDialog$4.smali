.class Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$4;
.super Landroid/text/style/ClickableSpan;
.source "PrivacyPolicyDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->a()Landroid/text/SpannableString;
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
    .line 150
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$4;->a:Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 154
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$4;->a:Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;

    const v3, 0x7f0704b7

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 158
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$4;->a:Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->startActivity(Landroid/content/Intent;)V

    .line 159
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 165
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog$4;->a:Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 166
    return-void
.end method
