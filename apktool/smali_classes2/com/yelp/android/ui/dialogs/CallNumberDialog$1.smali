.class Lcom/yelp/android/ui/dialogs/CallNumberDialog$1;
.super Ljava/lang/Object;
.source "CallNumberDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/dialogs/CallNumberDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/CallNumberDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/CallNumberDialog;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/CallNumberDialog$1;->a:Lcom/yelp/android/ui/dialogs/CallNumberDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CallNumberDialog$1;->a:Lcom/yelp/android/ui/dialogs/CallNumberDialog;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/CallNumberDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "phone.number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/CallNumberDialog$1;->a:Lcom/yelp/android/ui/dialogs/CallNumberDialog;

    invoke-static {v0}, Lcom/yelp/android/util/k;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/dialogs/CallNumberDialog;->startActivity(Landroid/content/Intent;)V

    .line 50
    return-void
.end method
