.class Lcom/yelp/android/ui/dialogs/bj;
.super Ljava/lang/Object;
.source "UpdatePromptDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/bj;->a:Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 62
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 63
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->UpdatePromptAccept:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/bj;->a:Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "market://details?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v1

    .line 68
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/bj;->a:Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
