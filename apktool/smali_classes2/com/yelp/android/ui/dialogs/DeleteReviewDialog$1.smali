.class Lcom/yelp/android/ui/dialogs/DeleteReviewDialog$1;
.super Ljava/lang/Object;
.source "DeleteReviewDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/dialogs/DeleteReviewDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/DeleteReviewDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/DeleteReviewDialog;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/DeleteReviewDialog$1;->a:Lcom/yelp/android/ui/dialogs/DeleteReviewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/DeleteReviewDialog$1;->a:Lcom/yelp/android/ui/dialogs/DeleteReviewDialog;

    iget-object v0, v0, Lcom/yelp/android/ui/dialogs/DeleteReviewDialog;->a:Lcom/yelp/android/ui/dialogs/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/dialogs/b;->a(Ljava/lang/String;)V

    .line 48
    return-void
.end method
