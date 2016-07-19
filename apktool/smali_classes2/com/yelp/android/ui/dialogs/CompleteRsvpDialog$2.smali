.class Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog$2;
.super Ljava/lang/Object;
.source "CompleteRsvpDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog$2;->a:Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog$2;->a:Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->dismiss()V

    .line 92
    return-void
.end method
