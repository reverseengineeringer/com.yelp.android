.class final Lcom/yelp/android/ui/dialogs/o;
.super Ljava/lang/Object;
.source "ChoiceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/o;->a:Landroid/app/Activity;

    .line 78
    return-void
.end method


# virtual methods
.method a(I)V
    .locals 3

    .prologue
    .line 92
    if-gez p1, :cond_0

    const/4 v0, 0x0

    .line 93
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    const-string/jumbo v2, "extra.choices"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/o;->a:Landroid/app/Activity;

    invoke-virtual {v2, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 96
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/o;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 97
    return-void

    .line 92
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 88
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/dialogs/o;->a(I)V

    .line 89
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 82
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/dialogs/o;->a(I)V

    .line 84
    return-void
.end method
