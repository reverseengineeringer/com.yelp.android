.class final Lcom/yelp/android/ui/dialogs/DidYouMeanDialog$a;
.super Ljava/lang/Object;
.source "DidYouMeanDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/dialogs/DidYouMeanDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p2, p0, Lcom/yelp/android/ui/dialogs/DidYouMeanDialog$a;->a:I

    .line 96
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/DidYouMeanDialog$a;->b:Landroid/app/Activity;

    .line 97
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/DidYouMeanDialog$a;->b:Landroid/app/Activity;

    iget v1, p0, Lcom/yelp/android/ui/dialogs/DidYouMeanDialog$a;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/DidYouMeanDialog$a;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 102
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 103
    return-void
.end method
