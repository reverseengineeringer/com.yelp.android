.class final Lcom/yelp/android/ui/dialogs/s;
.super Ljava/lang/Object;
.source "DidYouMeanDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private a:I

.field private b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput p2, p0, Lcom/yelp/android/ui/dialogs/s;->a:I

    .line 88
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/s;->b:Landroid/app/Activity;

    .line 89
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/s;->b:Landroid/app/Activity;

    iget v1, p0, Lcom/yelp/android/ui/dialogs/s;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 93
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/s;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 94
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 95
    return-void
.end method
